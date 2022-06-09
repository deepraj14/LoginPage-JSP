package deep;

import java.io.Console;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class LoginServlet
 */
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	  
		public static String encrypt(String input)
	    {
	        try {
	            
	            MessageDigest md = MessageDigest.getInstance("SHA-512");
	            byte[] messageDigest = md.digest(input.getBytes());
	           
	            
	            BigInteger no = new BigInteger(1, messageDigest);
	            
	          
	  
	            
	            String hashtext = no.toString(16);
	  
	           
	            while (hashtext.length() < 32) {
	                hashtext = "0" + hashtext;
	            }
	  
	          
	            return hashtext;
	        }
	  
	       
	        catch (NoSuchAlgorithmException e) {
	            throw new RuntimeException(e);
	        }
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			PrintWriter out=response.getWriter();
			response.setContentType("text/html");
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/deep","root","root");
			
			String n=request.getParameter("txtName");
			String p=request.getParameter("txtPwd");
			
			p=encrypt(p);
			
			
			
		
			
			PreparedStatement ps= con.prepareStatement("select uname from login where uname=? and password=?");
			ps.setString(1,n);
			ps.setString(2,p);
			
			ResultSet rs=ps.executeQuery();
			if(rs.next())
			{
				
				
				request.setAttribute("email", n);
				RequestDispatcher rd=request.getRequestDispatcher("welcome.jsp");
				rd.forward(request, response);
			}
			else
			{
				request.setAttribute("error", true);
				RequestDispatcher rd=request.getRequestDispatcher("login.jsp");
				rd.include(request, response);
				
				
			}
			
		} catch (ClassNotFoundException e) {
			
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

}
