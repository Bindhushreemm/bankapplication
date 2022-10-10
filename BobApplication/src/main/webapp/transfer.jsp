<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="registerstyle.css">



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
  <a class="navbar-brand" href="#"><img src="bob3.png"></a>
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
        <a class="nav-link " href="statement.jsp">Statement</a>
      </li>
      <li class="nav-item">
        <a class="nav-link " href="index.jsp">logout</a>
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



</div>








<form action="CustomerTransfer">
<div class="abcde">
        <div class="container">
          <h1 text-align="center">Money transfer</h1>
        
      
              <label for="email"><b>Mpin</b></label>
            <input type="password" name="mpin" placeholder="Enter your mpin" required>
             <label for="email"><b>Account number of receiver</b></label>
          <input type="text" placeholder="enter account number of reciever" name="taccno" required><br>
          <label for="email"><b>Amount to be transfered</b></label>&nbsp;&nbsp;&nbsp;
          <input type="number" placeholder="enter amount to be deposited" name="damount" min="1" required><br><br><br><br>
          
        
      
          <div class="clearfix">
      
            
             <div class="buttonbox"> <div class="buttons"><button type="submit" class="button1">Transfer</button></div></div>
          </div>
           
        </div>
  </div>
      </form>

</body>
</html>