/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package RestaurentPOS;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Afroz
 */
public class addItem extends HttpServlet
{

    static Connection currentCon = null;
    static String count;

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException
    {
        response.setContentType("text/html;charset=UTF-8");
        Statement stmt = null;
        String itemName;
        String itemPrice;
        PrintWriter out = response.getWriter();

        try
        {
                    //String countQuery = "insert into menu values("+MenuDAO.itemCount()+",'"+itemName+"',"+Float.parseFloat(itemPrice)+")";
           HttpSession session = request.getSession();
//            if (session.getAttribute("currentSessionUser") != null)
            if (true)
            {
                currentCon = ConnectionManager.getConnection();
                stmt = currentCon.createStatement();
                //rs = stmt.executeQuery(countQuery);
                count = request.getParameter("itemID");
                
                itemName = request.getParameter("itemName");
                itemPrice = request.getParameter("itemPrice");
                stmt.execute("insert into menu values("+Integer.parseInt(count)+",'"+itemName+"',"+itemPrice+");");
                out.print("Inserted...");
                //response.sendRedirect("home.jsp");
            }
//            } else
//            {
//            }
        } catch (Throwable theException)
        {
            System.out.println(theException.getMessage());
        } finally
        {
            out.close();
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException
    {
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo()
    {
        return "Short description";
    }// </editor-fold>

}
