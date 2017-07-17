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
public interface UserService {
    public User findUserByID(Integer userID);
    public void saveUser(User userObj);
    public void updateUser(User userObj);
    public void deleteUser(Integer userID);
    public void findByRole(String role);
    public List<User> findAllUsers();
}
