package struts.action;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import java.util.List;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.criterion.Restrictions;
import org.techno.sturent.StudentSignup;

public class UserActionCode extends ActionSupport implements  ModelDriven
{

    StudentSignup user=new StudentSignup();
    public UserActionCode() {
    }

    @Override
    public String execute() throws Exception 
    {
    SessionFactory  sf=
        new Configuration().configure().buildSessionFactory();
    Session session=sf.openSession();
    Transaction tx=session.beginTransaction();
    session.save(user);
    tx.commit();
    session.close();
    return SUCCESS;
    }
    
    public String checkLogin()
    {
    SessionFactory  sf= new Configuration().configure().buildSessionFactory();
    Session session=sf.openSession();
    Transaction tx=session.beginTransaction();
    Criteria crit=session.createCriteria(StudentSignup.class)    ;
    
    crit.add(Restrictions.and(Restrictions.eq("uid",user.getUid()),
            Restrictions.eq("pwd",user.getPwd())));
    List<StudentSignup> list=crit.list();
    if(list.isEmpty())
        return ERROR;
    else
        return SUCCESS;
    }
    public String changePassword()
    {
    SessionFactory  sf=
        new Configuration().configure().buildSessionFactory();
    Session session=sf.openSession();
    Transaction tx=session.beginTransaction();
    Criteria crit=session.createCriteria(StudentSignup.class);
    
    crit.add(Restrictions.and(Restrictions.eq("uid",user.getUid()),
            Restrictions.eq("pwd",user.getPwd())));
    List<StudentSignup> list=crit.list();
    if(list.isEmpty())
    {
        return ERROR;
    }
    else
    {
        if(user.getNpwd().equals(user.getCnpwd()))
        {
            StudentSignup us=(StudentSignup)session.get(StudentSignup.class,user.getUid());
            us.setPwd(user.getNpwd());
            session.update(us);//update tablename set pwd=? where uid=?
            tx.commit();
            session.close();
        }
    }
        return SUCCESS;
    }

      public String deleteAccount()
    {
    SessionFactory  sf=
        new Configuration().configure().buildSessionFactory();
    Session session=sf.openSession();
    Transaction tx=session.beginTransaction();
    Criteria crit=session.createCriteria(StudentSignup.class)    ;
    
    crit.add(Restrictions.and(Restrictions.eq("uid",user.getUid()),
            Restrictions.eq("pwd",user.getPwd())));
    List<StudentSignup> list=crit.list();
    if(list.isEmpty())
        return ERROR;
    else
    {
          StudentSignup us=(StudentSignup)session.get(StudentSignup.class,user.getUid());
        session.delete(us);
        tx.commit();
        session.close();
    }
        return SUCCESS;
    }
      
    @Override
    public StudentSignup getModel() 
    {
        return user;       //uId,fNm 
    }
    
}
