package Dao.entities;


/**
* @generated
*/
public final class User extends IdOwnerComparable{

    private String firstName;
    private String lastName;
    private String email;
    private String password;
    private String avatarPath;
    
    
    public User(){}
    
    public User(String firstName, String lastName,String email,String password)
    {
        setFirstName(firstName);
        setLastName(lastName);
        setEmail(email);
        setPassword(password);
    }
    
    public User(String firstName, String lastName,String email,String password, String avatarPath)
    {
        setFirstName(firstName);
        setLastName(lastName);
        setEmail(email);
        setPassword(password);
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getAvatarPath() {
        return avatarPath;
    }

    public void setAvatarPath(String avatarPath) {
        this.avatarPath = avatarPath;
    }
    public void setPassword(String passwd) {
        this.password = passwd;
    }
    
    public String getPassword() {
        return password;
    }
    
}
