<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.ResultSet" %>
    <%@ page import="dao.CustomerDao" %>
     
<!DOCTYPE html>
<html>
<head>
<style>

 tr{cursor: pointer; transition: all .25s ease-in-out}
 .selected{background-color: red; font-weight: bold; color: #fff;}
            
        
table tr td {
  border: 1px solid black;
  color: black;
  padding: 10px;
  
 position:relative;
 


 
}
th{
border: 1px solid black;
  color: black;
  padding: 10px;
  
 position:relative;
}
.htable{
background-color:	#C71585;
color:white;
border: 1px solid black;}
table{
	width:600px;
	align:center;
	margin-top:10px;
	margin-left:50px;
}

.loantab{
	position:absolute;
	margin-top:120px;
	margin-left:50px;
	left:30%;
	box-shadow: 2px 1px 21px -9px rgba(0,0,0,0.38);
	width:700px;
}
h1{
	text-align:center;
	margin-top:20px;
}
#btnExport{
background-color:	#C71585;
color:white;
border-radius:20px;
width:190px;
align:center;
margin-left:230px;}

</style>
<link rel="stylesheet" href="registerstyle.css">


<script type="text/javascript" src="downloadFile.js"></script>

<link href="https://fonts.googleapis.com/css?family=Roboto:300,400&display=swap" rel="stylesheet">

 <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500&display=swap" rel="stylesheet">

 <link href="https://fonts.googleapis.com/css?family=Source+Serif+Pro:400,600&display=swap" rel="stylesheet">
 <link rel="stylesheet" href="https://use.fontawesome.com/releases/v6.1.1/css/all.css">
 <link rel="stylesheet" href="fonts/icomoon/style.css">

<link rel="stylesheet" type="text/css" media="only screen and (max-device-width: 480px)" href="small-device.css" />
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@6.1.2/css/fontawesome.min.css">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.3/dist/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
<meta charset="UTF-8">


<title>Insert title here</title>
</head>
<body>
<section id="nav-bar">

<nav class="navbar navbar-expand-lg navbar-light ">
  <a class="navbar-brand" href="eduloan.jsp"><img src="bob3.png"></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNav">
    <ul class="navbar-nav ms-auto">
      <li class="nav-item active">
        <a class="nav-link" href="withdraw.jsp">withdraw <span class="sr-only">(current)</span></a>
      </li>
     
      <li class="nav-item">
        <a class="nav-link" href="transfer.jsp">Transfer</a>
      </li>
      <li class="nav-item">
        <a class="nav-link " href="options.jsp">Services</a>
      </li>
      <li class="nav-item">
        <a class="nav-link " href="eduloan.jsp">loans</a>
      </li>
      <li class="nav-item">
        <a class="nav-link " href="index.jsp">log out</a>
      </li>
    </ul>
  </div>
</nav>
</section>

<!--  <div>
<form action="approvalstatus">
enter the name:<input type="text" name="hesru">
enter the salary:<input type="txt" name="hesrugalu">
<input type="submit" value="submit">
</form>
</div>-->

<div>
<h1>Statements</h1>


</div>
<%


String username=(String) session.getAttribute("username");
System.out.println("the customerstatement"+username);

int accno=CustomerDao.getaccno(username);

																																								
%>
 <form >
<div class="loantab">
<table  id="headerTable" >
    
  
    <div><tr class="htable"><th>Accno</th><th>Amount</th><th>Status</th><th>Balance</th></tr> </div>
   <%
   
   try{
	   ResultSet rs=CustomerDao.getAllStatement(accno);
	   while(rs.next()){  
	   
   %>
   
     <tbody><tr><td><%=rs.getInt(1)%>
       </td><td><%=rs.getDouble(2) %>
      </td><td><%=rs.getString(3) %>
      
       
       </td><td><%=rs.getDouble(4) %></tbody>
       </td></tr>
    	 
      
   <% 
   }
   }
	   catch(Exception e){
		   e.printStackTrace();
	   }
   %>
  
  </table>
   <script>
            
            function selectedRow(){
                
                var index,
                    table = document.getElementById("headerTable");
            
                for(var i = 1; i < table.rows.length; i++)
                {
                    table.rows[i].onclick = function()
                    {
                         // remove the background from the previous selected row
                        if(typeof index !== "undefined"){
                           table.rows[index].classList.toggle("selected");
                        }
                        console.log(typeof index);
                        // get the selected row index
                        index = this.rowIndex;
                        // add class selected to the row
                        this.classList.toggle("selected");
                        console.log(typeof index);
                     };
                }
                
            }
            selectedRow();
        </script>
  <iframe id="txtArea1" style="display:none"></iframe>
  <button id="btnExport" onclick="fnExcelReport();"> Download file</button>
 
    
</div>
</form>













</body>
</html>




