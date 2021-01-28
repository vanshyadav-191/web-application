<html>
<body style="margin:0" background="bg.png">
<%
	response.setHeader("cache-control","no-cache,no-store,must-revalidate");
	String email=(String)session.getAttribute("email");
	if(email==null)
		response.sendRedirect("index.jsp");
%>
<div style="background:grey;text-align:center;height:15%;font-size:300%;padding-top:2%;color:yellow">
	Welcome To JurassicWorld.com
<div style="font-size:50%;color:white;text-align:right"><%=email%></div>
</div>
<div style="text-align:center;height:6%">
	<a href="" style="background:yellow;padding:1.5%;text-decoration:none;margin:0 2%"><b>Home</b></a>
	<a href="" style="background:yellow;padding:1.5%;text-decoration:none;margin:0 2%"><b>add post</b></a>
	<a href="" style="background:yellow;padding:1.5%;text-decoration:none;margin:0 2%"><b>profile</b></a>
	<a href="" style="background:yellow;padding:1.5%;text-decoration:none;margin:0 2%"><b>update </b></a>
	<a href="logout.jsp" style="background:yellow;padding:1.5%;text-decoration:none;margin:0 2%"><b>Logout</b></a>
</div>
<div style="text-align:center;background:yellow;width:25%;padding:1%;margin:5% 5% 0 15%;display:inline-box;float:left">
	<b>Dinosauras Panel</b><Br><Br>
	<b><a href="" style="text-decoration:none">View Dinosaur Profile</a></b><Br><Br>
	<b><a href="" style="text-decoration:none">Add Dinosaur Profile</a></b><Br><Br>
	<b><a href="" style="text-decoration:none">Update Dinosaur Profile</a></b><Br><Br>
	<b><a href="" style="text-decoration:none">Delete Dinosaur</a></b><Br><Br>
	<b><a href="" style="text-decoration:none">Search Dinosaur</a></b><Br><Br>
	<b><a href="" style="text-decoration:none">Upload Dinosaur Photo</a></b><Br><Br>
</div>
<div style="text-align:center;background:yellow;width:25%;padding:1%;margin:5% 5% 0 6%;float:left">
	<b>Admin Panel</b><Br><Br>
	<b><a href="" style="text-decoration:none">View Profile</a></b><Br><Br>
	<b><a href="" style="text-decoration:none">Update Profile</a></b><Br><Br>
	<b><a href="" style="text-decoration:none">Change Password</a></b><Br><Br>
	<b><a href="" style="text-decoration:none">Delete Profile</a></b><Br><Br>
	<b><a href="" style="text-decoration:none">Upload Photo</a></b><Br><Br>

</div>
<div style="background:grey;text-align:center;height:11%;font-size:150%;padding-top:3%;color:yellow;margin-top:30%">

</div>

</body>
</html>											