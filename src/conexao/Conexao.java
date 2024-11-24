/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 *
*Esta classe será reponsável pela conexão com o MySql e terá 3 métodos:
*método 1: abertura da conexão
*método 2: fechamento da conexão
*método 3: execução de comandos SQL
*/

package conexao;
        
import javax.swing.JOptionPane;
import java.sql.*; // para execução de comandos SQL no ambiente Java
        
public class Conexao{
        
   final private String driver = "com.mysql.cj.jdbc.Driver"; // definição do driver MySql para acesso aos dados
   final private String url = "jdbc:mysql://localhost/loja_de_jogos"; // acesso ao bd "clientes" no servidor (myAdmin)
   final private String cliente = "root"; // usuário do MySql
   final private String senha = "";// senha do MySql
   private Connection conexao; // variável que armazenará a conexão aberta
   public Statement statement; // variável para execução dos comandos SQL dentro do ambiente Java
   public ResultSet resultset; // variavel que armazenará o resultado da execução de um comando SQL
        
        
  public boolean conecta() {
      
     boolean result = true;
     try {
     Class.forName(driver);
     conexao = DriverManager.getConnection(url, cliente, senha);
     //JOptionPane.showMessageDialog(null, "Conexão estabelecida", "Mensagem do Programa", JOptionPane.INFORMATION_MESSAGE);
        }catch (ClassNotFoundException Driver) {
         JOptionPane.showMessageDialog(null, "Driver não localizado" + Driver, "Mesangem do Programa", JOptionPane.INFORMATION_MESSAGE);
    result = false;
        }catch (SQLException Fonte) {
         JOptionPane.showMessageDialog(null, "Fonte de dados não localizada! " + Fonte, "Mensagem do Programa", JOptionPane.INFORMATION_MESSAGE);
    result = false;
        }
return result;
        }
   public void desconecta() {
   try {
          conexao.close();
          JOptionPane.showMessageDialog(null, "Conexão com o banco fechada", "Mensagem do Programa", JOptionPane.INFORMATION_MESSAGE);
        }catch (SQLException fecha) {
          JOptionPane.showMessageDialog(null, "Erro ao fecgar o banco", "Mensagem do Programa", JOptionPane.INFORMATION_MESSAGE);

        }
        }
        public void executaSQL(String sql) {
           try {
            statement = conexao.createStatement (ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_READ_ONLY);
            resultset = statement.executeQuery(sql);
        }catch (SQLException excecao) {
          JOptionPane.showMessageDialog (null, "Erro no comando SQL! \n Error" + excecao, "Mensagem do Programa", JOptionPane.INFORMATION_MESSAGE);
        }
  }

 

    public PreparedStatement prepareStatement(String sql) throws SQLException {
        if (conexao == null) {
            throw new SQLException("Conexão não inicializada");
        }
        return conexao.prepareStatement(sql); // Prepare a declaração SQL
    }

    // Método para conectar ao banco de dados (exemplo)
    public void conectar() throws SQLException {
        if (conexao == null) {
            // Substitua pelos parâmetros corretos de conexão (URL, usuário, senha)
            conexao = DriverManager.getConnection("jdbc:mysql://localhost:3306/sua_base_de_dados", "usuario", "senha");
        }
    }

    // Método para fechar a conexão
    public void fecharConexao() throws SQLException {
        if (conexao != null && !conexao.isClosed()) {
            conexao.close();
        }
    }
}