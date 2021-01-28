<%@page import="java.sql.*"%>
<%		
		String name=request.getParameter("name");
                                            String mobilenumber=request.getParameter("mobilenumber");
                                             String password=request.getParameter("password");
		
		String email=request.getParameter("email");
		
%>		
		<%	Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection c=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","abhilasha","abhilasha");
			PreparedStatement ps=c.prepareStatement("insert into student3 values (?,?,?,?)");
			ps.setString(1,name);
                                                                 ps.setString(2,email);
                                                                   ps.setString(3,password);
                                                                   ps.setString(4,mobilenumber);
			
                                                                  int i=ps.executeUpdate();
			if(i>0)
                                                                    
	      			response.sendRedirect("success.jsp");
			
			c.close();
		
%>