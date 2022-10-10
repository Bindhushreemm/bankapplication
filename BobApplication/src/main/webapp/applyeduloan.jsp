<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="NewFile.css">



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
  <a class="navbar-brand" href="options.jsp"><img src="bob3.png"></a>
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
        <a class="nav-link " href="index.jsp">logout</a>
      </li>
    </ul>
  </div>
</nav>
</section> 
<form  method="post" action="uploadloan" enctype="multipart/form-data">

<div class="abcd">
        <div class="ccontainer">
          <h1>Personal information</h1>
          <p>Please fill in this form to apply for loan.</p>
           <label for="email"><b>Firstname</b></label>
            <input type="text" name="fname" placeholder="Enter Firstname" required>
            
            
            
            <label for="email"><b>Lastname</b></label>
            <input type="text" name="lname" placeholder="Enter lastname" required>
            
            
            <label for="email"><b>Date of birth</b></label>&nbsp;
            <input type="date" name="dob" placeholder="Enter Date of birth" min="1980-01-01" max="2004-01-01" id="myDate" required><br><br>
            
            
            <label for="email"><b>Student Id</b></label>
            <input type="text" name="rno" placeholder="Enter university roll number" required>
            
            
            <label for="email"><b>Previous year percentage</b></label>&nbsp;&nbsp;
            <input type="number" name="percentage" placeholder="Enter previous year percentage" required><br><br>
            
            <label ><b>Current education</b></label>&nbsp;&nbsp;
            <select name="Currenteducation" required>
            <option selected hidden value="">Current education</option>
            <option value="Bachelor of engineering">Bachelor of engineering</option>
            <option value="Bachelor of commerce">Bachelor of commerce</option>
            <option value="Mbbs">Mbbs</option>
            <option value="Bachelor of science">Bachelor of science</option>
           </select><br>
            
            
            <label for="email"><b>Current cgpa</b></label>
            <input type="text" name="cgpa" placeholder="Enter current sem Cgpa" >
            
            <label for="email"><b>College name</b></label>
          <input type="text" placeholder="Enter college name" name="cname" required> 
          
          <label for="email"><b>tution fees</b></label>&nbsp;&nbsp;
          <input type="number" placeholder="Enter tution fees" name="tfees" required> <br><br>
          
          
            <label for="email"><b>Upload fees receipt</b></label>&nbsp;&nbsp;&nbsp;
            <input type="file" name="feephoto" size="50"/><br><br>
            
            <label for="email"><b>Nationality</b></label>
            <input type="text" placeholder="Enter your nationality" name="nationality" required>
            
            
            
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
          <input type="text" placeholder="Enter Pancard number" name="pan" required pattern="[A-Z]{5}[0-9]{4}[A-Z]{1}" title="enter pan number">
        
          <label for="email"><b>Upload pancard photo</b></label>&nbsp;&nbsp;&nbsp;
            <input type="file" name="panphoto" size="50"/><br><br>
          
          
            <label for="email"><b>Adhar card</b></label>
          <input type="text" placeholder="Enter Adhar card number" name="adhar" required  pattern="/(^[0-9]{4}[0-9]{4}[0-9]{4}$)|(^[0-9]{4}\s[0-9]{4}\s[0-9]{4}$)|(^[0-9]{4}-[0-9]{4}-[0-9]{4}$)/" title="enter correct adhar">  
          
          
           <label for="email"><b>Upload adhar card photo</b></label>&nbsp;&nbsp;&nbsp;
            <input type="file" name="adharphoto" size="50"/><br><br>
            
             
          
          
          
            
            <label for="email"><b>Upload passportsize photo</b></label>&nbsp;&nbsp;&nbsp;
            <input type="file" name="photo" size="50"/><br><br>
      
                  
      
          <p>Above furnished details are true to my knowledge <a href="#" style="color:dodgerblue">I accept that</a>.</p>
      
          <div class="clearfix">
          
            <div class="buttonbox"> <div class="buttons"><button type="submit" class="button1">Apply loan</button></div></div>
           <!--  <input type="submit" class="btn" value="Submit now!"><br><br>-->
              <% boolean flag=Boolean.parseBoolean(request.getParameter("flag"));
          if(flag==true){ %>
          
        	  <div class="animate-charcter text-right" style="color : red" >personal info saved</div>
        	  
        	<%} %>  
        
        
            
          </div>
        </div>
       
    
</div>

  </form>

<script>
function myFunction() {
  var x = document.getElementById("myDate").min;
  document.getElementById("demo").innerHTML = x;
}
</script>

</body>
</html>