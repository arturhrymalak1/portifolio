package br.edu.qi.DAO;

import br.edu.qi.DTO.Studant;
import br.edu.qi.conexaoBD.ConexaoBD;
import java.sql.*;
import java.util.ArrayList;
import javax.swing.JOptionPane;

public class StudantDAO {

    private Connection conexao;
    private PreparedStatement pstm;
    private ResultSet resultado;
    private ArrayList<Studant> listaDosStudants = new ArrayList<>();

    public void cadastrarStudant(Studant objStudant) throws ClassNotFoundException {
        String sql = "insert into tb_aluno(nome,idade,peso,altura) values(?,?,?,?)";
        this.conexao = new ConexaoBD().getConexao();

        try {
            pstm = conexao.prepareStatement(sql);
            pstm.setString(1, objStudant.getNome());
            pstm.setString(2, objStudant.getIdade());
            pstm.setString(3, objStudant.getPeso());
            pstm.setString(4, objStudant.getAltura());

            pstm.execute();
            pstm.close();

        } catch (SQLException e) {
            JOptionPane.showMessageDialog(null, "Deu merda na classe StudantDao no metodo cadastrarStudant()  ===> " + e);
        }

    }

    public ArrayList<Studant> listarAlunos() throws ClassNotFoundException {
        String sql = "SELECT * FROM tb_aluno";
        this.conexao = new ConexaoBD().getConexao();

        try {
            this.pstm = this.conexao.prepareStatement(sql);
            this.resultado = this.pstm.executeQuery(sql);

            while (this.resultado.next()) {
                Studant objStudant = new Studant();
                objStudant.setId(this.resultado.getInt("pkidaluno"));
                objStudant.setNome(this.resultado.getString("nome"));
                objStudant.setIdade(this.resultado.getString("idade"));
                objStudant.setPeso(this.resultado.getString("peso"));
                objStudant.setAltura(this.resultado.getString("altura"));

                this.listaDosStudants.add(objStudant);

            }

        } catch (SQLException e) {
            JOptionPane.showMessageDialog(null, "Deu merda na classe StudantDao no metodo listarAlunos()  ===> " + e);

        }
        return this.listaDosStudants;
    }

    public void alterarAluno(Studant objStudant) throws ClassNotFoundException {
        String sql = "update tb_aluno"
                + " set nome = ?, idade = ?, peso = ?"
                + "where pkidaluno = ?";

        this.conexao = new ConexaoBD().getConexao();

        try {
            this.pstm = this.conexao.prepareStatement(sql);
            this.pstm.setString(1, objStudant.getNome());
            this.pstm.setString(2, objStudant.getIdade());
            this.pstm.setString(3, objStudant.getPeso());
            this.pstm.setInt(4, objStudant.getId());

            this.pstm.execute();
            this.pstm.close();

        } catch (SQLException e) {
            JOptionPane.showMessageDialog(null, "Deu merda na classe StudantDAO no metodo alterarAluno()  ===> " + e);

        }

    }

    public void excluirAluno(Studant objStudant) throws ClassNotFoundException {
        String sql = "delete from tb_aluno where pkidaluno = ?";
        this.conexao = new ConexaoBD().getConexao();

        try {
            this.pstm = this.conexao.prepareStatement(sql);
            this.pstm.setInt(1, objStudant.getId());

            this.pstm.execute();
            this.pstm.close();

        } catch (SQLException e) {
            JOptionPane.showMessageDialog(null, "Deu merda na classe StudantDAO no metodo excluirAlunos()  ===> " + e);
        }

    }
}
