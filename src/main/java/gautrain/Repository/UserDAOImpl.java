/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package gautrain.Repository;

import gautrain.dao.UserDAO;
import gautrain.dao.UserService;
import gautrain.entity.User;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author HP
 */
@Service("userService")
@Transactional
public class UserDAOImpl implements UserService{
    @Autowired
    private UserDAO userDAO;
    @Autowired
    private PasswordEncoder passEnco;

    @Override
    public User findUserByID(Integer userID) {
        return userDAO.findByID(userID);
    }

    @Override
    public void saveUser(User userObj) {
        userObj.setPassword(passEnco.encode(userObj.getPassword()));
       userDAO.save(userObj);
    }

    @Override
    public void deleteUser(Integer userID) {
       userDAO.delete(userID);
    }

    @Override
    public void findByRole(String role) {
        
    }

    @Override
    public List<User> findAllUsers() {
        return userDAO.findAll();
    }

    @Override
    public void updateUser(User userObj) {
        User user=userDAO.findByID(userObj.getUserID());
        if(user!=null){
            if(userObj.getPassword().equals(user.getPassword())){
               user.setPassword(passEnco.encode(userObj.getPassword()));
            }
            user.setFirstNames(userObj.getFirstNames());
            user.setLastName(userObj.getLastName());
            user.setDob(userObj.getDob());
            user.setEmailAddr(userObj.getEmailAddr());
            user.setTitle(userObj.getTitle());
            user.setRole(userObj.getRole());
            
        }
    }

  
    
   
}
