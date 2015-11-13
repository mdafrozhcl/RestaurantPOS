package RestaurentPOS;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Afroz
 */
public class UserBean
{

    private String username;
    private String password;
    private String firstName;
    private String lastName;
    private String empid;
    public boolean valid=false;

    
    
    public String getFirstName()
    {
        return firstName;
    }

    public void setFirstName(String newFirstName)
    {
        firstName = newFirstName;
    }

    public String getLastName()
    {
        return lastName;
    }

    public void setLastName(String newLastName)
    {
        lastName = newLastName;
    }

    public String getPassword()
    {
        return password;
    }

    public void setPassword(String newPassword)
    {
        password = newPassword;
    }

    public String getUsername()
    {
        return username;
    }

    public void setUserName(String newUsername)
    {
        username = newUsername;
    }

    public boolean isValid()
    {
        return valid;
    }

    public void setValid(boolean newValid)
    {
        valid = newValid;
    }

    public String getEmpid()
    {
        return empid;
    }

    public void setEmpid(String empid)
    {
        this.empid = empid;
    }
}
