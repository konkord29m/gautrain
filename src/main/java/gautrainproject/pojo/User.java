/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package gautrainproject.pojo;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 *
 * @author HP
 */
@Entity
@Table(name = "user")

public class User implements Serializable{
    private static transient final long serialVersionUID = 5525192006692746367L;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer userID;
     private String title;
     private String firstNames;
     private String lastName;
     private String dob;
     private String role;
     private String emailAddr;
     private String password;
     private Card cardObj;

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
      
      public User(String title, String firstNames, String lastName, String dob, String role, String emailAddr, String password,Card cardObj) {
       this.title = title;
       this.firstNames = firstNames;
       this.lastName = lastName;
       this.dob = dob;
       this.role = role;
       this.emailAddr = emailAddr;
       this.password = password;
       this.cardObj=cardObj;
    }
   
    /**
     *
     * @return
     */
    @Id @GeneratedValue(strategy=IDENTITY)

    
    @Column(name="userID", unique=true, nullable=false)
    public Integer getUserID() {
        return this.userID;
    }
    
    public void setUserID(Integer userID) {
        this.userID = userID;
    }

    
    @Column(name="title", length=45)
    public String getTitle() {
        return this.title;
    }
    
    public void setTitle(String title) {
        this.title = title;
    }

    
    @Column(name="firstNames", length=45)
    public String getFirstNames() {
        return this.firstNames;
    }
    
    public void setFirstNames(String firstNames) {
        this.firstNames = firstNames;
    }

    
    @Column(name="lastName", length=45)
    public String getLastName() {
        return this.lastName;
    }
    
    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    
    @Column(name="dob", length=45)
    public String getDob() {
        return this.dob;
    }
    
    public void setDob(String dob) {
        this.dob = dob;
    }

    
    @Column(name="role", length=45)
    public String getRole() {
        return this.role;
    }
    
    public void setRole(String role) {
        this.role = role;
    }

    
    @Column(name="emailAddr", length=45)
    public String getEmailAddr() {
        return this.emailAddr;
    }
    
    public void setEmailAddr(String emailAddr) {
        this.emailAddr = emailAddr;
    }

    
    @Column(name="password", length=45)
    public String getPassword() {
        return this.password;
    }
    
    public void setPassword(String password) {
        this.password = password;
    }
    
    public Card getCardObj() {
        return cardObj;
    }

    public void setCardObj(Card cardObj) {
        this.cardObj = cardObj;
    }
    
    

}
