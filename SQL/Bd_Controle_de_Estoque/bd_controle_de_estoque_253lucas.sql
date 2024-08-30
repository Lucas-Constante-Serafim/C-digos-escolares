--
-- Banco de dados:       bd_controle_de_estoque_253lucas      
--

-- --------------------------------------------------------

--
-- Estrutura para tabela       clientes      
--

CREATE TABLE       clientes       (
        id       int(11) NOT NULL,
        nome       varchar(55) DEFAULT NULL,
        endereco       varchar(200) DEFAULT NULL,
        telefone       char(9) DEFAULT NULL,
        email       varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela       clientes      
--

INSERT INTO       clientes       (      id      ,       nome      ,       endereco      ,       telefone      ,       email      ) VALUES
(1, 'Cliente A', 'Rua A, 123', '(11) 1000', 'cliente1@example.com'),
(2, 'Cliente B', 'Rua B, 456', '(11) 1000', 'cliente2@example.com'),
(3, 'Cliente C', 'Rua C, 789', '(11) 1000', 'cliente3@example.com'),
(4, 'Cliente D', 'Avenida X, 101', '(11) 1000', 'cliente4@example.com'),
(5, 'Cliente E', 'Avenida Y, 202', '(11) 1000', 'cliente5@example.com'),
(6, 'Cliente F', 'Rua D, 303', '(11) 1000', 'cliente6@example.com'),
(7, 'Cliente G', 'Rua E, 404', '(11) 1000', 'cliente7@example.com'),
(8, 'Cliente H', 'Rua F, 505', '(11) 1000', 'cliente8@example.com'),
(9, 'Cliente I', 'Avenida Z, 606', '(11) 1000', 'cliente9@example.com'),
(10, 'Cliente J', 'Rua G, 707', '(12) 1000', 'cliente10@example.com'),
(11, 'Cliente K', 'Rua H, 808', '(12) 1000', 'cliente11@example.com'),
(12, 'Cliente L', 'Avenida W, 909', '(12) 1000', 'cliente12@example.com'),
(13, 'Cliente M', 'Avenida V, 1010', '(12) 1000', 'cliente13@example.com'),
(14, 'Cliente N', 'Rua I, 1111', '(12) 1000', 'cliente14@example.com'),
(15, 'Cliente O', 'Rua J, 1212', '(12) 1000', 'cliente15@example.com'),
(16, 'Cliente P', 'Rua K, 1313', '(12) 1000', 'cliente16@example.com'),
(17, 'Cliente Q', 'Avenida U, 1414', '(13) 1000', 'cliente17@example.com'),
(18, 'Cliente R', 'Avenida T, 1515', '(13) 1000', 'cliente18@example.com'),
(19, 'Cliente S', 'Rua L, 1616', '(13) 1000', 'cliente19@example.com'),
(20, 'Cliente T', 'Rua M, 1717', '(13) 1000', 'cliente20@example.com'),
(21, 'Cliente U', 'Rua N, 1818', '(13) 1000', 'cliente21@example.com'),
(22, 'Cliente V', 'Rua O, 1920', '(13) 1000', 'cliente22@example.com'),
(23, 'Cliente W', 'Avenida R, 2021', '(14) 1000', 'cliente23@example.com'),
(24, 'Cliente X', 'Avenida S, 2122', '(14) 1000', 'cliente24@example.com'),
(25, 'Cliente Y', 'Rua P, 2223', '(14) 1000', 'cliente25@example.com'),
(26, 'Cliente Z', 'Rua Q, 2324', '(14) 1000', 'cliente26@example.com'),
(27, 'Cliente AA', 'Rua R, 2425', '(14) 1000', 'cliente27@example.com'),
(28, 'Cliente BB', 'Avenida T, 2526', '(15) 1000', 'cliente28@example.com'),
(29, 'Cliente CC', 'Avenida U, 2627', '(15) 1000', 'cliente29@example.com'),
(30, 'Cliente DD', 'Rua S, 2728', '(15) 1000', 'cliente30@example.com'),
(31, 'Cliente EE', 'Rua T, 2829', '(15) 1000', 'cliente31@example.com'),
(32, 'Cliente FF', 'Rua U, 2930', '(15) 1000', 'cliente32@example.com'),
(33, 'Cliente GG', 'Avenida V, 3031', '(16) 1000', 'cliente33@example.com'),
(34, 'Cliente HH', 'Avenida W, 3132', '(16) 1000', 'cliente34@example.com'),
(35, 'Cliente II', 'Rua V, 3233', '(16) 1000', 'cliente35@example.com'),
(36, 'Cliente JJ', 'Rua W, 3334', '(16) 1000', 'cliente36@example.com'),
(37, 'Cliente KK', 'Rua X, 3435', '(17) 1000', 'cliente37@example.com'),
(38, 'Cliente LL', 'Avenida Y, 3536', '(17) 1000', 'cliente38@example.com'),
(39, 'Cliente MM', 'Avenida Z, 3637', '(17) 1000', 'cliente39@example.com'),
(40, 'Cliente NN', 'Rua Y, 3738', '(17) 1000', 'cliente40@example.com'),
(41, 'Cliente OO', 'Rua Z, 3839', '(18) 1000', 'cliente41@example.com'),
(42, 'Cliente PP', 'Avenida A, 3940', '(18) 1000', 'cliente42@example.com'),
(43, 'Cliente QQ', 'Avenida B, 4041', '(18) 1000', 'cliente43@example.com'),
(44, 'Cliente RR', 'Rua A, 4142', '(18) 1000', 'cliente44@example.com'),
(45, 'Cliente SS', 'Rua B, 4243', '(18) 1000', 'cliente45@example.com'),
(46, 'Cliente TT', 'Rua C, 4344', '(19) 1000', 'cliente46@example.com'),
(47, 'Cliente UU', 'Rua D, 4445', '(19) 1000', 'cliente47@example.com'),
(48, 'Cliente VV', 'Avenida C, 4546', '(19) 1000', 'cliente48@example.com'),
(49, 'Cliente WW', 'Avenida D, 4647', '(19) 1000', 'cliente49@example.com'),
(50, 'Cliente XX', 'Rua E, 4748', '(20) 1000', 'cliente50@example.com');

-- --------------------------------------------------------

--
-- Estrutura para tabela       compras      
--

CREATE TABLE       compras       (
        id       int(11) NOT NULL,
        id_fornecedor       int(11) DEFAULT NULL,
        data_compra       date DEFAULT NULL,
        total_compra       float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela       compras      
--

INSERT INTO       compras       (      id      ,       id_fornecedor      ,       data_compra      ,       total_compra      ) VALUES
(1, 1, '2024-01-15', 250.75),
(2, 2, '2024-02-20', 175.5),
(3, 3, '2024-03-10', 320),
(4, 4, '2024-04-05', 450.25),
(5, 5, '2024-05-22', 199.99),
(6, 6, '2024-06-17', 310.6),
(7, 7, '2024-07-08', 540.85),
(8, 8, '2024-08-14', 125.4),
(9, 9, '2024-09-11', 400),
(10, 10, '2024-10-25', 275.3);

-- --------------------------------------------------------

--
-- Estrutura para tabela       fornecedores      
--

CREATE TABLE       fornecedores       (
        id       int(11) NOT NULL,
        nome       varchar(55) DEFAULT NULL,
        endereco       varchar(200) DEFAULT NULL,
        telefone       char(9) DEFAULT NULL,
        email       varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela       fornecedores      
--

INSERT INTO       fornecedores       (      id      ,       nome      ,       endereco      ,       telefone      ,       email      ) VALUES
(1, 'Fornecedor A', 'Rua A, 123', '(11) 1111', 'fornecedor1@example.com'),
(2, 'Fornecedor B', 'Rua B, 456', '(11) 2222', 'fornecedor2@example.com'),
(3, 'Fornecedor C', 'Rua C, 789', '(11) 3333', 'fornecedor3@example.com'),
(4, 'Fornecedor D', 'Avenida X, 101', '(11) 4444', 'fornecedor4@example.com'),
(5, 'Fornecedor E', 'Avenida Y, 202', '(11) 5555', 'fornecedor5@example.com'),
(6, 'Fornecedor F', 'Rua D, 303', '(11) 6666', 'fornecedor6@example.com'),
(7, 'Fornecedor G', 'Rua E, 404', '(11) 7777', 'fornecedor7@example.com'),
(8, 'Fornecedor H', 'Rua F, 505', '(11) 8888', 'fornecedor8@example.com'),
(9, 'Fornecedor I', 'Avenida Z, 606', '(11) 9999', 'fornecedor9@example.com'),
(10, 'Fornecedor J', 'Rua G, 707', '(12) 0000', 'fornecedor10@example.com'),
(11, 'Fornecedor K', 'Rua H, 808', '(12) 1111', 'fornecedor11@example.com'),
(12, 'Fornecedor L', 'Avenida W, 909', '(12) 3333', 'fornecedor12@example.com'),
(13, 'Fornecedor M', 'Avenida V, 1010', '(12) 5555', 'fornecedor13@example.com'),
(14, 'Fornecedor N', 'Rua I, 1111', '(12) 7777', 'fornecedor14@example.com'),
(15, 'Fornecedor O', 'Rua J, 1212', '(12) 9999', 'fornecedor15@example.com'),
(16, 'Fornecedor P', 'Rua K, 1313', '(13) 1111', 'fornecedor16@example.com'),
(17, 'Fornecedor Q', 'Avenida U, 1414', '(13) 2222', 'fornecedor17@example.com'),
(18, 'Fornecedor R', 'Avenida T, 1515', '(13) 3333', 'fornecedor18@example.com'),
(19, 'Fornecedor S', 'Rua L, 1616', '(13) 4444', 'fornecedor19@example.com'),
(20, 'Fornecedor T', 'Rua M, 1717', '(13) 5555', 'fornecedor20@example.com');

-- --------------------------------------------------------

--
-- Estrutura para tabela       itenscompra      
--

CREATE TABLE       itenscompra       (
        id       int(11) NOT NULL,
        id_compra       int(11) DEFAULT NULL,
        id_produto       int(11) DEFAULT NULL,
        quantidade       int(11) DEFAULT NULL,
        valor_unitario       float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela       itenscompra      
--

INSERT INTO       itenscompra       (      id      ,       id_compra      ,       id_produto      ,       quantidade      ,       valor_unitario      ) VALUES
(1, 4, 82, 7, 122),
(2, 9, 25, 3, 47),
(3, 2, 91, 6, 138),
(4, 8, 34, 1, 72),
(5, 3, 67, 8, 50),
(6, 7, 12, 4, 103),
(7, 1, 58, 9, 67),
(8, 5, 79, 2, 139),
(9, 6, 45, 7, 88),
(10, 10, 53, 3, 115),
(11, 2, 68, 5, 92),
(12, 9, 29, 1, 131),
(13, 4, 86, 8, 149),
(14, 7, 77, 6, 55),
(15, 3, 90, 2, 120),
(16, 8, 14, 5, 63),
(17, 1, 99, 9, 124),
(18, 5, 64, 4, 48),
(19, 6, 32, 7, 101),
(20, 10, 87, 3, 130),
(21, 2, 54, 8, 75),
(22, 9, 41, 1, 140),
(23, 4, 76, 5, 66),
(24, 7, 98, 6, 123),
(25, 3, 26, 2, 86),
(26, 8, 50, 9, 109),
(27, 1, 63, 4, 140),
(28, 6, 80, 7, 52),
(29, 5, 71, 2, 117),
(30, 9, 93, 8, 48),
(31, 4, 57, 1, 72),
(32, 7, 42, 6, 84),
(33, 3, 88, 5, 106),
(34, 10, 55, 9, 137),
(35, 2, 71, 4, 60),
(36, 8, 34, 7, 128),
(37, 1, 85, 3, 91),
(38, 6, 96, 9, 43),
(39, 5, 12, 2, 111),
(40, 7, 28, 8, 124),
(41, 3, 73, 4, 95),
(42, 10, 49, 6, 110),
(43, 2, 65, 1, 144),
(44, 9, 87, 5, 61),
(45, 4, 54, 8, 130),
(46, 7, 38, 3, 127),
(47, 6, 94, 2, 81),
(48, 1, 88, 9, 52),
(49, 4, 90, 10, 63),
(50, 7, 34, 3, 15);

-- --------------------------------------------------------

--
-- Estrutura para tabela       itens_venda      
--

CREATE TABLE       itens_venda       (
        id       int(11) NOT NULL,
        id_venda       int(11) DEFAULT NULL,
        id_produto       int(11) DEFAULT NULL,
        quantidade       int(11) DEFAULT NULL,
        valor_untario       float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela       itens_venda      
--

INSERT INTO       itens_venda       (      id      ,       id_venda      ,       id_produto      ,       quantidade      ,       valor_untario      ) VALUES
(1, 4, 82, 7, 122),
(2, 9, 25, 3, 47),
(3, 2, 91, 6, 138),
(4, 8, 34, 1, 72),
(5, 3, 67, 8, 50),
(6, 7, 12, 4, 103),
(7, 1, 58, 9, 67),
(8, 5, 79, 2, 139),
(9, 6, 45, 7, 88),
(10, 10, 53, 3, 115),
(11, 2, 68, 5, 92),
(12, 9, 29, 1, 131),
(13, 4, 86, 8, 149),
(14, 7, 77, 6, 55),
(15, 3, 90, 2, 120),
(16, 8, 14, 5, 63),
(17, 1, 99, 9, 124),
(18, 5, 64, 4, 48),
(19, 6, 32, 7, 101),
(20, 10, 87, 3, 130),
(21, 2, 54, 8, 75),
(22, 9, 41, 1, 140),
(23, 4, 76, 5, 66),
(24, 7, 98, 6, 123),
(25, 3, 26, 2, 86),
(26, 8, 50, 9, 109),
(27, 1, 63, 4, 140),
(28, 6, 80, 7, 52),
(29, 5, 71, 2, 117),
(30, 9, 93, 8, 48),
(31, 4, 57, 1, 72),
(32, 7, 42, 6, 84),
(33, 3, 88, 5, 106),
(34, 10, 55, 9, 137),
(35, 2, 71, 4, 60),
(36, 8, 34, 7, 128),
(37, 1, 85, 3, 91),
(38, 6, 96, 9, 43),
(39, 5, 12, 2, 111),
(40, 7, 28, 8, 124),
(41, 3, 73, 4, 95),
(42, 10, 49, 6, 110),
(43, 2, 65, 1, 144),
(44, 9, 87, 5, 61),
(45, 4, 54, 8, 130),
(46, 7, 38, 3, 127),
(47, 6, 94, 2, 81),
(48, 1, 88, 9, 52),
(49, 4, 90, 10, 63),
(50, 7, 34, 3, 15);

-- --------------------------------------------------------

--
-- Estrutura para tabela       pagamentos      
--

CREATE TABLE       pagamentos       (
        id       int(11) NOT NULL,
        id_compra       int(11) DEFAULT NULL,
        data_pagamento       date DEFAULT NULL,
        valor_pago       float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela       pagamentos      
--

INSERT INTO       pagamentos       (      id      ,       id_compra      ,       data_pagamento      ,       valor_pago      ) VALUES
(1, 1, '2024-01-15', 250.75),
(2, 2, '2024-02-20', 175.5);

-- --------------------------------------------------------

--
-- Estrutura para tabela       produtos      
--

CREATE TABLE       produtos       (
        id       int(11) NOT NULL,
        nome       varchar(55) DEFAULT NULL,
        descricao       varchar(200) DEFAULT NULL,
        preco_compra       float DEFAULT NULL,
        preco_venda       float DEFAULT NULL,
        estoque_minimo       int(11) DEFAULT NULL,
        estoque_maximo       int(11) DEFAULT NULL,
        margem_de_lucro       float DEFAULT NULL,
        depreciaao_de_estoque       int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela       produtos      
--

INSERT INTO       produtos       (      id      ,       nome      ,       descricao      ,       preco_compra      ,       preco_venda      ,       estoque_minimo      ,       estoque_maximo      ,       margem_de_lucro      ,       depreciaao_de_estoque      ) VALUES
(1, 'Teclado X100', 'Teclado Mecânico', 150, 200, 10, 100, 30, 5),
(2, 'Mouse Z300', 'Mouse Óptico', 50, 75, 20, 150, 25, 10),
(3, 'Monitor Pro24', 'Monitor LED 24\"', 600, 850, 5, 50, 35, 8),
(4, 'Impressora FastPrint', 'Impressora Multifuncional', 500, 650, 5, 30, 20, 12),
(5, 'Cadeira Comfort', 'Cadeira Ergonômica', 400, 470, 8, 40, 15, 7),
(6, 'Laptop MaxPower', 'Laptop Gaming', 3500, 4900, 2, 20, 40, 15),
(7, 'Fone SoundMax', 'Fone de Ouvido Bluetooth', 120, 155, 10, 60, 28, 10),
(8, 'Webcam ClearView', 'Webcam HD', 80, 105, 15, 80, 22, 5),
(9, 'Microfone AudioPro', 'Microfone USB', 150, 195, 12, 70, 30, 12),
(10, 'Roteador NetBoost', 'Roteador Wi-Fi', 90, 115, 20, 100, 25, 8),
(11, 'Headset Xtreme', 'Headset Gamer', 200, 270, 5, 40, 35, 10),
(12, 'Carregador PowerPlus', 'Carregador Portátil', 60, 75, 15, 80, 20, 7),
(13, 'Tablet SuperTab', 'Tablet 10\"', 1000, 1450, 5, 25, 45, 15),
(14, 'Teclado MiniPro', 'Teclado Compacto', 100, 130, 12, 70, 22, 10),
(15, 'Mouse Xtreme', 'Mouse Gamer', 70, 91, 8, 50, 30, 5),
(16, 'Câmera SnapShot', 'Câmera Digital', 800, 1120, 3, 25, 40, 12),
(17, 'Bateria PowerMax', 'Bateria Externa', 40, 50, 20, 90, 25, 8),
(18, 'Placa GTX500', 'Placa de Vídeo', 2000, 2700, 5, 30, 35, 10),
(19, 'Roteador WideNet', 'Roteador de Longo Alcance', 120, 142, 10, 60, 18, 7),
(20, 'Celular SmartPro', 'Celular Smartphone', 1500, 2250, 10, 50, 50, 15),
(21, 'Monitor CurveView', 'Monitor Curvo', 800, 1050, 8, 40, 32, 10),
(22, 'Fone CableSound', 'Fone de Ouvido com Fio', 80, 102, 15, 70, 28, 5),
(23, 'Impressora LaserJet', 'Impressora Laser', 600, 735, 3, 20, 22, 12),
(24, 'Scanner ScanPro', 'Scanner Documentos', 250, 325, 7, 35, 30, 8),
(25, 'Caixa SoundBox', 'Caixa de Som Bluetooth', 150, 189, 10, 50, 26, 10),
(26, 'Combo TechSet', 'Teclado e Mouse Combo', 70, 85, 15, 90, 20, 7),
(27, 'Notebook SlimBook', 'Notebook Ultrafino', 2500, 3625, 5, 30, 45, 15),
(28, 'Suporte EasyMount', 'Suporte para Monitor', 50, 59, 15, 100, 18, 10),
(29, 'Adaptador QuickLink', 'Adaptador USB', 20, 25, 12, 80, 25, 5),
(30, 'Impressora ThermalPro', 'Impressora Térmica', 350, 455, 4, 25, 30, 12),
(31, 'Roteador DualMax', 'Roteador Dual Band', 140, 178, 10, 50, 27, 8),
(32, 'Tablet ArtPad', 'Tablet de Desenho', 500, 670, 3, 20, 34, 10),
(33, 'Câmera StreamView', 'Câmera Web para Streaming', 90, 110, 12, 60, 22, 7),
(34, 'Notebook FlexBook', 'Notebook Portátil', 2000, 2840, 6, 40, 42, 15),
(35, 'Headset FreeSound', 'Headset Sem Fio', 150, 192, 8, 50, 28, 10),
(36, 'Hub ConnectPro', 'Hub USB', 30, 36, 15, 70, 20, 5),
(37, 'Impressora CardPro', 'Impressora de Cartão', 700, 896, 2, 15, 28, 12),
(38, 'Roteador PowerNet', 'Roteador com Antena Externa', 120, 150, 10, 60, 25, 8),
(39, 'Caixa MusicBox', 'Caixa de Som com Bluetooth', 180, 234, 10, 50, 30, 10),
(40, 'Teclado NumPro', 'Teclado Numérico', 50, 61, 15, 80, 22, 7),
(41, 'Smartphone EntryPro', 'Smartphone de Entrada', 600, 870, 8, 40, 45, 15),
(42, 'Headset NoiseFree', 'Headset com Cancelamento de Ruído', 200, 264, 10, 50, 32, 10),
(43, 'Roteador MeshLink', 'Roteador Wi-Fi Mesh', 150, 180, 8, 40, 20, 5),
(44, 'Placa CaptureMax', 'Placa de Captura', 400, 540, 5, 25, 35, 12),
(45, 'Teclado TouchPadPro', 'Teclado com Touchpad', 150, 187, 15, 70, 25, 8),
(46, 'Notebook FlipBook', 'Notebook Conversível', 2200, 2860, 6, 30, 30, 10),
(47, 'Câmera SecureView', 'Câmera para Segurança', 100, 120, 10, 50, 20, 7),
(48, 'Smartwatch FitTrack', 'Smartwatch de Fitness', 500, 750, 5, 25, 50, 15),
(49, 'Teclado ProType', 'Teclado com Funções Adicionais', 140, 179, 12, 60, 28, 10),
(50, 'Adaptador NetPro', 'Adaptador de Rede', 40, 49, 15, 80, 22, 5),
(51, 'Impressora LaserMult', 'Impressora Multifuncional a Laser', 700, 910, 4, 20, 30, 12),
(52, 'Monitor Ultra4K', 'Monitor 4K', 1200, 1620, 5, 20, 35, 8),
(53, 'Headset VRMax', 'Headset com VR', 250, 325, 5, 25, 30, 10),
(54, 'Teclado EasyType', 'Teclado Simples', 60, 71, 20, 100, 18, 7),
(55, 'Notebook ProX', 'Notebook de Alta Performance', 4000, 5800, 3, 15, 45, 15),
(56, 'Roteador 4GNet', 'Roteador 4G', 150, 195, 10, 50, 22, 10),
(57, 'Câmera NightWatch', 'Câmera de Segurança com Visão Noturna', 200, 250, 6, 30, 25, 7),
(58, 'Impressora LabelMax', 'Impressora de Etiquetas', 300, 384, 5, 25, 28, 12),
(59, 'Teclado IllumiType', 'Teclado com Retroiluminação', 120, 156, 10, 60, 30, 10),
(60, 'Webcam StreamPro', 'Webcam para Streamers', 100, 127, 10, 50, 27, 8),
(61, 'Celular PremiumPlus', 'Celular Premium', 2500, 3750, 4, 20, 50, 15),
(62, 'Tablet DrawPad', 'Tablet com Stylus', 600, 792, 8, 40, 32, 10),
(63, 'Mouse ErgoFit', 'Mouse Ergonômico', 70, 84, 15, 80, 20, 7),
(64, 'Placa VideoCapture', 'Placa de Captura de Vídeo', 400, 540, 4, 20, 35, 12),
(65, 'Monitor FullScreen', 'Monitor Full HD', 800, 1024, 6, 30, 28, 10),
(66, 'Teclado MediaControl', 'Teclado com Controle de Mídia', 150, 187, 12, 60, 25, 8),
(67, 'Smartwatch Luxe', 'Smartwatch de Luxo', 1200, 1800, 3, 15, 50, 15),
(68, 'Headset ClearSound', 'Headset com Microfone e Cancelamento de Ruído', 200, 260, 8, 40, 30, 10),
(69, 'Suporte KeyboardStand', 'Suporte para Teclado', 50, 61, 15, 80, 22, 7),
(70, 'Impressora PhotoPro', 'Impressora Fotográfica', 500, 650, 5, 25, 30, 12),
(71, 'Roteador BandControl', 'Roteador com Controle de Banda', 150, 187, 10, 50, 25, 8),
(72, 'Cabo AudioPro', 'Cabo de Áudio', 40, 51, 12, 60, 28, 10),
(73, 'Câmera AutoCam', 'Câmera para Automóveis', 150, 183, 8, 40, 22, 7),
(74, 'Impressora QuickPrint', 'Impressora de Documentos Rápida', 600, 780, 4, 20, 30, 12),
(75, 'Teclado CompactLink', 'Teclado Compacto Sem Fio', 90, 113, 10, 50, 25, 10),
(76, 'Headset ActiveNoise', 'Headset com Cancelamento Ativo de Ruído', 150, 192, 6, 30, 28, 8),
(77, 'Notebook TouchPro', 'Notebook com Tela Touchscreen', 1800, 2610, 5, 25, 45, 15),
(78, 'Roteador HighSpeed', 'Roteador de Alto Desempenho', 200, 260, 6, 30, 30, 10),
(79, 'Suporte AdjustableMount', 'Suporte de Monitor Ajustável', 75, 90, 15, 70, 20, 7),
(80, 'Impressora SpeedPrint', 'Impressora Multifuncional de Alta Velocidade', 800, 1080, 3, 15, 35, 12),
(81, 'Cabo NetLink', 'Cabo de Rede Ethernet', 39, 20, 15, 90, 25, 8),
(82, 'Estabilizador PowerGuard', 'Estabilizador de Energia', 100, 128, 8, 40, 28, 10),
(83, 'Suporte LapStand', 'Suporte para Laptop', 50, 60, 12, 60, 20, 7),
(84, 'Scanner BarCodePro', 'Scanner de Código de Barras', 200, 264, 5, 30, 32, 12),
(85, 'Teclado BlueType', 'Teclado com Conectividade Bluetooth', 120, 156, 10, 50, 30, 8),
(86, 'Tablet 4GMax', 'Tablet com 4G', 800, 1064, 4, 20, 33, 10),
(87, 'Mouse WirelessPlus', 'Mouse Wireless', 40, 50, 15, 70, 20, 5),
(88, 'Celular BigView', 'Celular com Tela Grande', 1200, 1800, 5, 25, 50, 15),
(89, 'Impressora SnapPhoto', 'Impressora de Fotos Compacta', 400, 512, 4, 20, 28, 12),
(90, 'Roteador SafeNet', 'Roteador com Segurança Avançada', 140, 175, 10, 50, 25, 8),
(91, 'Headset 3DAudio', 'Headset com Áudio 3D', 250, 337, 6, 30, 35, 10),
(92, 'Teclado GameX', 'Teclado para Gaming', 120, 150, 8, 40, 25, 7),
(93, 'Impressora WiFiPrint', 'Impressora com Conexão Wi-Fi', 600, 780, 5, 25, 30, 12),
(94, 'Monitor GraphixPro', 'Monitor para Design Gráfico', 1200, 1620, 4, 20, 35, 8),
(95, 'Roteador SpeedMax', 'Roteador de Alta Velocidade', 200, 260, 6, 30, 30, 10),
(96, 'Câmera VideoPro', 'Câmera para Videoconferência', 100, 122, 10, 50, 22, 7),
(97, 'Smartwatch GPSPro', 'Smartwatch com GPS', 800, 1200, 4, 20, 50, 15),
(98, 'Teclado ProgType', 'Teclado com Funções Programáveis', 140, 179, 12, 60, 28, 10),
(99, 'Hub ChargePlus', 'Hub USB com Carregador', 40, 50, 15, 80, 20, 5),
(100, 'Impressora IDCard', 'Impressora para Cartões de Identidade', 700, 910, 3, 15, 30, 12),
(101, 'Cabo DisplayMax', 'Cabo de Vídeo DisplayPort', 50, 63, 12, 60, 27, 8),
(102, 'Headset ActiveSilence', 'Headset com Cancelamento de Ruído Ativo', 180, 237, 5, 25, 32, 10);

-- --------------------------------------------------------

--
-- Estrutura para tabela       vendas      
--

CREATE TABLE       vendas       (
        id       int(11) NOT NULL,
        data_compra       date DEFAULT NULL,
        tota_venda       float DEFAULT NULL,
        id_clientes       int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela       vendas      
--

INSERT INTO       vendas       (      id      ,       data_compra      ,       tota_venda      ,       id_clientes      ) VALUES
(1, '2024-01-10', 500, 1),
(2, '2024-02-15', 300.75, 2),
(3, '2024-03-22', 150.5, 3),
(4, '2024-04-08', 220.3, 4),
(5, '2024-05-14', 475.6, 5),
(6, '2024-06-20', 125.9, 6),
(7, '2024-07-12', 350.4, 7),
(8, '2024-08-05', 600, 8),
(9, '2024-09-18', 295.25, 9),
(10, '2024-10-30', 410.8, 10);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela       clientes      
--
ALTER TABLE       clientes      
  ADD PRIMARY KEY (      id      );

--
-- Índices de tabela       compras      
--
ALTER TABLE       compras      
  ADD PRIMARY KEY (      id      ),
  ADD KEY       fk_id_fornecedor       (      id_fornecedor      );

--
-- Índices de tabela       fornecedores      
--
ALTER TABLE       fornecedores      
  ADD PRIMARY KEY (      id      );

--
-- Índices de tabela       itenscompra      
--
ALTER TABLE       itenscompra      
  ADD PRIMARY KEY (      id      ),
  ADD KEY       fk_id_compra       (      id_compra      ),
  ADD KEY       fk_id_produto       (      id_produto      );

--
-- Índices de tabela       itens_venda      
--
ALTER TABLE       itens_venda      
  ADD PRIMARY KEY (      id      ),
  ADD KEY       fk_id_venda       (      id_venda      ),
  ADD KEY       fk_id_produtos       (      id_produto      );

--
-- Índices de tabela       pagamentos      
--
ALTER TABLE       pagamentos      
  ADD PRIMARY KEY (      id      ),
  ADD KEY       fk_id_compraa       (      id_compra      );

--
-- Índices de tabela       produtos      
--
ALTER TABLE       produtos      
  ADD PRIMARY KEY (      id      );

--
-- Índices de tabela       vendas      
--
ALTER TABLE       vendas      
  ADD PRIMARY KEY (      id      ),
  ADD KEY       FK_id_clientes       (      id_clientes      );

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela       clientes      
--
ALTER TABLE       clientes      
  MODIFY       id       int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT de tabela       compras      
--
ALTER TABLE       compras      
  MODIFY       id       int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela       fornecedores      
--
ALTER TABLE       fornecedores      
  MODIFY       id       int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de tabela       itenscompra      
--
ALTER TABLE       itenscompra      
  MODIFY       id       int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT de tabela       itens_venda      
--
ALTER TABLE       itens_venda      
  MODIFY       id       int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT de tabela       pagamentos      
--
ALTER TABLE       pagamentos      
  MODIFY       id       int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela       produtos      
--
ALTER TABLE       produtos      
  MODIFY       id       int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT de tabela       vendas      
--
ALTER TABLE       vendas      
  MODIFY       id       int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas       compras      
--
ALTER TABLE       compras      
  ADD CONSTRAINT       fk_id_fornecedor       FOREIGN KEY (      id_fornecedor      ) REFERENCES       fornecedores       (      id      );

--
-- Restrições para tabelas       itenscompra      
--
ALTER TABLE       itenscompra      
  ADD CONSTRAINT       fk_id_compra       FOREIGN KEY (      id_compra      ) REFERENCES       compras       (      id      ),
  ADD CONSTRAINT       fk_id_produto       FOREIGN KEY (      id_produto      ) REFERENCES       produtos       (      id      );

--
-- Restrições para tabelas       itens_venda      
--
ALTER TABLE       itens_venda      
  ADD CONSTRAINT       fk_id_produtos       FOREIGN KEY (      id_produto      ) REFERENCES       produtos       (      id      ),
  ADD CONSTRAINT       fk_id_venda       FOREIGN KEY (      id_venda      ) REFERENCES       vendas       (      id      );

--
-- Restrições para tabelas       pagamentos      
--
ALTER TABLE       pagamentos      
  ADD CONSTRAINT       fk_id_compraa       FOREIGN KEY (      id_compra      ) REFERENCES       compras       (      id      );

--
-- Restrições para tabelas       vendas      
--
ALTER TABLE       vendas      
  ADD CONSTRAINT       FK_id_clientes       FOREIGN KEY (      id_clientes      ) REFERENCES       clientes       (      id      );
COMMIT;