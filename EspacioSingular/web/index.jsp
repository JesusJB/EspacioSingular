<%-- 
    Document   : index
    Created on : 16 jun 2023, 18:17:49
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Espacio Singular</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" 
    integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">


    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Phudu:wght@500&display=swap" rel="stylesheet">

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Mukta&display=swap" rel="stylesheet">

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" 
    integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

    <link rel='stylesheet' type='text/css' media='screen' href='https://use.fontawesome.com/releases/v5.7.2/css/all.css'>

    <link rel="stylesheet" href="style.css">

    <link rel="icon" type="image/x-icon" href="./img/EspacioIMG.jpeg">
</head>
<body>
    <!--SIGUENOS-->
    <div class="alert alert-dark" role="alert" id="Insta">
        <p>Siguenos en <a href="https://www.instagram.com/espaciosingularsvq/">Instragram</a></p>
    </div>

    <!--NAVBAR-->
    <nav class="navbar navbar-expand-lg ">
        <div class="container-fluid">
        
                <!--Boton hamburguesa responsive-->
                <button class="navbar-toggler justify-content-end" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>



            <div class="collapse navbar-collapse justify-content-end" id="navbarSupportedContent">

                <ul class="nav justify-content-end">
                    <li class="nav-item">
                      <a class="nav-link active" aria-current="page" href="#">Inicio</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link linkDelNav" href="servicios.jsp">Nuestros Servicios</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link linkDelNav" href="personal.jsp">Personal</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link linkDelNav" href="login.jsp">Tienda</a>
                    </li>
                    
                </ul>


            </div>

        </div>
    </nav>

    <!--TITULO PRINCIPAL-->
    
    <section id="titulo">

        <div class="jumbotron">

            <div class="container-fluid">

                <img src="./img/Titulo.jpg" alt="Espacio">

            </div>

        </div>

    </section>

    <!--Opciones del Menu-->
    <section id="Menu">

        <div class="container">

            <img src="./img/Eslogan.png" alt="Eslogan" height="400px" width="400px">


            <div class="row">
                
                <div id="izquierda">
                    <a href="" class="btn  botonesMenu"> Alquiler de maquinas </a>
                    <a href="" class="btn  botonesMenu"> cursos Especializados </a>
                    <a href="" class="btn  botonesMenu"> Biblioteca de patrones </a>
                    <a href="" class="btn  botonesMenu"> Alquiler de Espacios para promover el arte </a>
                </div>
                
                <div id="derecha">
                    <a href="" class="btn  botonesMenu"> Merceria S.O.S </a>
                    <a href="" class="btn  botonesMenu"> Espacio Drag </a>
                    <a href="" class="btn  botonesMenu"> Tallerred de Labores </a>
                    <a href="" class="btn  botonesMenu"> Espacio Invitadas </a>
                </div>

            </div>

        </div>

    </section>

    <!--SedesHabilitadas-->
    <section id="Sedes">

        <div class="container">

          
            <h2>Nuestras sedes:</h2>
          
            <div id="Direccion1">
                <h4>Espacio Singular Vogue</h4>
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3170.0214143966086!2d-5.998554384355444!3d37.38932584201408!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xd126c104cee6c85%3A0xee0b3fc700c0d81f!2zQy4gTcOpbmRleiBOw7rDsWV6LCAxNSwgNDEwMDEgU2V2aWxsYQ!5e0!3m2!1ses!2ses!4v1676293465733!5m2!1ses!2ses"
                 width="500" height="350"
                 allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
            </div>

            <div id="Direccion2">
                <h4>Espacio Singular Ballroom</h4>
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3170.453799949124!2d-6.0000304843555785!3d37.37909904259734!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xd126c3deacb8bb5%3A0xa74aa3c61b88dd2c!2sC%2F%20Asunci%C3%B3n%2C%206%2C%2041011%20Sevilla!5e0!3m2!1ses!2ses!4v1676293784506!5m2!1ses!2ses"
                    width="500" height="350"
                 allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
            </div>

        </div>

    </section>


    <footer id="footer2">
        <div class="container-fluid">
            <p>Espacio Singular | Made with <i class="fa fa-heart"></i> by Jesus Jimenez</p>
            <a href=""><i class="fab fa-twitter iEnlace" ></i></a> 
            <a href="https://www.instagram.com/espaciosingularsvq/"><i class="fab fa-instagram iEnlace"></i></a> 
            <a href=""><i class="fab fa-pinterest-p iEnlace"></i></a>
        </div>
        
    </footer>
</body>
</html>