package RestaurentPOS;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Afroz
 */
public class EmployeeRegistration extends HttpServlet
{

    static Connection currentCon = null;
   // static ResultSet rs = null;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException
    {
        response.setContentType("text/html;charset=UTF-8");
        Statement stmt = null;
        String empid = request.getParameter("empid");
        String empdep = request.getParameter("deptId");
        String emppass = request.getParameter("password");
        String emphrdate = request.getParameter("hiredate");
        String emptitl = request.getParameter("title");
        String emplst = request.getParameter("lname");
        String empfrst = request.getParameter("fname");
        String empph = request.getParameter("phone");
        String empdob = request.getParameter("dob");
        PrintWriter out = response.getWriter();

        try
        {
                currentCon = ConnectionManager.getConnection();
                stmt = currentCon.createStatement();
                //out.write(empph);
                stmt.executeUpdate("insert into Employee values(" + empid + "," + empdep + ",'" + emptitl + "','" + empfrst + "','" + emplst + "','" + empdob + "','" + emphrdate + "','" + empph + "','" + empfrst + "." + emplst + "','" + emppass + "')");
                response.sendRedirect("home.jsp");
            
        } catch (SQLException theException)
        {
        } catch (IOException theException)
        {
        } finally
        {
            out.close();
        }
    }
}
