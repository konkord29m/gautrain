/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package gautrainproject.controller;

import gautrainproject.dao.UserDAO;
import gautrainproject.pojo.User;
import java.util.List;
//import javax.enterprise.inject.Model;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author HP
 */
@Controller
//@RequestMapping("/")
public class UserContoller {
    @Autowired
    private UserDAO userDAO;
    
//    @RequestMapping("/user/list")
//    public void userList(Model model) {
//        List<User> userList = userDAO.getUsers();
//        model.addAttribute("userList", userList);
//    }
    
    
   @RequestMapping("/index")
    public String index(){
        return "index";
    }  
    
    
    @RequestMapping("/registUser")
    public String createUser(User user,Model model){
        System.out.println("ID: [" + user.getUserID()+ "]");
        System.out.println("User foubd is: [" + user.getFirstNames() + "]");
        userDAO.addUser(user);
         
        return "redirect:login.jsp";
    }
    
   
    @RequestMapping("/search")
    public String search(){
        return "search";
    }
    
    @RequestMapping("/login")
    public String loginPage(){
        return "search";
    }  
    
    
    @RequestMapping(value="/userLogin")
    public String login(User user){
        List<User> successUser=userDAO.Login(user.getEmailAddr(), user.getPassword());
        
        if(successUser.size() > 0){
            
            return "search";
        }
        
       return "redirect:registr.jsp";
        
        
    }
}
