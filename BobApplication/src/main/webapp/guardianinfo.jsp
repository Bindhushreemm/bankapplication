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
        <a class="nav-link " href="CustomerStatement">Statement</a>
      </li>
      <li class="nav-item">
        <a class="nav-link " href="#">close account</a>
      </li>
    </ul>
  </div>
</nav>
</section> 

<div class="abcd">
        <div class="container">
          <h1>Guardian information</h1>
          <p>Please fill in this form to apply for loan.</p>
           <label for="email"><b>Father name</b></label>
            <input type="text" name="faname" placeholder="Enter Fathername" required>
            
            <label for="email"><b>Date of birth</b></label>&nbsp;
            <input type="date" name="fdob" placeholder="Enter Date of birth" ><br><br>
            
            <label for="email"><b>Father occupation</b></label>
            <input type="text" name="foccu" placeholder="Enter Father occupation" required>
            
             <label for="email"><b>Email</b></label>
          <input type="text" placeholder="Enter Email" name="femail" required>
          
          
           <label for="email"><b>Phone Number</b></label>
            <br>
           <select name="phoneCode" required>
            <option selected hidden value="">Code</option>
            <option value="66">+91</option>
            <option value="66">+99</option>
            <option value="66">+90</option>
            <option value="66">+66</option>
           </select>
           <input type="phone" name="fphono" placeholder="9787678989" required>
           
           
           
           <label for="email"><b>Pancard</b></label>
          <input type="text" placeholder="Enter Pancard number" name="fpan" required>
        
          <label for="email"><b>Upload pancard photo</b></label>&nbsp;&nbsp;&nbsp;
            <input type="file" name="fpanphoto" size="50"/><br><br>
          
          
            <label for="email"><b>Adhar card</b></label>
          <input type="text" placeholder="Enter Adhar card number" name="fadhar" required>  
          
          
           <label for="email"><b>Upload adhar card photo</b></label>&nbsp;&nbsp;&nbsp;
            <input type="file" name="fadharphoto" size="50"/><br><br>
           
           
           
           
            
            
            <label for="email"><b>Mother name</b></label>
            <input type="text" name="mname" placeholder="Enter mothername" required>
            
            
            <label for="email"><b>Date of birth</b></label>&nbsp;
            <input type="date" name="mdob" placeholder="Enter Date of birth" ><br><br>
            
            <label for="email"><b>Mother occupation</b></label>
            <input type="text" name="moccu" placeholder="Enter Mother occupation" required>
            
             <label for="email"><b>Email</b></label>
          <input type="text" placeholder="Enter Email" name="memail" required>
          
          
           <label for="email"><b>Phone Number</b></label>
            <br>
           <select name="phoneCode" required>
            <option selected hidden value="">Code</option>
            <option value="66">+91</option>
            <option value="66">+99</option>
            <option value="66">+90</option>
            <option value="66">+66</option>
           </select>
           <input type="phone" name="mphono" placeholder="9787678989" required>
            
            
            <label for="email"><b>Monthly income</b></label>
            <input type="number" name="mincome" placeholder="enter monthly income" required>
            
            
            
              <label for="email"><b>Upload pancard photo</b></label>&nbsp;&nbsp;&nbsp;
            <input type="file" name="mpanphoto" size="50"/><br><br>
          
          
            <label for="email"><b>Adhar card</b></label>
          <input type="text" placeholder="Enter Adhar card number" name="madhar" required>  <br><br>
          
          
           <label for="email"><b>Upload adhar card photo</b></label>&nbsp;&nbsp;&nbsp;
            <input type="file" name="madharphoto" size="50"/><br><br>
            
  
            
            
            
            
            
          

                  
      
          <p>Above furnished details are true to my knowledge <a href="#" style="color:dodgerblue">I accept that</a>.</p>
      
          <div class="clearfix">
          
      
            <button type="submit" class="btn" required="required"><a href="login.jsp">Submit</a></button>
          
            
          </div>
        </div>
      </form>
</div>





</body>
</html>