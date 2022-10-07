
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Airline Booking Form</title>
    <link rel="stylesheet" href="style.css">
     
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">

</head>
<style>
    body{
    
    background-size: cover;
    background-color: #e1eae8;
}


#form{
    background-color: rgb(0, 0, 0);
    height:500px;
    width:700px;
    margin:auto;
    padding:20px;
    opacity: 0.7;
}

#form h3{
    border-bottom: 2px solid #3399ff;
    width:210px;
    padding: 5px;
}
::placeholder{
    color:#fff
}
#input #input-group{
    width:300px;
    margin:5px;
    border-top: none;
    border-left: none;
    border-right: none;
    outline: none;
    background: transparent;
    color:#fff
}
#input2 #input-group{
    width:195px;
    margin:5px;
    border-top: none;
    border-left: none;
    border-right: none;
    outline: none;
    background: transparent;
    color:#fff
}
#input3 #input-group{
    margin-left: 50px;
}
#input4 #input-group{
    width:300px;
    margin:5px;
    border-top: none;
    border-left: none;
    border-right: none;
    outline: none;
    background: transparent;
    color:#fff
}
#input4 #input-group1{
    width:615px;
    margin:5px;
    border-top: none;
    border-left: none;
    border-right: none;
    outline: none;
    background: transparent;
    color:#fff
}
#input5 h3{
    border-bottom: 2px solid #3399ff;
    width:220px;
    padding: 5px;
}
#input6 #input-group{
    width:300px;
    margin:5px;
    border-top: none;
    border-left: none;
    border-right: none;
    outline: none;
    background: transparent;
    color:#fff
}
#input6 #input-group1{
    width:615px;
    margin:5px;
    border-top: none;
    border-left: none;
    border-right: none;
    outline: none;
    background: transparent;
    color:#fff
}

.back{
    background-image:url(booking.jpg);
    background-size: cover;
}
</style>
<body class="back">
    <br><br><br>
 <div class="wrapper">  
    <div class="container">
        
        
        <form class="form-group" action="bookingActionPage.jsp" method="">
            
            <center>
                <%
                String msg= request.getParameter("msg");

                     if("valid".equals(msg)){
                         %>         <h3 style="color: red">Successfully Updated</h3>
                <%
                     }

                     if("invalid".equals(msg)){
             %>        <h3 style="color: red">Some thing Went Wrong! Try Again !</h3>
             <%
             }
                %>
            </center>
            
            <h1 class="text-center"><b>Airline Booking Form</b></h1>

            
            
            <div id="form">
                <h3 class="text-white">Booking Details</h3>
                
               
                <div id="input">       
                    <input type="text" id="input-group" name="from" placeholder="From">
                    <input type="text" id="input-group" name="to" placeholder="To">
                    <input type="text" id="input-group" name="depdate" placeholder="Departure Date">
                    <input type="text" id="input-group" name="deptime" placeholder="Departure Time">
                
                    <select name="airline"  id="input-group" style="background: black;">
                    
                    <option value="">Preffered Airline</option>
                    <option value="">Srilankan Airline</option>
                    <option value="">AirIndia</option>
                    <option value="">SpaceJet</option>
                </select>
                    <select name="class" id="input-group" style="background: black;">
                    <option value="">Preffered Seating</option>
                    <option value="">Economy Class</option>
                    <option value="">Business Class</option>
                    <option value="">First Class</option>
                </select>
                </div>

                <div id="input2">
                    <td>
                      
                        <input name="adult" type="number" id="input-group" placeholder="Adult">
                        <input name="children" type="number" id="input-group" placeholder="Children(2-11years)">
                        <input name="kids" type="number" id="input-group" placeholder="infant(under 2years)">
                </div>

                <div id="input3">
                    <span id="input-group" class="text-primary">Select Your Fare</span> 
                    <input type="radio" id="input-group" name="r">
                    <label class="text-white" for="input-group">One Way</label>
                    <input type="radio" id="input-group" value="A" name="radio">
                    <label class="text-white" for="input-group">Round Trip</label>
                </div>

                <div id="input4">
                    <input name="rdate" type="text" id="input-group" placeholder="Return Date">
                    <input name="rtime" type="text" id="input-group" placeholder="Return time">
                    <input name="message" type="text" id="input-group1" placeholder="Any Message">
                </div>

                <div id="input5">
                    <h3 class="text-white">Client Details</h3>
                </div>

                <div id="input6">
                    <input name="fname" type="text" id="input-group" placeholder="Full Nmae">
                    <input name="pnum" type="number" id="input-group" placeholder="Phone Number">
                    <input name="email" type="email" id="input-group1" placeholder="Email">
                </div>
                <button type="submit" class="btn btn-warning text-white">Submit Form</button>
                <button type="reset" class="btn btn-primary">Clear Form</button>
            </div>

        </form>
        
    

    </div>
 </div>
</body>
</html>
