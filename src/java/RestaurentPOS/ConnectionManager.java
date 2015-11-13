package RestaurentPOS;

/**
 *
 * @author Afroz
 */
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;

import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.SQLException;

public class ConnectionManager
{
    static Connection con;
    static String url;

    public static Connection getConnection()
    {
        
        try {
		Class.forName("com.mysql.jdbc.Driver");
                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/RestaurentPOS","root","reset!@#");
	} catch (ClassNotFoundException e) {
		System.out.println("Where is your MySQL JDBC Driver?");		
	} catch (SQLException ex)
        {
            Logger.getLogger(ConnectionManager.class.getName()).log(Level.SEVERE, null, ex);
        }
        
            String urlConnection;
            //urlConnection = "jdbc:sqlserver://AFROZ-PC\\mssqlserver;database=RestaurentPOS;user=sa;password=snhuedu";
            //Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            //urlConnection = 
            //Class.forName("com.mysql.jdbc.Driver");
        return con;
    }
}