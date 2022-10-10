<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
.user-pic{
width:60px;
border-radius:50%;
cursor:pointer;
margin-left:30px;
}

.sub-menu-wrap{
position:absolute;
top:100%;
right:0%;
width:320px;
max-height:0px;
overflow:hidden;
transition:max-height 0.5s;

}

.sub-menu-wrap.open-menu{
max-height:400px;}
.sub-menu{
background:#FDDDE6;
padding:20px;
margin:10px;
}
.user-info{
display:flex;
align-items:center;
}
.user-info h3{
font-weight:500;
}
.user-info img{
width:180px;
border-radius:50%;
margin-right:30%;
overflow:hidden;
border:1px solid black;
}
.sub-menu hr{
border:0;
height:1px;
width:100%;
background:#ccc;
margin:15px 0px 10px;

}
.sub-menu-link{
 display:flex;
 align-items:center;
 text-decoration:none;
 color:#525252;
 margin:12px 0;

}
.sub-menu-link p{
width:100%;

}
.sub-menu-link span{
    font-size:22px;
    transition:transfor 0.5s;
   
}
.sub-menu-link :hover span{
transform:translateX(5px);}


.sub-menu-link :hover p{
font-weight:5px;}

#file{
display:none;}
#uploadBtn{
height:40px;
width:40%;
position:absolute;
bottom:0;
transform:translateX(-50%);
text-align:center;
left:38%;
top:100px;
background:rgba(0,0,0,0.7);
color:white;
border-radius:20px;
cursor:pointer;
}
.profile-pic-change{
overflow:hidden;}



</style>











<link rel="stylesheet" href="style1.css">



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
<%
String id = request.getParameter("id");
%>
<section id="nav-bar">

<nav class="navbar navbar-expand-lg navbar-light ">
  <a class="navbar-brand" href="index.jsp"><img src="bob3.png"></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNav">
    <ul class="navbar-nav ms-auto">
      <li class="nav-item active">
        <a class="nav-link" href="withdraw.jsp">withdraw <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="deposit.jsp">Deposit</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="transfer.jsp">Transfer</a>
      </li>
      <li class="nav-item">
        <a class="nav-link " href="statement.jsp">Statement</a>
      </li>
      <li class="nav-item">
        <a class="nav-link " href="eduloan.jsp">loan</a>
      </li>
       <li class="nav-item">
        <a class="nav-link " href="index.jsp">log out</a>
      </li>
      
    </ul>
    <img src="viewprofile.jsp?id=<%=id%>" class="user-pic" onclick="toggleMenu()" >
    <div class="sub-menu-wrap" id="subMenu">
    <div class="sub-menu">
    <div class="user-info">
    <div id="profile-pic-change">
    <img src="viewprofile.jsp?id=<%=id%>" id="photo">
    <input type="file" id="file">
    <label for="file" id="uploadBtn">Choose Photo</label></div>
    <script src="app.js"></</script>
   
    
    </div>
    <hr>
    <a href="updatename.jsp" class="sub-menu-link">
         
         <p>update name</p>
         <span>></span>
    
    </a>
    <a href="updatephono.jsp" class="sub-menu-link">
        
         <p>update phono </p>
         <span>></span>
    
    </a>
    <a href="updateaddress.jsp" class="sub-menu-link">
        
         <p>update address</p>
         <span>></span>
    
    </a>
    <a href="updateadhar.jsp" class="sub-menu-link">
        
         <p>update adhar</p>
         <span>></span>
    
    </a>
    </div>
    
    </div>
  </div>
</nav>
</section>
<h1 class="head">Services for you Bank of Bengaluru</h1>
<div class="ocards">

<div class="container">
  <img class="img" src="depositimg.webp?dpr=1&auto=format&fit=crop&w=1500&h=1000&q=80&cs=tinysrgb&crop=&bg=" alt="" />
  <p class="title">Deposit</p>
  <div class="overlay"></div>
  <div class="button"><a href="deposit.jsp">Deposit cash</a></div>
</div>
<div class="container">
  <img class="img" src="transfer.webp?dpr=1&auto=format&fit=crop&w=1500&h=1000&q=80&cs=tinysrgb&crop=&bg=" alt="" />
  <p class="title">Transfer</p>
  <div class="overlay"></div>
  <div class="button"><a href="transfer.jsp">Send cash</a></div>
</div>
<div class="container">
  <img class="img" src="statementimg.webp?dpr=1&auto=format&fit=crop&w=1500&h=1000&q=80&cs=tinysrgb&crop=&bg=" alt="" />
  <p class="title">Statements</p>
  <div class="overlay"></div>
  <div class="button"><a href="statement.jsp">Get Statement</a></div>
</div>
</div>

<div class="ocards">
<div class="lcontainer">
  <img class="img" src="withdraw.jpg?dpr=1&auto=format&fit=crop&w=1500&h=1000&q=80&cs=tinysrgb&crop=&bg=" alt="" />
  <p class="title">Withdrawal</p>
  <div class="overlay"></div>
  <div class="button"><a href="withdraw.jsp">Cash Withdraw</a></div>
</div>
<div class="rcontainer">
  <img class="img" src="loans.jpeg?dpr=1&auto=format&fit=crop&w=1500&h=1000&q=80&cs=tinysrgb&crop=&bg=" alt="" />
  <p class="title">loans</p>
  <div class="overlay"></div>
  <div class="button"><a href="eduloan.jsp">know about loans</a></div>
</div>
</div>

<script>
let subMenu=document.getElementById("subMenu");
function toggleMenu(){
	subMenu.classList.toggle("open-menu");
}

</script>


</body>
</html>