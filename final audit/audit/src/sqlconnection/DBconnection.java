/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sqlconnection;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author Dell
 */
public class DBconnection {
     public static Connection connect(){
        Connection con=null;
        
        try{
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/audit", "root", "");
        }
        
        
   
        catch(Exception e ){
            System.out.print(e);
        }
        
        return con;
    }

    
}
