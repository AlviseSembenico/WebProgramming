package Dao.entities;

/**
 * @generated
 */
public final class User extends IdOwnerComparable {

    private String firstName;
    private String lastName;
    private String email;
    private String password;
    private String avatarPath;
    private String conferma;

    public User() {
    }

    public User(String firstName, String lastName, String email, String password, String conferma) {
        setFirstName(firstName);
        setLastName(lastName);
        setEmail(email);
        setPassword(password);
        setConferma(conferma);
    }

    public User(String firstName, String lastName, String email, String password, String Conferma, String avatarPath) {
        setFirstName(firstName);
        setLastName(lastName);
        setEmail(email);
        setPassword(password);
        setConferma(Conferma);
        setAvatarPath(avatarPath);
    }

    /**
     * @return the conferma
     */
    public String getConferma() {
        return conferma;
    }

    /**
     * @param conferma the conferma to set
     */
    public void setConferma(String conferma) {
        this.conferma = conferma;
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

    public String getPrivileges() {
        return privileges;
    }

    public void setPrivileges(String privileges) {
        this.privileges = privileges;
    }
    
}
