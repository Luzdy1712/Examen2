
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
     <title>Libros</title>
  </head>
  <body>
      <div class ="container">
           <h1>Libros</h1>
           <jsp:include page="META-INF/menu.jsp">
               <jsp:param name="opcion" value="libros"/>
           </jsp:include>
           <a href="LibroControlador?action=add" class="btn btn-primary btn-sm"><i class="fa-solid fa-plus"></i> Nuevo </a>
           <table class="table table-striped">
               <tr>
                   <th>Id</th>
                   <th>Titulo</th>
                   <th>Autor</th>
                   <th>Disponible</th>
                   <th>Categoria</th>
               </tr>
             <c:forEach var="item" items="${libros}">
                            
            <tr>
                <td>${item.id}</td>
                <td>${item.titulo}</td>
                <td>${item.autor}</td>
                <td>${item.disponible}</td>
                <td>${item.categoria}</td>
                <td><a href="LibroControlador?action=edit&id=${item.id}">Editar</a></td>
                <td><a href="LibroControlador?action=delete&id=${item.id}">Eliminar</a></td>
              
            </tr>
            </c:forEach>
           </table>
           
      </div>
   
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
  </body>
</html>
