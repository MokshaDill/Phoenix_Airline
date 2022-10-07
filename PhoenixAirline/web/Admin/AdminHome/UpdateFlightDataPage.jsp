<%@page import="java.sql.ResultSet"%>
<%@page import="Servelt.ConnectionProvider"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
            String duration = request.getParameter("duration");
            String flight_id = request.getParameter("duration");

            Connection con=ConnectionProvider.getCon();
            Statement st = con.createStatement();
            
           // con.prepareStatement("SELECT flight_id,flight_name,mpilot_name,duration FROM flight WHERE duration=?");
            
            
              // 4.data retrieveing
            String qry="UPDATE flight SET duration= "+duration+" WHERE flight_id = "+flight_id+"";
            
            //where flyingfrom="+from+" and flyingto="+to+" and class="+classtype+" 
                  
            ResultSet rs = st.executeQuery(qry);
%>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="css/style.css">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/css/all.min.css" rel="stylesheet">

    <style>

    </style>

</head>

<body>
    <ul class="menu">

        <h1><img src="https://www.shareicon.net/data/256x256/2016/04/14/492851_admin_256x256.png"
                alt="" width="40" style="border-radius: 10px;margin-left: 8px;margin-top: 1rem;"> </h1>
        <b class="b">ADMIN</b>
        <i class="i">Space</i>
        <hr>
        <div class="text">
            <li class="item"><a ><i class="fas fa-home"></i>Home</a></li>
            <li class="item"><a><i class="fas fa-chart-line"></i>Staff Approvel</a></li>
            <li class="item" style="background-color: #10707f"><a><i class="fas fa-bell"></i>Add Flight</a></li>
            <li class="item"><a ><i class="fas fa-home"></i>Delete Flight Data</a></li>
            <li class="item"><a><i class="fas fa-chart-line"></i>Update Flight Data</a></li>
            <li class="item"><a><i class="fas fa-bell"></i>Delete Flight data</a></li>
            <li class="item"><a ><i class="fas fa-home"></i>User's Accounts</a></li>
            <li class="item"><a><i class="fas fa-chart-line"></i>Ticket Information</a></li>
            <li class="item"><a><i class="fas fa-bell"></i>Ticket management</a></li>
        </div>
    </ul>

    <br>

    <h1 style="text-transform: uppercase;" class="h">ADD FLIGHT DETAILS</h1>

    <br>

    <div class="container">


        


        <fieldset class="info">

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
                
                <form action="addFlightActionPage.jsp" method="">
                <table border="1">
                    
                    <tbody>
                        <tr>
                            <td>Flight ID</td>
                            <td><input type="text" style="color: black" name="flight_id" value="" required=""/></td>
                        </tr>
                        <tr>
                            <td>Flight Name</td>
                            <td><input type="text" style="color: black" name="flight_name" value="" /></td>
                        </tr>
                        <tr>
                            <td>Main Pilot Name</td>
                            <td><input type="text" style="color: black" name="mpilot_name" value="" /></td>
                        </tr>
                        <tr>
                            <td>Seate</td>
                            <td><input type="text" style="color: black" name="seate" value="" /></td>
                        </tr>
                        <tr>
                            <td>Depart</td>
                            <td><input type="text" style="color: black" name="t_depart" value="" /></td>
                        </tr>
                        <tr>
                            <td>Return</td>
                            <td><input type="text" style="color: black" name="t_return" value="" /></td>
                        </tr>
                        <tr>
                            <td>Duration</td>
                            <td><input type="text" style="color: black" name="duration" value="" /></td>
                        </tr>
                        <tr>
                            <td>Lowest Budget</td>
                            <td><input type="text" style="color: black" name="lowest_budget" value="" /></td>
                        </tr>
                        <tr>
                            <td>Takeoff Time</td>
                            <td><input type="text" style="color: black" name="takeoff_time" value="" /></td>
                        </tr>
                        <tr>
                            <td>Class Type</td>
                            <td><input type="text" style="color: black" name="class1" value="" /></td>
                        </tr>
                        <tr>
                            <td><input style="color: black" type="reset" value="Clear" /></td>
                            <td><input style="color: black" type="submit" value="ADD" /></td>
                        </tr>
                    </tbody>
                </table>

            </form>
        </fieldset>

                
                <fieldset class="info">
                    <table border="1" id="datatable">
        <tbody>
          <tr>
            <th>fID</th>
            <th>fname</th>
            <th>pilot</th>
            <th>seate</th>
            <th>depart</th>
            <th>return</th>
            <th>duration</th>
            <th>L_Budget</th>
            <th>T_Time</th>
            <th>class</th>
          </tr>
        
        <%
               while(rs.next()){
                 // out.println("\n"+rs.getString(2)+"\n");
                 // out.println("\n"+rs.(4)+"\n");
            %>
        
          <tr>
            <td><%=rs.getString("flight_id") %></td>
            <td><%=rs.getString("flight_name") %></td>
            <td><%=rs.getString("mpilot_name") %></td>
            <td><%=rs.getString("seate") %></td>
            <td><%=rs.getString("t_depart") %></td>
            <td><%=rs.getString("t_return") %></td>
            <td><%=rs.getString("duration") %></td>
            <td><%=rs.getString("lowest_budget") %></td>
            <td><%=rs.getString("takeoff_time") %></td>
            <td><%=rs.getString("class1") %></td>
          </tr>
          
         
           
          </tr>
        </tbody>
        <% 
            }
            %>
            
      </table>
                    
                 </fieldset>

        

    </div>
</body>

</html>