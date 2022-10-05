
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/login-style.css">
<title>Login</title>
</head>
<body>
<div id='container'>
  <div class='signup'>
     
      <form action="loginAction.jsp" method="">
          <input type="email" name="email" placeholder="Enter Email" required/>
          <input type="password" name="password" placeholder="Enter password" required />
          <input class="button button4" type="submit" value="Login" >
      </form>
      <table border="0">
          
          <tbody>
              <tr>
                  <td><h2><a href="signup.jsp"><button class="button button4">SignUp</button></a></h2></td>
                  <td><h2><a href="forgotPassword.jsp"><button class="button button4">Forgot Password?</button></a></h2></td>
              </tr>
          </tbody>
      </table>

      
      
       
  </div>
  <div class='whysignLogin'>
      
      
      <%
      String msg = request.getParameter("msg");
      
      if("notexist".equals(msg)){
          %><h1>Incorrect Username or Password</h1>
          <%
      }
      %>
      
      <%
      if("invalid".equals(msg)){
          %>><h1>Some thing Went Wrong! Try Again !</h1>
          <%
      }
      %>
  


      <h2 style="color: white">ADMIN Only</h2>
    <p style="color: white">An admin panel or a control panel is a system that enables administrators and other website workers to conduct various tasks like monitoring, maintaining, and controlling certain business processes. An admin dashboard is one of the core components of a control panel.</p>
  </div>
</div>

</body>
</html>