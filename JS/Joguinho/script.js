const mainBoard = document.getElementById('mainBoard');
const statusDiv = document.getElementById('status');
let currentPlayer = 'X';
let mainBoardState = Array(9).fill(null); // Estado do tabuleiro principal
let subBoardsState = Array.from({ length: 9 }, () => Array(9).fill(null)); // Estado dos sub-tabuleiros

// Cria uma célula do tabuleiro principal
function createMainCell(index) {
    const cell = document.createElement('div');
    cell.classList.add('cell');
    cell.dataset.index = index;
    cell.addEventListener('click', () => handleMainCellClick(index));
    return cell;
}

// Cria uma célula do sub-tabuleiro
function createSubCell(boardIndex, index) {
    const cell = document.createElement('div');
    cell.classList.add('subCell');
    cell.dataset.index = index;
    cell.dataset.boardIndex = boardIndex;
    cell.addEventListener('click', () => handleSubCellClick(boardIndex, index));
    return cell;
}

// Cria um sub-tabuleiro
function createSubBoard(boardIndex) {
    const subBoard = document.createElement('div');
    subBoard.classList.add('subBoard');
    for (let i = 0; i < 9; i++) {
        subBoard.appendChild(createSubCell(boardIndex, i));
    }
    return subBoard;
}

// Cria o tabuleiro principal
function createMainBoard() {
    for (let i = 0; i < 9; i++) {
        const cell = createMainCell(i);
        cell.appendChild(createSubBoard(i));
        mainBoard.appendChild(cell);
    }
}

// Manipula o clique em uma célula do tabuleiro principal
function handleMainCellClick(index) {
    if (mainBoardState[index] || checkSubBoardStatus(index) !== null) return;

    const subBoard = mainBoard.children[index].querySelector('.subBoard');
    const cells = subBoard.querySelectorAll('.subCell');
    cells.forEach(cell => cell.classList.remove('disabled'));
}

// Manipula o clique em uma célula do sub-tabuleiro
function handleSubCellClick(boardIndex, index) {
    if (mainBoardState[boardIndex] || subBoardsState[boardIndex][index] || !isValidMove(boardIndex, index)) return;

    const cell = mainBoard.children[boardIndex].querySelector(`.subCell[data-index="${index}"]`);
    cell.textContent = currentPlayer;
    subBoardsState[boardIndex][index] = currentPlayer;

    if (checkSubBoardWin(boardIndex)) {
        mainBoardState[boardIndex] = currentPlayer;
        markMainBoardCell(boardIndex, currentPlayer);
    } else if (isSubBoardFull(boardIndex)) {
        mainBoardState[boardIndex] = 'tie';
        markMainBoardCell(boardIndex, 'tie');
    }

    currentPlayer = currentPlayer === 'X' ? 'O' : 'X';
    updateStatus();
}

// Marca uma célula do tabuleiro principal como ganha ou empate
function markMainBoardCell(index, result) {
    const cell = mainBoard.children[index];
    if (result === 'tie') {
        cell.classList.add('tie');
        cell.textContent = 'T';
    } else {
        cell.textContent = result;
        cell.classList.add(result === 'X' ? 'playerX' : 'playerO');
    }
    cell.querySelectorAll('.subCell').forEach(subCell => subCell.classList.add('disabled'));
}

// Verifica se há um vencedor no sub-tabuleiro
function checkSubBoardWin(boardIndex) {
    const board = subBoardsState[boardIndex];
    const winningCombos = [
        [0, 1, 2], [3, 4, 5], [6, 7, 8], // Linhas
        [0, 3, 6], [1, 4, 7], [2, 5, 8], // Colunas
        [0, 4, 8], [2, 4, 6] // Diagonais
    ];

    for (let combo of winningCombos) {
        const [a, b, c] = combo;
        if (board[a] && board[a] === board[b] && board[a] === board[c]) {
            return true;
        }
    }
    return false;
}

// Verifica se o sub-tabuleiro está cheio
function isSubBoardFull(boardIndex) {
    return subBoardsState[boardIndex].every(cell => cell);
}

// Verifica se o movimento é válido
function isValidMove(boardIndex, index) {
    const subBoard = mainBoard.children[boardIndex].querySelector('.subBoard');
    const targetCell = subBoard.children[index];
    return !targetCell.textContent;
}

// Atualiza o status do jogo
function updateStatus() {
    const winner = checkMainBoardWin();
    if (winner) {
        statusDiv.textContent = `Player ${winner} wins the game!`;
    } else if (mainBoardState.every(cell => cell)) {
        statusDiv.textContent = `It's a tie!`;
    } else {
        statusDiv.textContent = `Player ${currentPlayer}'s turn`;
    }
}

// Verifica se há um vencedor no tabuleiro principal
function checkMainBoardWin() {
    const winningCombos = [
        [0, 1, 2], [3, 4, 5], [6, 7, 8], // Linhas
        [0, 3, 6], [1, 4, 7], [2, 5, 8], // Colunas
        [0, 4, 8], [2, 4, 6] // Diagonais
    ];

    for (let combo of winningCombos) {
        const [a, b, c] = combo;
        if (mainBoardState[a] && mainBoardState[a] === mainBoardState[b] && mainBoardState[a] === mainBoardState[c]) {
            return mainBoardState[a];
        }
    }
    return null;
}

// Inicializa o jogo
createMainBoard();
updateStatus();
