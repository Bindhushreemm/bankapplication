<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>


 <link href="https://fonts.googleapis.com/css?family=Roboto:300,400&display=swap" rel="stylesheet">

 <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500&display=swap" rel="stylesheet">

 <link href="https://fonts.googleapis.com/css?family=Source+Serif+Pro:400,600&display=swap" rel="stylesheet">
 <link rel="stylesheet" href="https://use.fontawesome.com/releases/v6.1.1/css/all.css">
 <link rel="stylesheet" href="fonts/icomoon/style.css">
<link rel="stylesheet" href="style.css">
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



<title>login page</title>
</head>
<body overflow="scroll">
<section id="nav-bar">

<nav class="navbar navbar-expand-lg navbar-light ">
  <a class="navbar-brand" href="index.jsp"><img src="bob3.png"></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNav">
    <ul class="navbar-nav ms-auto">
      <li class="nav-item active">
        <a class="nav-link" href="index.jsp">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="options.jsp">Services</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="register.jsp">Register</a>
      </li>
      <li class="nav-item">
        <a class="nav-link " href="register.jsp">Bank</a>
      </li>
    </ul>
  </div>
</nav>
</section>

<div class="login" >
<script src="https://use.fontawesome.com/f59bcd8580.js"></script>
<div class="lcontainer" height="400px" width="300px">
<div class="row m-5 no-gutters shadow-lg" height="30%" width="300px" >
<div class="col-md-6 d-none d-md-block" height="40%">
<img src="hd.jpg" class="img-fluid" style="height:535px; width:700px;" />
</div>
<div class="col-md-6 bg-pink p-5" style="height:535px; width:500px;" >
<h3 class="pb-3">Login Form</h3>
<div class="form-style">

<form action="CustomerLogin">
  <div class="form-group pb-3">    
    <input type="text" placeholder="username" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="usr">   
  </div>
  <div class="form-group pb-3">   
    <input type="password" placeholder="Password" class="form-control" id="exampleInputPassword1" name="pwd">
  </div>
  <div class="d-flex align-items-center justify-content-between">
<div class="d-flex align-items-center"><input name="" type="checkbox" value="" /> <span class="pl-2 font-weight-bold" color="#DB7093">Remember Me</span></div>
<div><a href="#" class="clr">Forget Password?</a></div>
</div>
   <div class="pb-2">
  <input type="submit" class="btn btn-dark w-100 font-weight-bold mt-2" background-color="#DB7093" value="Submit!">
   </div>
</form>
  <div class="sideline">OR</div>
  <!--  <div>
  <button type="submit" class="btn btn-primary w-100 font-weight-bold mt-2"><i class="fa fa-facebook" aria-hidden="true"></i> Login With Facebook</button>
  </div>-->
  <div class="pt-4 text-center">
  New user <a href="#" class="clr">Sign Up</a>
  </div><br><br><br>
 
  <%! String s1 = ""; %>
    <% s1  = (String) session.getAttribute("credentials");%>
    <% if(s1 == null){ %>
    <div class="errorbox" style="color : red"></div>
    <% }else if(s1.equals("credentialsnotexist")){ %>
    <div class="animate-charcter text-right" style="color : red" >InvalidCredentials</div>
    
   
    <% } %>
    
    
</div>

</div>
</div>
</div>


</div>

<div class="abox">
<div class="check">
  <div class="acolumn">
    <div class="acard">
    <i class="fa-solid fa-lock circle-icon "  ></i><br>
    <h3>secure and reliable</h2><br>
    <p>Bank secure from <br> money heist!</p><br>
    <button class="b">Know more</button>
    
    
    
    </div>
  </div>
  <div class="acolumn">
    <div class="acard">
   <i class="fa-solid fa-address-book circle-icon"></i><br>
    <h3>Get in Touch with us</h2><br>
    <p>One step behind<br> to get in touch!</p><br>
     <button class="b">Know more</button>
  </div>
  </div>
  <div class="acolumn">
    <div class="acard">
   <i class="fa-sharp fa-solid fa-circle-info circle-icon"></i><br>
    <h3>Bank of Bengaluru</h2><br>
    <p>services from us<br> to you!</p><br>
     <button class="b">Know more</button>
  </div>
  </div>
  
