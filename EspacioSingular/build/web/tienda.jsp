<%-- 
    Document   : tienda
    Created on : 20 jun 2023, 13:24:07
    Author     : USER
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tienda</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Phudu:wght@500&display=swap" rel="stylesheet">

        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Mukta&display=swap" rel="stylesheet">

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

        <link rel='stylesheet' type='text/css' media='screen' href='https://use.fontawesome.com/releases/v5.7.2/css/all.css'>

        <link rel="stylesheet" href="style.css">

        <link rel="icon" type="image/x-icon" href="./img/EspacioIMG.jpeg">
    </head>
    <body>
        
        <!--Header para la tienda-->
        <header id="headerProductos">
          <h2>TIENDA</h2>
        </header>
        
        <!--Navbar-->
        <nav class="navbar navbar-expand-lg">
          <div class="container-fluid">

            <!--Boton hamburguesa responsive-->
            <button class="navbar-toggler justify-content-end" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse justify-content-end" id="navbarSupportedContent">
              <ul class="nav justify-content-end">
                  
                <li class="nav-item">
                  <a class="nav-link active" aria-current="page" href="index.html">Inicio</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link linkDelNav" href="servicios.html">Nuestros Servicios</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link linkDelNav" href="personal.html">Personal</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link linkDelNav" href="editarPerfil.php">Editar Perfil</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link active" aria-current="page" href="#" data-bs-toggle="modal" data-bs-target="#Cesta"><i class="fas fa-shopping-cart"></i></a>
                </li>
                <li class="nav-item">
                  <a class="nav-link active" aria-current="page" href="seguimientoP.php"><i class="fas fa-folder"></i></a>
                </li>

              </ul>
            </div>
          </div>
        </nav>
        
        <!--Div donde se situan todos los productos-->
        <div id="producto">

            <c:forEach var="producto" items="${listaProducto}">

                <div class="DivProducto">
                    <div class="ImgProducto">
                        <img src='${producto.getImagen()}'   alt='...'/>
                    </div>
                    <div class="CuerpoProducto">

                         <h3>${producto.getNombre()}</h3>
                         <p> ${producto.getDescripcion()} </p>
                         <p> ${producto.getPrecio()}€ </p>
                         
                         
                    </div>
                     <div class="DerechaProducto">
                         <p class='card-text' id='STOCK'>Stock restante: ${producto.getStock()}</p>

                         <form action='AgregarCesta' method='POST'>
                            <label for='cantidad${producto.getNombre()}'>Cuantos quieres comprar: </label>
                            <input type='number' min='0' max='${producto.getStock()}' name='cantidad${producto.getNombre()}' id='cantidad${producto.getNombre()}' />

                            <!-- COmprobamos que el stock sea mayor de 0 para poder añadir a la cesta, si es menor que 0 no se puede añadir -->
                             <c:if test="${producto.getStock() <= 0}">
                                 <button type='submit' disabled class='btn w-100'>Añadir a la cesta</button>
                             </c:if>
                             <c:if test="${producto.getStock() >= 0}">
                                 <button type='submit' class='btn w-100'>Añadir a la cesta</button>
                             </c:if>
                        </form>
                     </div>
                </div>

            </c:forEach>

        </div>
        
         <!--Footer adecuado para ir al final de la página-->
        <footer id="footer2">
          <div class="container-fluid">
            <p>Espacio Singular | Made with <i class="fa fa-heart"></i> by Jesus Jimenez</p>
            <a href=""><i class="fab fa-twitter iEnlace"></i></a>
            <a href="https://www.instagram.com/espaciosingularsvq/"><i class="fab fa-instagram iEnlace"></i></a>
            <a href=""><i class="fab fa-pinterest-p iEnlace"></i></a>
          </div>
        </footer>
         
         <!--Ventana modal para la cesta-->
      <div class="modal fade" id="Cesta" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        
        <div class="modal-dialog">

          <div class="modal-content">

            <div class="modal-header">
                <h2>Cesta</h2>
                <hr>
            </div>

            <div class="modal-body">
               
                <table class="table">
                    <thead>
                        <tr>
                            <th scope="col">Producto</th>
                            <th scope="col">Cantidad</th>
                            <th scope="col">Total</th>
                        </tr>
                    </thead>
                    
                    <tbody id="items">
                        
                    </tbody>
                    
                    <tfoot>
                        
                    </tfoot>
                </table>                
            </div>
          </div>
        </div>
          
    </body>
</html>
