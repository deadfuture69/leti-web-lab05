<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" session="false" %>
<!DOCTYPE html>
<html lang="ru">
<head><meta charset="UTF-8"><title>Выбор списка фильмов</title></head>
<body>
    <h1>Выбор списка фильмов</h1>
    <form action="movies.jsp" method="get">
        <label>Имя <input name="name" required></label>
        <button type="submit">Показать фильмы</button>
    </form>
</body>
</html>