</div>
</div>





<!--  <div class="footer-brand-logos">
<h5 color="black" align="center" margin-top="20px">Exclusive offers for you</h5>

  <!-- TOPSHOP 
  <a href="/webapp/wcs/stores/servlet/en/thebay/brand/TOPSHOP/womens-apparel">
      <img src="ccard.jpg" alt="TOPSHOP">
      <h3 background-color="black" class="foothead">contactless enabled<br>creditcards<br>to ease <br>your shopping</h3>
  </a>

  <!-- TOPMAN 
  <a href="/webapp/wcs/stores/servlet/en/thebay/brand/TOPMAN">
      <img src="ccard.jpg" alt="TOPSHOP">
      <h3 background-color="black" class="foothead">contactless enabled<br>creditcards<br>to ease <br>your shopping</h3>
  </a>

  <!-- BEAUTY the Guide 
  <a href="http://beautytheguide.com/magazine/">
      <img src="ccard.jpg" alt="TOPSHOP">
      <h3 background-color="black" class="foothead">contactless enabled<br>creditcards<br>to ease <br>your shopping</h3>
  </a>

  <!-- The Room 
  <a href="/webapp/wcs/stores/servlet/en/thebay/content-view/The-Room">
      <img src="ccard.jpg" alt="TOPSHOP">
      <h3 background-color="black" class="foothead">contactless enabled<br>creditcards<br>to ease <br>your shopping</h3>
  </a>

  
</div>-->
<!-- END FOOTER BRAND LOGOS -->

<!-- footer -->
<div class="foot">
<footer class="footer-20192">
      <div class="site-section">
        <div class="container">

          <div class="cta d-block d-md-flex align-items-center px-5">
            <div>
              <h2 class="mb-0">Ready to be a part of your bank?</h2>
              <h3 class="text-dark">Let's get started!</h3>
            </div>
            <div class="ms-auto">
              <a href="#" class="btn btn-dark rounded-0 py-3 px-5">open an account</a>
            </div>
          </div>
          <div class="row">

            <div class="col-sm">
              <a href="#" class="footer-logo">Bank of Bengaluru</a>
              <p class="copyright">
                <small>&copy; 2022</small>
              </p>
            </div>
            <div class="col-sm">
              <h3>Customers</h3>
              <ul class="list-unstyled links">
                <li><a href="#">Bank</a></li>
                <li><a href="#">Services</a></li>
              </ul>
            </div>
            <div class="col-sm">
              <h3>Company</h3>
              <ul class="list-unstyled links">
                <li><a href="#">About us</a></li>
                <li><a href="#">Careerloans</a></li>
                <li><a href="#">Contact us</a></li>
              </ul>
            </div>
            <div class="col-sm">
              <h3>Further Information</h3>
              <ul class="list-unstyled links">
                <li><a href="#">Terms &amp; Conditions</a></li>
                <li><a href="#">Privacy Policy</a></li>
              </ul>
            </div>
            <div class="col-md-3">
              <h3>Follow us</h3>
              <ul class="list-unstyled social">
                <li><a href="#"><i class="fa-brands fa-facebook"></i></a></li>
                <li><a href="#"><i class="fa-brands fa-twitter"></i></a></li>
                <li><a href="#"><i class="fa-solid fa-money-check"></i></a></li>
                <li><a href="#"><i class="fa-brands fa-youtube"></i></a></li>
                <li><a href="#"><i class="fa-solid fa-user-plus"></i></a></li>
              </ul>
            </div>
            
          </div>
        </div>
      </div>
    </footer>

</div>
    
    
    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>






































</body>
</html>