<%@page import="Servelt.ConnectionProvider" %>
<%@page import="java.sql.*" %>

<%
String name = request.getParameter("check");
String from = request.getParameter("from");
String to = request.getParameter("to");
String depart = request.getParameter("depart");
String ret = request.getParameter("return");
String adult = request.getParameter("adult");
String children = request.getParameter("children");
String classtype = request.getParameter("class");


            Connection con=ConnectionProvider.getCon();
            Statement st = con.createStatement();
            
           // con.prepareStatement("SELECT flight_id,flight_name,mpilot_name,duration FROM flight WHERE duration=?");
            
            
              // 4.data retrieveing
            String qry="SELECT * FROM flight WHERE flight_name='"+from+"' and mpilot_name='"+to+"' and t_depart='"+depart+"' and t_depart='"+ret+"' and   class='"+classtype+"' ";
            //where flyingfrom="+from+" and flyingto="+to+" and class="+classtype+" 
                  
            ResultSet rs = st.executeQuery(qry);
%>



<!DOCTYPE html>

<html>

    <head>
<meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Creative - Start Bootstrap Theme</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="https://pbs.twimg.com/profile_images/681142196406501376/9rkUVlxM_400x400.jpg" />
        <!-- Bootstrap Icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Google fonts-->
        <link href="https://fonts.googleapis.com/css?family=Merriweather+Sans:400,700" rel="stylesheet" />
        <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+Mono:wght@200;700&display=swap" rel="stylesheet">
       
<link href="https://fonts.googleapis.com/css2?family=Alkalami&family=Dancing+Script&family=Noto+Sans+Mono:wght@700&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic" rel="stylesheet" type="text/css" />
        <!-- SimpleLightbox plugin CSS-->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/SimpleLightbox/2.1.0/simpleLightbox.min.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/styles.css" rel="stylesheet" />
        <link rel="stylesheet" href="css/main.css">

        <style>
           div.material-table {
  padding: 0;
}

div.material-table .hiddensearch {
  padding: 0 14px 0 24px;
  border-bottom: solid 1px #DDDDDD;
  display: none;
}

div.material-table .hiddensearch input {
  margin: 0;
  border: transparent 0 !important;
  height: 48px;
  color: rgba(0, 0, 0, .84);
}

div.material-table .hiddensearch input:active {
  border: transparent 0 !important;
}

div.material-table table {
  table-layout: fixed;
}

div.material-table .table-header {
  height: 64px;
  padding-left: 24px;
  padding-right: 14px;
  -webkit-align-items: center;
  -ms-flex-align: center;
  align-items: center;
  display: flex;
  -webkit-display: flex;
  border-bottom: solid 1px #DDDDDD;
}

div.material-table .table-header .actions {
  display: -webkit-flex;
  margin-left: auto;
}

div.material-table .table-header .btn-flat {
    min-width: 36px;
    padding: 0 8px;
}

div.material-table .table-header input {
  margin: 0;
  height: auto;
}

div.material-table .table-header i {
  color: rgba(0, 0, 0, 0.54);
  font-size: 24px;
}

div.material-table .table-footer {
  height: 56px;
  padding-left: 24px;
  padding-right: 14px;
  display: -webkit-flex;
  display: flex;
  -webkit-flex-direction: row;
  flex-direction: row;
  -webkit-justify-content: flex-end;
  justify-content: flex-end;
  -webkit-align-items: center;
  align-items: center;
  font-size: 12px !important;
  color: rgba(0, 0, 0, 0.54);
}

div.material-table .table-footer .dataTables_length {
  display: -webkit-flex;
  display: flex;
}

div.material-table .table-footer label {
  font-size: 12px;
  color: rgba(0, 0, 0, 0.54);
  display: -webkit-flex;
  display: flex;
  -webkit-flex-direction: row;
  /* works with row or column */
  
  flex-direction: row;
  -webkit-align-items: center;
  align-items: center;
  -webkit-justify-content: center;
  justify-content: center;
}

div.material-table .table-footer .select-wrapper {
  display: -webkit-flex;
  display: flex;
  -webkit-flex-direction: row;
  /* works with row or column */
  
  
  -webkit-align-items: center;
  align-items: center;
  -webkit-justify-content: center;
  justify-content: center;
}

div.material-table .table-footer .dataTables_info,
div.material-table .table-footer .dataTables_length {
  margin-right: 32px;
}

div.material-table .table-footer .material-pagination {
  display: flex;
  -webkit-display: flex;
  margin: 0;
}

div.material-table .table-footer .material-pagination li:first-child {
  margin-right: 24px;
}

div.material-table .table-footer .material-pagination li a {
  color: rgba(0, 0, 0, 0.54);
}

div.material-table .table-footer .select-wrapper input.select-dropdown {
  margin: 0;
  border-bottom: none;
  height: auto;
  line-height: normal;
  font-size: 12px;
  width: 40px;
  text-align: right;
}

div.material-table .table-footer select {
  background-color: transparent;
  width: auto;
  padding: 0;
  border: 0;
  border-radius: 0;
  height: auto;
  margin-left: 20px;
}

