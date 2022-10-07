<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" type="image/x-icon" href="../Home Page/assets/logo1.png" />
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.2.1/dist/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.2.1/dist/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>
<style>
body {
  font-family: Arial;
  font-size: 17px;
  padding: 8px;
  background-color: #d7f7ff;
}
.wrapper{
  background-color: #fff;
  width: 600px;
  padding: 25px;
  margin: 25px auto 0;
  box-shadow: 0px 0px 30px rgba(0, 0, 0, 0.5);
  border-radius: 20px;
}

.wrapper h2{
  background-color: #fcfcfc;
  color: #21d3a3;
  font-size: 24px;
  padding: 10px;
  margin-bottom: 8px;
  text-align: center;
}
* {
  box-sizing: border-box;
}

.row {
  display: -ms-flexbox; /* IE10 */
  display: flex;
  -ms-flex-wrap: wrap; /* IE10 */
  flex-wrap: wrap;
  margin: 0 -10px;
}



.col-50 {
  -ms-flex: 50%; /* IE10 */
  flex: 10%;
}
.col-50 h3{
 
  color: #21d342;
}

.col-75 {
  -ms-flex: 75%; /* IE10 */
  flex: 75%;
}


.col-50,
.col-75 {
  padding: 0 16px;
}

.container {
  background-color: #f2f2f2;
  padding: 5px 20px 15px 20px;
  border: 1px solid lightgrey;
  border-radius: 3px;
}

input[type=text] {
  width: 100%;
  margin-bottom: 20px;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 3px;
}
#input3 #input-group{
    margin-left: -5px;
   
}
.web{
    text-align:right;
}

label {
  margin-bottom: 10px;
  display: block;
}

.icon-container {
  margin-bottom: 20px;
  padding: 7px 0;
  font-size: 24px;
}

.btn {
  background-color: #595c5b43;
  color: #21d336;
  padding: 12px;
  margin: 10px 0;
  border: none;
  width: 100%;
  border-radius: 3px;
  cursor: pointer;
  font-size: 20px;
  
}
.btn1{
    background-color: #595c5b43;
  color: #24d321;
  padding: 12px;
  margin: 10px 0;
  border: none;
  width: 50%;
  border-radius: 3px;
  cursor: pointer;
  font-size: 20px;
}


.btn:hover {
  background-color: #45a049;
  margin-bottom: 10px;
}

a {
  color: #2196F3;
}

hr {
  border: 1px solid lightgrey;
}

span.price {
  float: right;
  color: grey;
}

/* Responsive layout - when the screen is less than 800px wide, make the two columns stack on top of each other instead of next to each other (also change the direction - make the "cart" column go on top) */
@media (max-width: 800px) {
  .row {
    flex-direction: column-reverse;
  }
  
}
</style>
</head>
<body style="background-image: url(../Insurance/img/top-banner.jpg)">
<div class="wrapper">
 <h2>Vaccination Details</h2>
 <div class="row">
   <div class="col-75">
     <div class="container">
        <div class="row">
          <div class="col-50">
              <form action="vaccinationActionPage.jsp" method="">
            <h3>Covid-19 Pre-Vaccination Checklist </h3>
            
                <tbody>
                    <tr>
                        <td>First Name</td>
                        <td><input type="text" id="fname" name="fname" placeholder="Thevindu Ransara"></td>
                    </tr>
                     <tr>
                        <td>Last Name</td>
                        <td><input type="text" id="email" name="lname" placeholder="Rathnayaka"></td>
                    </tr>
                    <tr>
                        <td>Address</td>
                        <td> <input type="text" id="adr" name="address" placeholder="199 W. 18th Street"></td>
                    </tr>
                    <div class="row">
                    <div class="col-50">
                     <tr>
                        <td>Date of Birth</td>
                        <td> <input type="text" id="DoF" name="month" placeholder="Month"></td>
                    </tr> 
                    </div>
                        <div class="col-50">
                            <td>Day</td>
                            <td><input type="text" id="zip" name="day" placeholder="Day"> </td> 
                        </div> 
                        <div class="col-50">
                           <td>Year</td>
                           <td><input type="text" id="zip" name="year" placeholder="Year"> </td> 
                        </div> 
                </tbody>
            </table>

                <h2>vaccination Determination Questions</h2>
             
              <div id="input3">
                <span id="input-group" class="text-primary">Have you ever received a dose of COVID-19 vaccine?</span> 
               <div class="web">
                   <select name="option">
              <option value="yes">Yes</option>
              <option value="no">No</option>
              <option value="dont">I Don't Know</option>
                
            </div>
              </select>
              </div>
            </div>
          </div>
          <input type="checkbox" checked="checked" name="check"> Shipping address same as billing
          <input type="submit" value="Continue to checkout" class="btn">
          
          <%
                            String msg= request.getParameter("msg");

                                    if("valid".equals(msg)){
                                        %>         <h1 style="color: crimson">**Successfully Updated**</h1>
                                                   <br>
                                        <%
                                    }

                                    if("invalid".equals(msg)){
                            %>        <h1 style="color: crimson">Some thing Went Wrong! Try Again!!!</h1>
                                       <br>
                            <%
                            }
                        %> 
          
      </form>
    </div>
  </div>
</div> 
</div>

</body>
</html>