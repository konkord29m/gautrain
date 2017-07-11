/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package gautrainproject.dao;

import gautrainproject.pojo.User;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.stereotype.Repository;

/**
 *
 * @author HP
 */
@Repository
public class UserDAO {
    @Autowired
    private SessionFactory sessionFactory;

    @Transactional
    public void addUser(User user) {
        sessionFactory.getCurrentSession().beginTransaction();
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
    
    public  List Login(String emailAddr,String password){
        sessionFactory.getCurrentSession().beginTransaction();
        String hql="from User c where c.emailAddr=:email and c.password:passw";
        
        Query qry=sessionFactory.getCurrentSession().createQuery(hql);
        qry.setParameter("email", emailAddr);
        qry.setParameter("passw", password);
        
        List<User> userList=qry.list();
        if(userList.size()>0){
            sessionFactory.close();
            return userList;
        }
        sessionFactory.close();
        return userList;
    }
    
    
}