div.material-table .table-title {
  font-size: 20px;
  color: #000;
}

div.material-table table tr td {
  padding: 0 0 0 56px;
  height: 48px;
  font-size: 13px;
  color: rgba(0, 0, 0, 0.87);
  border-bottom: solid 1px #DDDDDD;
  white-space: nowrap;
  overflow: hidden;
  text-overflow: ellipsis;
}

div.material-table table tr td a {
  color: inherit;
}

div.material-table table tr td a i {
  font-size: 18px;
  color: rgba(0, 0, 0, 0.54);
}

div.material-table table tr {
  font-size: 12px;
}

div.material-table table th {
  font-size: 12px;
  font-weight: 500;
  color: #757575;
  cursor: pointer;
  white-space: nowrap;
  padding: 0;
  height: 56px;
  padding-left: 56px;
  vertical-align: middle;
  outline: none !important;
}

div.material-table table th.sorting_asc,
div.material-table table th.sorting_desc {
  color: rgba(0, 0, 0, 0.87);
}

div.material-table table th.sorting:after,
div.material-table table th.sorting_asc:after,
div.material-table table th.sorting_desc:after {
  font-family: 'Material Icons';
  font-weight: normal;
  font-style: normal;
  font-size: 16px;
  line-height: 1;
  letter-spacing: normal;
  text-transform: none;
  display: inline-block;
  word-wrap: normal;
  -webkit-font-feature-settings: 'liga';
  -webkit-font-smoothing: antialiased;
  content: "arrow_back";
  -webkit-transform: rotate(90deg);
  display: none;
  vertical-align: middle;
}

div.material-table table th.sorting:hover:after,
div.material-table table th.sorting_asc:after,
div.material-table table th.sorting_desc:after {
  display: inline-block;
}

div.material-table table th.sorting_desc:after {
  content: "arrow_forward";
}

div.material-table table tbody tr:hover {
  background-color: #EEE;
}

div.material-table table th:first-child,
div.material-table table td:first-child {
  padding: 0 0 0 24px;
}

