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
import javax.persistence.Id;
import javax.persistence.Table;

/**
 *
 * @author HP
 */

@Entity
@Table(name = "card")
public class Card implements Serializable{
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer cardID;
    private String accNum;
    private String registrDate;

    public Card() {
    }

    public Card(Integer cardID, String accNum, String registrDate) {
        this.cardID = cardID;
        this.accNum = accNum;
        this.registrDate = registrDate;
    }

    public Card(String accNum, String registrDate) {
        this.accNum = accNum;
        this.registrDate = registrDate;
    }
    
    @Column(name="cardID", unique=true, nullable=false)
    public Integer getCardID() {
        return cardID;
    }

    public void setCardID(Integer cardID) {
        this.cardID = cardID;
    }
    
    @Column(name="accNum", length=45)
    public String getAccNum() {
        return accNum;
    }

    public void setAccNum(String accNum) {
        this.accNum = accNum;
    }
    
    @Column(name="registrDate", length=45)
    public String getRegistrDate() {
        return registrDate;
    }

    public void setRegistrDate(String registrDate) {
        this.registrDate = registrDate;
    }
    
    
}
