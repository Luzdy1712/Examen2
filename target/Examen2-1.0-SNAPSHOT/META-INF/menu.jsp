<%    
String opcion = request.getParameter("opcion");
%>

<ul class="nav flex-column">
  <li class="nav-item">
    <a class="nav-link <%=(opcion.equals("libros")? "active" : "")%>" href="libros.jsp">Libros</a>
  </li>
  <li class="nav-item">
      <a class="nav-link<%=(opcion.equals("categorias")? "active" : "")%>" href="categorias.jsp">Categorias</a>
  </li>
 
</ul>
