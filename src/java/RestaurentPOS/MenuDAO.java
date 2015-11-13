package RestaurentPOS;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Afroz
 */
public class MenuDAO
{

    static Connection con;
    static ResultSet rs;
    static Statement stmnt;
    
    public static int itemCount() throws SQLException, ClassNotFoundException
    {
        int count = -1;
        try
        {
            con = ConnectionManager.getConnection();
            stmnt = con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
            rs = stmnt.executeQuery("select * from Menu");
            rs.last();
            count = rs.getRow();
            return ++count;
        } catch (SQLException e)
        {

        } finally
        {
            rs = null;
            stmnt = null;
            con.close();   
        }
        return count;
}
    
    public List<Menu> menuList() throws SQLException, ClassNotFoundException
    {
        List<Menu> menu = new ArrayList<Menu>();
        Connection connect = ConnectionManager.getConnection();
        PreparedStatement statement = connect.prepareStatement("Select * from Menu");
        ResultSet resultSet = statement.executeQuery();
        while (resultSet.next())
        {
            Menu item = new Menu();
            item.setItemName(resultSet.getString("Item_name"));
            item.setItemPrice(resultSet.getString("Item_price"));
            menu.add(item);
            
        }
        return menu;
    }
    
  
}
