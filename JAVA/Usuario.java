public class Usuario {
    private String nome;
    private int idade;
    private String cpf;

    public Usuario(String nome, int idade , String cpf) {
        this.nome = nome;
        this.idade = idade;
        this.cpf = cpf;
    }

    public String getnome() {
        return nome;
    }

    public int getidade() {
        return idade;
    }
    public String getcpf() {
        return cpf;
    }

    @Override
    public String toString() {
        return nome + "," + idade + "," + cpf;
    }

    public static Usuario fromString(String linha) {
        String[] partes = linha.split(",");
        return new Usuario(partes [0], Integer.parseInt(partes[1]), partes[2]);
    }
}
