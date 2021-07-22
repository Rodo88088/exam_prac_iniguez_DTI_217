<%-- 
    Document   : alta
    Created on : 21/07/2021, 07:19:34 AM
    Author     : rodo8
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page Alta de Pacientes</title>
        <!-----------------------------BOOTSTRAP----------------------------->
<!--Icono-->
<link rel="Icon" type="img/png" href="img/logoicono.png">
<!-- Google font -->
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,500,700" rel="stylesheet">
<!-- Bootstrap -->
<link type="text/css" rel="stylesheet" href="css/bootstrap.min.css"/>
<!-- Slick -->
<link type="text/css" rel="stylesheet" href="css/slick.css"/>
<link type="text/css" rel="stylesheet" href="css/slick-theme.css"/>
<!-- nouislider -->
<link type="text/css" rel="stylesheet" href="css/nouislider.min.css"/>
<!-- Font Awesome Icon -->
<link rel="stylesheet" href="css/font-awesome.min.css">
<!-- Custom stlylesheet -->
<link type="text/css" rel="stylesheet" href="css/style.css"/>
<!--Ventanas emergentes-->
<link rel="stylesheet" type="text/css" href="css/ventanas.css">
<link rel="stylesheet" href="style.css">
<!-- Bootstrap core CSS -->
<link href="css/bootstrap.min.css" rel="stylesheet" media="screen">
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/bootstrap-responsive.min.css" rel="stylesheet" media="screen">
<link href="css/ie10-viewport-bug-workaround.css" rel="stylesheet">
<link ref="stylesheet" type="text/css" href="css/bootstrap.css">
<link href="css/navbar.css" rel="stylesheet">
<link href="css/main.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="css/geolocation.css">
<link type="text/css" rel="stylesheet" href="demobar_files/bootstrap.css">
<script type="text/javascript" src="demobar_files/jquery-latest.min.js"></script>
<script type="text/javascript" src="demobar_files/jquery.min.js"></script>
<script type="text/javascript" src="demobar_files/bootstrap.js"></script>
<script src="js/ie-emulation-modes-warning.js"> </script>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="js/jquery-1.8.0.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<!-----------------------------/BOOTSTRAP----------------------------->
    </head>
    <body style="background-color: #006299">
        <center><h1>Hospital Privado Iñiguez S.A de C.V</h1></center>
        <hr>
        <!--Librerias-->
        <%@page import = "java.sql.*"%>
        <%@page import = "conexionbd.Conexion"%> 
        
        <!--/Librerias-->
        <!--Llamada a la conexion y variables, instrccion SQL para insertar-->
        <%
            Conexion conexion = new Conexion("jdbc:mysql://localhost/bddtiiniguez","root", "");
            String curp = request.getParameter("curp");
            int dias = Integer.parseInt(request.getParameter("diashp"));
            int cobro = Integer.parseInt(request.getParameter("cobro"));
            
            
            String altaQuery="INSERT INTO tpacientes VALUES ('"+curp+"','"+dias+"','"+cobro+"')";
            
            int c = conexion.ejecutaSentencia(altaQuery);
            if(c==1){//inicia if
        %>
        <div class="container">
            <div class="jumbotron">
                <center>
                    <h2>Confirma Alta de Registro Paciente </h2>
                    <img src="img/hospital.jpg" class="img img-responsive" alt="logo"/>
                    <hr>
                    <div class="thumbnail">
                        <h2>Se agrego de forma exitosa un nuevo paciente</h>
                        <hr>
                        <h3>CURP : <%= curp%></h3>
                        <h3>Dias de hospitalizacion : <%= dias%></h3>
                        <h3>Cobro por dia : <%= cobro%></h3>
                        <h3>Costo total de hospitalizacion :</h3>
                        <% float ventaTotal=dias*cobro;%>
                        <h3><%=ventaTotal%></h3>
                    </div>
                    <h2>Fecha y Hora :<%=new java.util.Date()%></h2>
                    <a href="alta.html"><h3>Regresar a menu principal</h3>
                </center>
                <%
                }//Termina if
                %>
            </div>
            
        </div>
        <!--/Llamada a la conexion-->
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/slick.min.js"></script>
<script src="js/nouislider.min.js"></script>
<script src="js/jquery.zoom.min.js"></script>
<script src="js/main.js"></script>
<script type="js/jquery-1.8.0.min"></script>        
<script src="js/bootstrap.js"></script>
<script src="js/bootstrap.min.js"></script>
    </body>
</html>
