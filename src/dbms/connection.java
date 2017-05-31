/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */


package dbms;
import java.sql.Connection;
import java.sql.DriverManager;
import javax.swing.JOptionPane;

public class connection {
        Connection con;
public static Connection ConnectDb(){
try{
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://anonymous-PC/dbms","jaysoft","jayr1234");
        // Connection con=DriverManager.getConnection("jdbc:mysql://192.168.0.224/ocemcd","clientuser","4321");

         //JOptionPane.showMessageDialog(null, "Connection Established!");
return con;
}catch(Exception e){
JOptionPane.showMessageDialog(null, "server is offline!");
return null;
        }
    }
}
