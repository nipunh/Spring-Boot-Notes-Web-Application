<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Task Table</title>
    <style>
        table {
            border-collapse: collapse;
            width: 100%;
        }

        th, td {
            text-align: left;
            padding: 8px;
            border-bottom: 1px solid #ddd;
        }

        th {
            background-color: #f2f2f2;
        }

         .add-todo {
                    margin-top: 16px;
                    padding: 8px 16px;
                    background-color: #4CAF50;
                    color: white;
                    border: none;
                    border-radius: 4px;
                    cursor: pointer;
                }

                .add-todo:hover {
                    background-color: #45a049;
                }

        a{
            text-decoration: none;
            text-color : #fff
        }
    </style>
</head>
<body>
    <h1>Todos</h1>
    <table>
        <thead>
            <tr>
                <th>ID</th>
                <th>Username</th>
                <th>Description</th>
                <th>Target Date</th>
                <th>Done</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>

            <c:forEach items="${todos}" var="todo" >
                <tr>
                    <td>${todo.id}</td>
                    <td>${todo.userName}</td>
                    <td>${todo.description}</td>
                    <td>${todo.targetDate}</td>
                    <td>${todo.done}</td>
                    <td><a type="button" href="delete-todo?id=${todo.id}">Delete</a> <a href="update-todo?id=${todo.id}">Update</a></td>
                </tr>
            </c:forEach>
        </tbody>
    </table>

    <button class="add-todo">
        <a  href="add-todo" >Add Todo</a>
    </button>

</body>
</html>
