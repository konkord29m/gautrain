package gautrain.dao;

import gautrain.entity.User;
import java.util.List;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;


/**
 *
 * @author HP
 */
@Repository
public class UserDAO1 {

    @Autowired
    private SessionFactory sessionFactory;

    @Transactional
    public void addUser(User user) {
        sessionFactory.getCurrentSession().beginTransaction();     
        sessionFactory.getCurrentSession().saveOrUpdate(user);      
        sessionFactory.getCurrentSession().getTransaction().commit();
        sessionFactory.getCurrentSession().close();
    }

    public void addAdmin(User user) {
        sessionFactory.getCurrentSession().beginTransaction();
        user.setRole("Admin");      
        sessionFactory.getCurrentSession().saveOrUpdate(user);      
        sessionFactory.getCurrentSession().getTransaction().commit();
        sessionFactory.getCurrentSession().close();
    }    

    @SuppressWarnings("unchecked")
    @Transactional
    public List<User> getUsers() {
        List<User> userList = null;
        sessionFactory.getCurrentSession().beginTransaction();
        userList = sessionFactory.getCurrentSession().createQuery("from User u").list();
        sessionFactory.getCurrentSession().getTransaction().commit();
        sessionFactory.getCurrentSession().close();
        return userList;
    }

    @Transactional
    public User getUser(Integer userId) {        
        try {
            sessionFactory.getCurrentSession().beginTransaction();
            User user = (User) sessionFactory.getCurrentSession().get(User.class, userId);
            sessionFactory.getCurrentSession().getTransaction().commit();
            sessionFactory.getCurrentSession().close();
            return user;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
}
