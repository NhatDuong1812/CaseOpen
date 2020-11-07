package model;

public class User {
    private int userId;
    private String username;
    private String password;
    private String role;
    private String signUpDate;

    public User(int userId, String username, String password, String role, String signUpDate) {
        this.userId = userId;
        this.username = username;
        this.password = password;
        this.role = role;
        this.signUpDate = signUpDate;
    }

    public User(String username, String password, String role, String signUpDate) {
        this.username = username;
        this.password = password;
        this.role = role;
        this.signUpDate = signUpDate;
    }

    public User(String username, String password, String role) {
        this.username = username;
        this.password = password;
        this.role = role;
    }

    public User(int id) {
        this.userId = id;
    }

    public User(String username, String password) {
        this.username = username;
        this.password = password;
    }


    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    public String getSignUpDate() {
        return signUpDate;
    }

    public void setSignUpDate(String signUpDate) {
        this.signUpDate = signUpDate;
    }
}
