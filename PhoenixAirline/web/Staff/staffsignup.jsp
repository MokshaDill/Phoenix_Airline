<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/signup-style.css">
<title>Signup</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Alkalami&family=Dancing+Script&family=Noto+Sans+Mono:wght@700&display=swap" rel="stylesheet">
</head>
<body>

    <div class="fullscreen-container">
    <div class="container">
        <div class="heading">
            <h1 class="font5"> <span>STAFF  </span>SignUp</h1>
        </div>

        <div class="form-container">
                        <form action="staffsignupAction.jsp" method="">
                            <%
                                String msg= request.getParameter("msg");

                                     if("valid".equals(msg)){
                                %>         <h3>Successfully Updated</h3>
                                <%
                                     }

                                     if("invalid".equals(msg)){
                             %>        <h3>Some thing Went Wrong! Try Again !</h3>
                             <%
                             }
                                %>  
                                
                                
                          <div class="input-group">
                            <label for="name">Name</label>
                            <input type="text" name="name" placeholder="Enter Name" value="" required/>
                          </div>
                          <div class="input-group">
                            <label for="email">Email</label>
                            <input type="email" name="email" placeholder="Enter Mail" value="" required/>
                          </div>
                          <div class="input-group">
                            <label for="password">Mobile</label>
                            <input type="text" name="mobile" placeholder="Enter Mobile Number" value="" required/>
                          </div>
                            <div class="input-group">
                            <label for="identify">Grade</label>
                                <select name="grade" required>
                                    <option value="gradeone">Grade 1</option>
                                    <option value="gradetwo">Grade 11</option>
                                </select>
                          </div>
                           
                            <div class="input-group">
                            <label for="password">Password</label>
                            <input type="password" name="password" placeholder="Enter Password" value="" required/>
                            </div>
                            
                            <input type="submit" value="submit" />
                            <center><a href="stafflogin.jsp" ><input type="button" value="Login"/></a></center>
                        </form>
          
        </div>
    </div>     
  </div>
</body>
</html>