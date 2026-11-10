<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" session="false" %>
<%@ page import="edu.web.lab05.Movie" %>
<table border="1" cellpadding="6">
    <thead><tr><th>Название</th><th>Режиссёр</th></tr></thead>
    <tbody>
        <% for (Object item : (Iterable<?>) request.getAttribute("movies")) {
               Movie movie = (Movie) item; %>
        <tr><td><%= movie.title() %></td><td><%= movie.director() %></td></tr>
        <% } %>
    </tbody>
</table>
