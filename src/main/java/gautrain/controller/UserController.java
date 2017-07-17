package gautrain.controller;

//import gautrain.dao.UserDAO1;
import gautrain.dao.UserService;
import gautrain.entity.User;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/")

public class UserController {
    @Autowired
    private UserService userServ;
    @Autowired
    private MessageSource messageSource;
    
    @RequestMapping(value="/login",method=RequestMethod.GET)
    public String login(ModelMap model){
        User userObj=new User();
        model.addAttribute("user", userObj);
        model.addAttribute("edit",false);
        return "login";
    }
    
    @RequestMapping(value="/registUser",method=RequestMethod.GET)
    public String newUser(ModelMap model){
        User userObj=new User();
        model.addAttribute("user", userObj);
        model.addAttribute("edit",false);
        return "registr";
    }
    
    
    //CALLED ON FORM SUBMISSION AND SAVE DATA INTO DATABASE
    @RequestMapping(value="/registUser", method=RequestMethod.POST)
    public String saveNewUser(@Valid User userObj,BindingResult res,ModelMap model){
       if(res.hasErrors()){
           return "registr";
       } 
       
       userServ.saveUser(userObj);
       //model.addAttribute("successMess", userObj.getFirstNames() + " " + userObj.getLastName() + " You are successfully registered!!!" );
      return "index";
    }
    
    
    /*@Autowired
    private UserDAO1 userDAO;

    @RequestMapping(value = "/register", method = RequestMethod.GET)
    public String registerPage() {        
        return "register";
    }
    
    @RequestMapping(value = "/createUser", method = RequestMethod.POST)
    public ModelAndView createUser(User user, ModelAndView mv){
        System.out.println("ID: [" + user.getUserID()+ "]");
        System.out.println("User found is: [" + user.getFirstNames() + "]");
        userDAO.addUser(user);
        mv.addObject("savedUser", userDAO.getUser(user.getUserID()));
        mv.setViewName("../index");
        return mv;
    }   
    
    @RequestMapping(value = "/search", method = RequestMethod.GET)
    public String search(){
        return "search";
    }*/
    
}