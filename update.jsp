<%@ page import="java.sql.*"%>
<html>
<body>

<form />
<% 
   
  
      
          String US=(String)session.getAttribute("US");

	     try
		 {
                Class.forName("oracle.jdbc.driver.OracleDriver");
                Connection con =DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","ansh");
                Statement s= con.createStatement();
				//ps.setString(1,US);  
				if(US!="")
		{
			String sq="select * from RAJ";
			ResultSet rs1=s.executeQuery(sq);
			if(rs1.next())
			{
		
				String sql="delete from RAJ where F='"+US+"'";
				s.executeUpdate(sql);
				
				
			   response.sendRedirect("index.jsp");
				
					
				%><script language="javascript">
				alert("userprofile deleted");
				</script>
				<%
			}
			else
			{ 
		      
				%><script language="javascript">
				alert("userprofile is not delete");
				</script>
				<%
			}
		}
			       
		 }
		 catch(Exception e)
					{
					System.out.println(e);
					}
						
		try
		 {
                Class.forName("oracle.jdbc.driver.OracleDriver");
                Connection con =DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","ansh");
                Statement s= con.createStatement();
				
		
			
			 s.executeUpdate("delete from SIGNUP where US='"+US+"'");
		}
			       
		 
		 catch(Exception eee)
					{
					System.out.println(eee);
					}
					 
					 
				 %>
				 
				 
				 
					 
					 
					  </form>
					  
</body>
</html>					  
					  
					 
