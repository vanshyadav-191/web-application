<%@page import="java.sql.*"%>
<%	
		  String email=request.getParameter("email");
                                             String password=request.getParameter("password");
%>		
	<%		 
            Class.forName("oracle.jdbc.driver.OracleDriver");
 			Connection c=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","abhilasha","abhilasha");
			PreparedStatement ps=c.prepareStatement("select * from student3 where email=? and password=?");
			ps.setString(1,email);
			ps.setString(2,password);
			ResultSet rs=ps.executeQuery();
			if(rs.next())
			{
				session.setAttribute("email",email);
                                                                                      response.sendRedirect("home.jsp");
			}
			else
				response.sendRedirect("login_failed.jsp");
				
			c.close();
		%>