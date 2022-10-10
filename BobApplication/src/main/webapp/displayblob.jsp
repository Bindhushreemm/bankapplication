<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ page language="java" %>
<%@ page import="java.io.*" %>
<%@ page import="java.sql.*" %>

<%

String url = "jdbc:mysql://localhost:3306/bank";
String user = "root";
String password = "password";

String filePath = "/home/bindhushree/Desktop/photos/tom.jpg";

try {
    Connection conn = DriverManager.getConnection(url, user, password);

    String sql = "SELECT photo FROM register WHERE accno=1";
    PreparedStatement statement = conn.prepareStatement(sql);
   

    ResultSet result = statement.executeQuery();
    if (result.next()) {
        Blob blob = result.getBlob("photo");
        InputStream inputStream = blob.getBinaryStream();
        OutputStream outputStream = new FileOutputStream(filePath);

        int bytesRead = -1;
        byte[] buffer = new byte[4096];
        while ((bytesRead = inputStream.read(buffer)) != -1) {
            outputStream.write(buffer, 0, bytesRead);
        }

        inputStream.close();
        outputStream.close();
        System.out.println("File saved");
    }
    conn.close();
} catch (SQLException ex) {
    ex.printStackTrace();
} catch (IOException ex) {
    ex.printStackTrace();
}



%>
</body>
</html>