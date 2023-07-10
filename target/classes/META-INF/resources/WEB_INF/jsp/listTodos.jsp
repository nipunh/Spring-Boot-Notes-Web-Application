<%@ include file="common/header.jspf" %>
<%@ include file="common/navigation.jspf" %>
<div class="title-button">
    <h1>Todos</h1>
     <button class="add-todo">
            <a href="add-todo" >Add Todo</a>
        </button>
</div>

    <table>
        <thead>
            <tr>
                <th>Description</th>
                <th>Target Date</th>
                <th>Done</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>

            <c:forEach items="${todos}" var="todo" >
                <tr>
                    <td>${todo.description}</td>
                    <td>${todo.targetDate}</td>
                    <td>${todo.done}</td>
                    <td>
                     <button class="update-todo">
                         <a href="update-todo?id=${todo.id}">Update</a>
                     </button>
                    <button class="delete-todo">
                        <a href="delete-todo?id=${todo.id}">Delete</a>
                    </button>
                    </td>

                </tr>
            </c:forEach>
        </tbody>
    </table>
<%@ include file="common/footer.jspf" %>

