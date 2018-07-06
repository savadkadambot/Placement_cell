
package dbcon;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author user
 */
public class dbcon {
    
    public Connection cn=null;
    public dbcon()
    {
        try {      
            Class.forName("com.mysql.jdbc.Driver");
            cn=(Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/placement?zeroDateTimeBehavior=convertToNull","root","");
        } catch (SQLException ex) {
            Logger.getLogger(dbcon.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(dbcon.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    public boolean execution(PreparedStatement ps)
    {
        boolean result=false;
        try {
             result=ps.execute();
        } catch (SQLException ex) {
            Logger.getLogger(dbcon.class.getName()).log(Level.SEVERE, null, ex);
        }
        return result;
    }
    public ResultSet return_data(PreparedStatement ps)
    {
        ResultSet rs=null;
        try {
            rs=ps.executeQuery();
        } catch (SQLException ex) {
            Logger.getLogger(dbcon.class.getName()).log(Level.SEVERE, null, ex);
        }
        return rs;
    }
}

    
                                          


