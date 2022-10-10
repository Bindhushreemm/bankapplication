<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="admincs.css">

<style>
body {
  background-image: url('adminback.webp');
  background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: 100% 100%;
}
</style>

</head>
<body  >
<div class="login">
  <div class="login-triangle"></div>
  
  <h2 class="login-header">Log in</h2>

  <form class="login-container" action="AdminLoginServlet">
    <p><input type="text" placeholder="username" name="usr"></p>
    <p><input type="password" placeholder="Password" name="pwd"></p>
    <p><input type="submit" value="Log in"></p>
  </form>
</div>
</body>
</html>