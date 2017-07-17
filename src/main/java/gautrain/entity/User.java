package gautrain.entity;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import org.hibernate.validator.constraints.NotEmpty;

@Entity
@Table(name = "user")
public class User implements Serializable {

    private static transient final long serialVersionUID = 5525192006692746367L;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "USER_ID", unique = true)
    private Integer userID;
    
    @NotEmpty
    @Column(name = "TITLE", nullable = false)
    private String title;
    @NotEmpty
    @Column(nullable = false)
    private String firstNames;
    @NotEmpty
    @Column(name = "LAST_NAME", nullable = false)
    private String lastName;
    @NotEmpty
    @Column(name = "DATE_OF_BIRTH", nullable = false)
    private String dob;
    @NotEmpty
    @Column(name = "ROLE", nullable = false)
    private String role;
    @NotEmpty
    @Column(name = "EMAIL", nullable = false)
    private String emailAddr;
    @NotEmpty
    @Column(name = "PASSWORD", nullable = false)
    private String password;

    /*@OneToOne
     @JoinColumn(name="cardID")
     private Card cardObj;*/

    public User() {
    }

    public User(String title, String firstNames, String lastName, String dob, String role, String emailAddr, String password) {
        this.title = title;
        this.firstNames = firstNames;
        this.lastName = lastName;
        this.dob = dob;
        this.role = role;
        this.emailAddr = emailAddr;
        this.password = password;
    }
     
    public Integer getUserID() {
        return this.userID;
    }

    public void setUserID(Integer userID) {
        this.userID = userID;
    }

  
    public String getTitle() {
        return this.title;
    }

    public void setTitle(String title) {
        this.title = title;
    }


    public String getFirstNames() {
        return this.firstNames;
    }

    public void setFirstNames(String firstNames) {
        this.firstNames = firstNames;
    }
   
    public String getLastName() {
        return this.lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }
    
    public String getDob() {
        return dob;
    }

    public void setDob(String dob) {
        this.dob = dob;
    }
   
    public String getRole() {
        return this.role;
    }

    public void setRole(String role) {
        this.role = role;
    }
    
    public String getEmailAddr() {
        return this.emailAddr;
    }

    public void setEmailAddr(String emailAddr) {
        this.emailAddr = emailAddr;
    }
  
    public String getPassword() {
        return this.password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

}
