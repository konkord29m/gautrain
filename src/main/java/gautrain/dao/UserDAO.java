/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package gautrain.dao;

import gautrain.entity.User;
import java.util.List;

/**
 *
 * @author HP
 */
public interface UserDAO {
   
    public User findByID(Integer userID);
    public void save(User userObj);
    public void delete(Integer userID);
    public void update(Integer userID);
    public void findRole(String role);
    public List<User> findAll();
    
    
}
