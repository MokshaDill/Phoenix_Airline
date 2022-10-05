<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/signup-style.css">
<title>Signup</title>
</head>
<body>
<div id='container'>
  <div class='signup'>
      <form action="signupAction.jsp" method="">
          <input type="text" name="name" placeholder="Enter Name" value="" required/>
          <input type="text" name="email" placeholder="Enter Mail" value="" required/>
          <input type="text" name="mobile" placeholder="Enter Mobile Number" value="" required/>
          <select name="securityQustion" required>
              <option value="What is your first car?">What is your first car?</option>
              <option value="What is your first pet name?">What is your first pet name?</option>
              <option value="What is your favorite color">What is your favorite color?</option>
              <option value="What is your first teacher name?">What is your first teacher name?</option>
          </select>
          <input type="text" name="answer" placeholder="Answer" value="" required/>
          <input type="text" name="password" placeholder="Enter Password" value="" required/>
          <input type="submit" value="Signup" />
      </form>
      <h2><a href="login.jsp">Login</a></h2>
  </div>
  <div class='whysign'>


   <%
   String msg= request.getParameter("msg");
   
        if("valid".equals(msg)){
   %>         <h1>Successfully Updated</h1>
   <%
        }

        if("invalid".equals(msg)){
%>        <h1>Some thing Went Wrong! Try Again !</h1>
<%
}
   %>   
      
      




    <h2 style="color: white;">ADMIN SignUp</h2>
    <p style="color: white;">**Preparing, organising and storing information in paper and digital form.,<br>
        **Dealing with queries on the phone and by email.<br>
        **Greeting visitors at reception.<br>
        **Managing diaries, scheduling meetings and booking rooms.<br>
        **Arranging travel and accommodation.<br>
        **Arranging post and deliveries.</p>
  </div>
</div>

</body>
</html>