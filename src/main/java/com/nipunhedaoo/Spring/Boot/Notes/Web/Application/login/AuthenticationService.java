package com.nipunhedaoo.Spring.Boot.Notes.Web.Application.login;
import org.springframework.stereotype.Service;

@Service
public class AuthenticationService {
    public boolean authenticate(String username, String password){

        boolean isValidUserName = username.equalsIgnoreCase("nipun");
        boolean isValidUserPassword = password.equals("hedaoo");

        return isValidUserName && isValidUserPassword;
    }
}
