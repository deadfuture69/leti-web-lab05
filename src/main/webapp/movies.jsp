<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" session="false" %>
<%@ page import="edu.web.lab05.Movie, java.util.List" %>
<%
    String name = request.getParameter("name");
    if (name == null) {
        request.getRequestDispatcher("/index.jsp").forward(request, response);
        return;
    }
    if (name.isBlank()) {
        response.setStatus(400);
        request.getRequestDispatcher("/WEB-INF/views/missing-name.jsp").forward(request, response);
        return;
    }
    String displayName = name.strip().replace("&", "&amp;").replace("<", "&lt;").replace(">", "&gt;");
    request.setAttribute("movies", List.of(
            new Movie("Прибытие", "Дени Вильнёв"),
            new Movie("Унесённые призраками", "Хаяо Миядзаки"),
            new Movie("Шоу Трумана", "Питер Уир")));
%>
<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <title>Список фильмов</title>
</head>
<body>
<h1>Список фильмов для <%= displayName %></h1>
<jsp:include page="/WEB-INF/views/movie-table.jsp"/>
</body>
</html>
