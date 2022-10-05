<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/signup-style.css">
<title>ForgotPassword</title>
</head>
<body>
<div id='container'>
  <div class='signup'>
      
      <form action="forgotPasswordAction.jsp" method="">
          
          <input type="text" name="email" placeholder="Enter Mail" value="" required/>
          <input type="text" name="mobile" placeholder="Enter Mobile Number" value="" required/>
          <select name="securityQustion" required>
              <option value="What is your first car?">What is your first car?</option>
              <option value="What is your first pet name?">What is your first pet name?</option>
              <option value="What is your favorite color">What is your favorite color?</option>
              <option value="What is your first teacher name?">What is your first teacher name?</option>
          </select>
          <input type="text" name="answer" placeholder="Answer" value="" required/>
          <input type="text" name="newpassword" placeholder="Enter New Password" value="" required/>
          <input type="submit" value="Save" />
      </form>
     
      <h2><a href="">Login</a></h2>
  </div>
  <div class='whyforgotPassword'>
   
      <%
       String msg= request.getParameter("msg");
          
      if("done".equals(msg)){
    %><h1>Password Changed Successfully!</h1>
    <%
      }
      %>
   <%      
      if("invalid".equals(msg)){
    %><h1>Some thing Went Wrong! Try Again !</h1>
    <%
      }
      %>




    <h2 style="color: white">ADMIN only</h2>
    <p style="color: white">Please do responsible</p>
  </div>
</div>
</body>
</html>