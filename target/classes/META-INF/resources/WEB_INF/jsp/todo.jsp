<%@ include file="common/header.jspf" %>
<%@ include file="common/navigation.jspf" %>
        <h1>Enter Todo Details</h1>
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
                <button type="submit">Save Todo</button>
            </div>
        </form:form>
<%@ include file="common/footer.jspf" %>