div.material-table table th:last-child,
div.material-table table td:last-child {
  padding: 0 14px 0 0;
}

  /*  */
  .font1{
/*        font-family: 'Noto Sans Mono', monospace;*/
/*font-family: 'Alkalami', serif;*/
font-family: 'Dancing Script', cursive;

            font-size: 60px;
            font-weight: 600;
            color: #1f78bd;
            background: -webkit-linear-gradient(#eee, #333);
  -webkit-background-clip: text;
  -webkit-text-fill-color: transparent;
    }
    .font2{
        font-family: 'Dancing Script', cursive;
            font-size: 50px;
            font-weight: 600;
            color: #ffffff;
    }

    .big::first-letter {
    font-size: 200%;
    color: #000000;
    }

    .big2::first-letter {
    font-size: 150%;
    color: #000000;
    }

    .font3{
        font-family: 'Noto Sans Mono', monospace;
            font-size: 50px;
            font-weight: 600;
            color: #ffffff;
    }

    .big3::first-letter {
    font-size: 200%;
    color: #5bc8db;
    }

        </style>
        
    </head>

    <body>

        <nav class="navbar navbar-expand-lg navbar-light fixed-top py-3" id="mainNav">
            <div class="container px-4 px-lg-5">
                <img src="https://pbs.twimg.com/profile_images/681142196406501376/9rkUVlxM_400x400.jpg" style="height:50px; width: 100px;"/>
                <a class="navbar-brand" href="#page-top">Phoenix Airline</a>
            
                <button class="navbar-toggler navbar-toggler-right" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ms-auto my-2 my-lg-0">
                        <li class="nav-item"><a class="nav-link" href="#home">Home</a></li>
                        <li class="nav-item"><a class="nav-link" href="#services">Services</a></li>
                        <li class="nav-item"><a class="nav-link" href="#portfolio">Portfolio</a></li>
                        <li class="nav-item"><a class="nav-link" href="#contact">Cancellation</a></li>
                        <li class="nav-item"><a class="nav-link" href="#portfolio">About</a></li>
                        <li class="nav-item"><a class="nav-link" href="#contact"> Contact</a></li>
                        
                    </ul>
                </div>
            </div>
        </nav>
        
        
        <!--First section-->
           <div style="background-image: url(assets/img/flight.jpg); background-size: cover; height:480px; padding-top:80px;">
           
            <center> <h1 style="margin-top: 50px;" class="font1">SEARCH RESULT</h1></center>
  </div>
</body>
        
        
        
        <div class="row">
  <div id="admin" class="col s12 container" style="margin: 20px">
    <div class="card material-table">
      <div class="table-header">
        <span class="table-title">RESULTS</span>
        <div class="actions">
          <a href="#add_users" class="modal-trigger waves-effect btn-flat nopadding"><i class="material-icons">person_add</i></a>
          <a href="#" class="search-toggle waves-effect btn-flat nopadding"><i class="material-icons">search</i></a>
        </div>
      </div>
      <table id="datatable">
        <thead>
          <tr>
            <th>flight Name</th>
            <th>t_depart</th>
            <th>t_return</th>
            <th>lowest_budget</th>
            <th>takeoff</th>
            <th>class</th>
          </tr>
        </thead>
        <%
               while(rs.next()){
                 // out.println("\n"+rs.getString(2)+"\n");
                 // out.println("\n"+rs.(4)+"\n");
            %>
        <tbody>
          <tr>
            <td><%=rs.getString("flight_name") %></td>
            <td><%=rs.getString("t_depart") %></td>
            <td><%=rs.getString("t_return") %></td>
            <td><%=rs.getString("lowest_budget") %></td>
            <td><%=rs.getString("takeoff_time") %></td>
            <td><%=rs.getString("class") %></td>
          </tr>
          
         
           
          </tr>
        </tbody>
        <% 
            }
            %>
            
      </table>
    </div>
  </div>
</div>
        
        
        
        
        
        
        
        
        
        
         <!-- Footer-->
        <footer class="footer-section">
            <div class="container">
                <div class="footer-cta pt-5 pb-5">
                    <div class="row">
                        <div class="col-xl-4 col-md-4 mb-30">
                            <div class="single-cta">
                                <i class="fas fa-map-marker-alt"></i>
                                <div class="cta-text">
                                    <h4>Find us</h4>
                                    <span>NSBM Green University</span>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-4 col-md-4 mb-30">
                            <div class="single-cta">
                                <i class="fas fa-phone"></i>
                                <div class="cta-text">
                                    <h4>Call us</h4>
                                    <span>076 7248556 </span>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-4 col-md-4 mb-30">
                            <div class="single-cta">
                                <i class="far fa-envelope-open"></i>
                                <div class="cta-text">
                                    <h4>Mail us</h4>
                                    <span>test@test.com</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="footer-content pt-5 pb-5">
                    <div class="row">
                        <div class="col-xl-4 col-lg-4 mb-50">
                            <div class="footer-widget">
                                <div class="footer-logo">
                                    <a href="index.html"><img src="https://creazilla-store.fra1.digitaloceanspaces.com/cliparts/16934/pig-clipart-xl.png" class="img-fluid" alt="logo"></a>
                                </div>
                                <div class="footer-text">
                                    <p>Shaka boom</p>
                                </div>
                                <div class="footer-social-icon">
                                    <span>Follow us</span>
                                    <a href="#"><i class="fab fa-facebook-f facebook-bg"></i></a>
                                    <a href="#"><i class="fab fa-twitter twitter-bg"></i></a>
                                    <a href="#"><i class="fab fa-google-plus-g google-bg"></i></a>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-4 col-lg-4 col-md-6 mb-30">
                            <div class="footer-widget">
                                <div class="footer-widget-heading">
                                    <h3>Useful Links</h3>
                                </div>
                                <ul>
                                    <li><a href="#">Home</a></li>
                                    <li><a href="#">about</a></li>
                                    <li><a href="#">services</a></li>
                                    <li><a href="#">portfolio</a></li>
                                    <li><a href="#">Contact</a></li>
                                    <li><a href="#">About us</a></li>
                                    <li><a href="#">Our Services</a></li>
                                    <li><a href="#">Expert Team</a></li>
                                    <li><a href="#">Contact us</a></li>
                                    <li><a href="#">Latest News</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-xl-4 col-lg-4 col-md-6 mb-50">
                            <div class="footer-widget">
                                <div class="footer-widget-heading">
                                    <h3>Subscribe</h3>
                                </div>
                                <div class="footer-text mb-25">
                                    <p>Don’t miss to subscribe to our new feeds, kindly fill the form below.</p>
                                </div>
                                <div class="subscribe-form">
                                    <form action="#">
                                        <input type="text" placeholder="Email Address">
                                        <button><i class="fab fa-telegram-plane"></i></button>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="copyright-area">
                <div class="container">
                    <div class="row">
                        <div class="col-xl-6 col-lg-6 text-center text-lg-left">
                            <div class="copyright-text">
                                <p>Copyright &copy; 2022, All Right Reserved <a href="#top">DEA Project</a></p>
                            </div>
                        </div>
                        <div class="col-xl-6 col-lg-6 d-none d-lg-block text-right">
                            <div class="footer-menu">
                                <ul>
                                    <li><a href="#">Home</a></li>
                                    <li><a href="#">Terms</a></li>
                                    <li><a href="#">Privacy</a></li>
                                    <li><a href="#">Policy</a></li>
                                    <li><a href="#">Contact</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </footer>
        <!--END Footer-->
        
        
        
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- SimpleLightbox plugin JS-->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/SimpleLightbox/2.1.0/simpleLightbox.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
        <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
        <!-- * *                               SB Forms JS                               * *-->
        <!-- * * Activate your form at https://startbootstrap.com/solution/contact-forms * *-->
        <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
        <script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
    

    </body>

</html>






