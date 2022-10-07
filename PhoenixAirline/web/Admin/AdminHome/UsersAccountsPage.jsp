
<%@page import="java.sql.ResultSet"%>
<%@page import="Servelt.ConnectionProvider"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%


            Connection con=ConnectionProvider.getCon();
            Statement st = con.createStatement();
            
           // con.prepareStatement("SELECT flight_id,flight_name,mpilot_name,duration FROM flight WHERE duration=?");
            
            
              // 4.data retrieveing
            String qry="SELECT * FROM customer ";
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
            <li class="item"><a><i class="fas fa-bell"></i>Add Flight</a></li>
            <li class="item"><a ><i class="fas fa-home"></i>Delete Flight Data</a></li>
            <li class="item"><a><i class="fas fa-chart-line"></i>Update Flight Data</a></li>
            <li class="item" style="background-color: #10707f"><a><i class="fas fa-bell"></i>User's Accounts</a></li>
            <li class="item"><a><i class="fas fa-chart-line"></i>Ticket Information</a></li>
            <li class="item"><a><i class="fas fa-bell"></i>Ticket management</a></li>
        </div>
    </ul>

    <br>

    <h1 style="text-transform: uppercase;" class="h">User Account Details...</h1>

    <br>

    <div class="container">


     <table border="1" id="datatable">
        <tbody>
          <tr>
            <th>uname</th>
            <th>email</th>
            <th>password</th>
            <th>mobile</th>
            <th>address</th>
            <th>city</th>
            <th>state</th>
            <th>country</th>
          </tr>
        
        <%
               while(rs.next()){
                 // out.println("\n"+rs.getString(2)+"\n");
                 // out.println("\n"+rs.(4)+"\n");
            %>
        
          <tr>
            <td><%=rs.getString("uname") %></td>
            <td><%=rs.getString("email") %></td>
            <td><%=rs.getString("password") %></td>
            <td><%=rs.getString("mobile") %></td>
            <td><%=rs.getString("address") %></td>
            <td><%=rs.getString("city") %></td>
            <td><%=rs.getString("state") %></td>
            <td><%=rs.getString("country") %></td>
          </tr>
          
         
           
          </tr>
        </tbody>
        <% 
            }
            %>
            
      </table>
            
        


       

    </div>
</body>

</html>
