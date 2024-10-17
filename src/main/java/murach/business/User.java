package murach.business;

import jakarta.persistence.*;

@Entity
@Table(name = "customer")
public class User {
    @Id
    @Column(name = "Email", nullable = false)
    private String email;
    
    @Column(name = "FirstName", nullable = false)
    private String firstName;
    
    @Column(name = "LastName", nullable = false)
    private String lastName;

    public User(String firstName, String lastName, String email) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.email = email;
    }

    public User() {
        this("", "", "");
    }

    public String getEmail() {
        return email;
    }

    public String getFirstName() {
        return firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }
}
