package br.edu.qi.DTO;

public class Studant {

    private int id;
    private String nome;
    private String idade;
    private String peso;
    private String altura;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getIdade() {
        return idade;
    }

    public void setIdade(String idade) {
        this.idade = idade;
    }

    public String getPeso() {
        return peso;
    }

    public void setPeso(String peso) {
        this.peso = peso;
    }

    public String getAltura() {
        return altura;
    }

    public void setAltura(String altura) {
        this.altura = altura;
    }

    @Override
    public String toString() {
        return "ID: " + id + "\n" 
                + "Nome: " + nome + "\n" 
                + "Idade: " + idade + "\n" 
                + "Peso: " + peso + "\n" 
                + "Altura: " + altura;
    }
   
}
