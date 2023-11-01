<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
        <title>Categorias</title>
    </head>
    <body>
        <div class ="container">
            <h1>Formulario de Libros</h1>
            <jsp:include page="META-INF/menu.jsp">
                <jsp:param name="opcion" value="libros"/>
            </jsp:include>
            <br>
            <form action="LibroControlador" method="post">
                <input type=hidden" name="id" value="${libro.id}">
                 <div class="form-group">
                        <label for="" class="form-label">Titulo</label>
                        <input type="text" class="form-control" name="titulo"  value = "${libro.titulo}" placeholder="">
                         </div>
                    <div class="form-group">
                        <label for="" class="form-label">Autor</label>
                        <input type="text" class="form-control" name="autor"  value = "${libro.autor}" placeholder="">
                    </div>
                    <div class="form-group">
                        <label for="" class="form-label">Disponible</label>
                        <input type="text" class="form-control" name="disponible"  value = "${libro.disponible}" placeholder="">
                    </div>
                     <div class="form-group">
                        <label for="" class="form-label">Categoria</label>
                        <input type="text" class="form-control" name="categoria"  value = "${libro.categoria}" placeholder="">
                    </div>
                    <button type="submit" class="btn btn-primary">Enviar</button>
                </form>
        </div>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
    </body>
</html>