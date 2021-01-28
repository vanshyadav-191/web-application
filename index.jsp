<html>
<body style="margin:0" background="bg.png">
<%
	response.setHeader("cache-control","no-cache,no-store,must-revalidate");
	String email=(String)session.getAttribute("email");
	if(email!=null)
		response.sendRedirect("home.jsp");
%>
<div style="background:grey;text-align:center;height:15%;font-size:300%;padding-top:2%;color:yellow">
	Welcome To JurassicWorld.com
</div>
<div style="text-align:center;height:6%">
	<a href="" style="background:yellow;padding:1.5%;text-decoration:none;margin:0 2%"><b>Home</b></a>
	<a href="" style="background:yellow;padding:1.5%;text-decoration:none;margin:0 2%"><b>About Us</b></a>
	<a href="" style="background:yellow;padding:1.5%;text-decoration:none;margin:0 2%"><b>Contact Us</b></a>
	<a href="" style="background:yellow;padding:1.5%;text-decoration:none;margin:0 2%"><b>Help</b></a>
</div>
<div style="text-align:center;background:yellow;width:25%;padding:1%;margin:5% 5% 0 15%;display:inline-box;float:left">
<form action="Register.jsp">
	<b>REGISTER FORM</b><Br><Br>

	Name: <input type="text" name="name"/><br><Br>
                      Password: <input type="password"  name="password"/><br><br>
	Email: <input type="text" name="email"/><br><Br>
	Moblie number: <input type="text"  name="mobilenumber"/><br><br>
                      
	<input type="submit" value="REGISTER"/>
</form>
</div>
<div style="text-align:center;background:yellow;width:25%;padding:2%;margin:5% 5% 0 6%;float:left">
<form action="login.jsp">
	<b>LOGIN FORM</b><Br><Br>
	Email: <input type="text" name="email"/><br><Br>
                       Password: <input type="password"  name="password"/><br><br>
	<input type="submit" value="OK"/>
</form>
</div>
<div style="background:grey;text-align:center;height:11%;font-size:150%;padding-top:3%;color:yellow;margin-top:30%">
	All Rights Reserved.(www.jurassicWorld.com)  2018-19
</div>

</body>
</html>											