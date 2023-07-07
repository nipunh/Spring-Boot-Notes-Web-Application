<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Add Todo</title>
    <style>
        .container {
            max-width: 400px;
            margin: 0 auto;
            padding: 20px;
        }

        .form-group {
            margin-bottom: 16px;
        }

        .form-group label {
            display: block;
            font-weight: bold;
        }

        .form-group input {
            width: 100%;
            padding: 8px;
            border: 1px solid #ddd;
            border-radius: 4px;
        }

        .form-group button {
            padding: 8px 16px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        .form-group button:hover {
            background-color: #45a049;
        }

        .text-warning{
            color: red;
        }

    </style>
</head>
<body>
    <div class="container">
        <h1>Add Todo</h1>
        <form:form id="addTodoForm" method="post" modelAttribute="todo">
            <div class="form-group">
                <label for="description">Todo Description:</label>
                <form:input type="text" id="description" path="description" name="description" required="required" />
                 <form:errors path="description" cssClass="text-warning" />
            </div>
            <div class="form-group">
                <label for="targetDate">Target Date:</label>
                <form:input type="date" id="targetDate" path="targetDate" name="targetDate" required="required" />
                <form:errors path="targetDate" cssClass="text-warning" />
            </div>

                <form:input type="hidden" id="done" path="done" name="done" />
                <form:input type="hidden" id="id" path="id" name="id" />

            <div class="form-group">
                <button type="submit">Add Todo</button>
            </div>
        </form:form>
    </div>
</body>
</html>
