package struts.action;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import org.techno.sturent.OrderProduct;

public class OrderActionCode extends ActionSupport implements  ModelDriven
{

    OrderProduct pro=new OrderProduct();

    @Override
    public String execute() throws Exception 
    {
    SessionFactory  sf=
        new Configuration().configure().buildSessionFactory();
    Session session=sf.openSession();
    Transaction tx=session.beginTransaction();
    session.save(pro);
    tx.commit();
    session.close();
    return SUCCESS;
    }
    
      @Override
    public OrderProduct getModel() 
    {
                    return pro;       
    }
    
}