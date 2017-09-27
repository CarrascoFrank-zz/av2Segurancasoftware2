
package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import model.Usuario;

public class UsuarioDao {
    
    private Connection connection;
    
    public UsuarioDao() {
        
        String url = "jdbc:mysql://localhost:3306/jaasbd";
        String user = "root";
        String password = "usbw";
        
        try {
            connection = DriverManager.getConnection(url, user, password);
        } catch (SQLException ex) {
            System.out.println("Erro ao conectar com o BD");
            
        }
        
    }
    
    public List<Usuario> consultarUsuario(){
        
        List<Usuario> usuarios = new ArrayList<>();
        String sql = "SELECT * FROM usuario";
        
        try{
            Statement comando = connection.createStatement();
            ResultSet rs = comando.executeQuery(sql);
            while (rs.next()){
                Usuario u = new Usuario();
                u.setUserid(rs.getString("userid"));
                u.setPassword(rs.getString("password"));
                usuarios.add(u);
            }
        }catch(SQLException ex){
            System.out.println("Erro ao enviar comando para o BD");
        }
        
        return usuarios;        
    }
    
    public boolean cadastrarUsuario (Usuario u){
        try {
            Statement comando = connection.createStatement();
            comando.execute("INSERT INTO usuario (userid, password) VALUES ('" + u.getUserid() + "', '" + u.getPassword() + "')");
            return true;
            
        } catch (SQLException ex) {
            System.out.println("Erro ao gravar funcionario:" + u.getUserid());
            return false;
        }
    }
    
    public void excluirUsuario(Usuario u){
        String sql = "DELETE FROM usuario WHERE userid = " + u.getUserid();
        try{
           Statement comando = connection.createStatement();
           comando.execute(sql);
        }catch(SQLException e){
            System.out.println("Erro ao enviar comando EXCLUIR para o BD");
        }
    }
    
}
