package struts.action;

import static com.opensymphony.xwork2.Action.ERROR;
import static com.opensymphony.xwork2.Action.SUCCESS;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.criterion.Restrictions;


import org.techno.sturent.Auth;




public class AuthActionCode extends ActionSupport implements ModelDriven
{
    Auth auth = new Auth();

    @Override
    public String execute() throws Exception
    {
        SessionFactory sf =
                new Configuration().configure().buildSessionFactory();

        Session session = sf.openSession();
        Transaction tx = session.beginTransaction();

        Criteria crit = session.createCriteria(Auth.class);

        crit.add(
            Restrictions.and(
                Restrictions.eq("id", auth.getId()),
                Restrictions.eq("pwd", auth.getPwd())
            )
        );

        List<Auth> list = crit.list();

        tx.commit();
        session.close();

        if (list.isEmpty())
            return ERROR;
        else
            return SUCCESS;
    }
     public String checkLogin()
    {
    SessionFactory  sf= new Configuration().configure().buildSessionFactory();
    Session session=sf.openSession();
    Transaction tx=session.beginTransaction();
    Criteria crit=session.createCriteria(Auth.class)    ;
    
    crit.add(Restrictions.and(Restrictions.eq("id",auth.getId()),
            Restrictions.eq("pwd",auth.getPwd())));
    List<Auth> list=crit.list();
    if(list.isEmpty())
        return ERROR;
    else
        return SUCCESS;
    }
    public String deleteauthAccount()
    {
    SessionFactory  sf=
        new Configuration().configure().buildSessionFactory();
    Session session=sf.openSession();
    Transaction tx=session.beginTransaction();
    Criteria crit=session.createCriteria(Auth.class)    ;
    
    crit.add(Restrictions.and(Restrictions.eq("id",auth.getId()),
            Restrictions.eq("pwd",auth.getPwd())));
    List<Auth> list=crit.list();
    if(list.isEmpty())
        return ERROR;
    else
    {
          Auth us=(Auth)session.get(Auth.class,auth.getId());
        session.delete(us);
        tx.commit();
        session.close();
    }
        return SUCCESS;
    }
    
     public String changeauthPassword()
    {
    SessionFactory sf=new Configuration().configure().buildSessionFactory();
    Session session=sf.openSession();
    Transaction tx=session.beginTransaction();
    Criteria crit=session.createCriteria(Auth.class);
    
    crit.add(Restrictions.and(Restrictions.eq("id",auth.getId()),
            Restrictions.eq("pwd",auth.getPwd())));
    List<Auth> list=crit.list();
    if(list.isEmpty())
    {
        return ERROR;
    }
    else
    {
        if(auth.getNpwd().equals(auth.getCnpwd()))
        {
            Auth us=(Auth)session.get(Auth.class,auth.getId());
            us.setPwd(auth.getNpwd());
            session.update(us);//update tablename set pwd=? where uid=?
            tx.commit();
            session.close();
        }
    }
        return SUCCESS;
    }


    @Override
    public Auth getModel()
    {
        return auth;
    }
}