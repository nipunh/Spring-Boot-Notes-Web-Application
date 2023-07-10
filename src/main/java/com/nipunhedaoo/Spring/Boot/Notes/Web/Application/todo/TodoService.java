package com.nipunhedaoo.Spring.Boot.Notes.Web.Application.todo;

import org.springframework.cglib.core.Local;
import org.springframework.stereotype.Service;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import java.util.function.Predicate;

@Service
public class TodoService {

    private static List<Todo> todos = new ArrayList<>();
    private static int todosCount = 0;

    static{
        todos.add(new Todo(++todosCount, "nipunhedaoo", "100 Days of LeetCode",
                        LocalDate.now().plusDays(100), false));
        todos.add(new Todo(++todosCount, "in28minutes", "Spring Boot",
                                LocalDate.now().plusDays(30), false));
    }

    public List<Todo> findbyUserName(String userName){
        return todos;
    }

    public void addTodo(String userName, String description, LocalDate targetDate, boolean done){
        Todo todo = new  Todo(++todosCount, userName, description,
                targetDate, done);

        todos.add(todo);
    }
    public void deleteTodo(int id){
        Predicate<? super Todo> predicate = todo -> todo.getId() == id;
        todos.removeIf(predicate);
    }

    public Todo findById(int id){
        Predicate<? super Todo> predicate = todo -> todo.getId() == id;
        return todos.stream().filter(predicate).findFirst().get();
    }

    public void updateTodo(Todo newTodo){
        deleteTodo(newTodo.getId());
        todos.add(newTodo);
    }
}
