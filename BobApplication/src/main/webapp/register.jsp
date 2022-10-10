<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src="index.js"></script>
 <link href="https://fonts.googleapis.com/css?family=Roboto:300,400&display=swap" rel="stylesheet">

 <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500&display=swap" rel="stylesheet">

 <link href="https://fonts.googleapis.com/css?family=Source+Serif+Pro:400,600&display=swap" rel="stylesheet">
 <link rel="stylesheet" href="https://use.fontawesome.com/releases/v6.1.1/css/all.css">
 <link rel="stylesheet" href="fonts/icomoon/style.css">
<link rel="stylesheet" href="registerstyle.css">
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
  <a class="navbar-brand" href="index.jsp"><img src="bob3.png"></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarNav">
    <ul class="navbar-nav ms-auto">
      <li class="nav-item active">
        <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="options.jsp">services</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">loans</a>
      </li>
      <li class="nav-item">
        <a class="nav-link " href="#">Disabled</a>
      </li>
    </ul>
  </div>
</nav>
</section>

<!-- signup block -->
 <form method="post" action="uploadServlet" enctype="multipart/form-data">
 <div class="abcd">
        <div class="container">
          <h1>Sign Up</h1>
          <p>Please fill in this form to create an account.</p>
           <label for="email"><b>Fullname</b></label>
            <input type="text" name="name"  maxlength="32" placeholder="Enter Fullname" pattern="[A-Za-z ]{1,32}"  title="enter fullname" required>
            <label for="email"><b>Date of birth</b></label>&nbsp;
            <input type="date" name="dob" placeholder="Enter Date of birth" min="1980-01-01" max="2004-01-01" id="myDate" required><br><br>
            
             <label for="email"><b>Address</b></label>
          <input type="text" placeholder="Enter address" name="address" required>
            
            
          <label for="email"><b>Email</b></label>
          <input type="text" placeholder="Enter Email" name="email" required pattern="^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$" title="enter valid email">
          
          
          
          <label for="email"><b>Phone Number</b></label>
            <br>
           <select name="phoneCode" required>
            <option selected hidden value="">Code</option>
            <option value="66">+91</option>
            <option value="66">+99</option>
            <option value="66">+90</option>
            <option value="66">+66</option>
           </select>
           <input type="phone" name="phono" placeholder="9787678989" required>
           
            <label for="email"><b>Pancard</b></label>
          <input type="text" placeholder="Enter Pancard number" name="pan" required pattern="[A-Z]{5}[0-9]{4}[A-Z]{1}" title="enter  pan number">
          
          
            <label for="email"><b>Adhar card</b></label>
          <input type="text" placeholder="Enter Adhar card number" name="adhar" pattern="/(^[0-9]{4}[0-9]{4}[0-9]{4}$)|(^[0-9]{4}\s[0-9]{4}\s[0-9]{4}$)|(^[0-9]{4}-[0-9]{4}-[0-9]{4}$)/" required title="enter adhar">  
          
          
          <label for="email"><b> Select type of acocunt:</b></label>
         <select name="type" required="required">
				<option value="">acc type</option>
				<option value="Savings">Savings</option>
				<option value="Current">Current</option>
				</select><br><br>
          
          
           <label for="email"><b>Balance</b></label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input type="number" name="balance" placeholder="Minimum deposit 500" min="500" required><br><br>
            
            
            <label for="email"><b>Username</b></label>
            <input type="text" name="usr" placeholder="Enter Username" required pattern="^[A-Za-z]\\w{5, 29}$">
          
          <label for="psw"><b>Password</b></label>
          <input type="password" placeholder="Enter Password" name="psw" required pattern="^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$"
            title="eight letter Password atleast one number and one letter">
          
          
           <label for="email"><b>Create your Mpin</b></label>
            <input type="password" name="mpin" placeholder="Enter Mpin" maxlength="4" required>
            
            <label for="email"><b>Upload profile photo</b></label>&nbsp;&nbsp;&nbsp;
            <input type="file" name="photo" size="50"/><br><br>
      
                  
      
          <p>By creating an account you agree to our <a href="#" style="color:dodgerblue">Terms & Privacy</a>.</p>
      
          <div class="clearfix">
      
            <button type="submit" class="btn"><a href="#"></a>Sign Up</button>
            <a href="login.jsp" class="btn">Existing customer?</a>
          </div>
        </div>
      </form>
</div>

<script>
function myFunction() {
  var x = document.getElementById("myDate").min;
  document.getElementById("demo").innerHTML = x;
}
</script>












































 

</body>
</html>