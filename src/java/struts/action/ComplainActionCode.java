package struts.action;

import static com.opensymphony.xwork2.Action.SUCCESS;


import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import java.text.DateFormat;
import java.util.Date;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import org.techno.sturent.Complain;

public class ComplainActionCode extends ActionSupport implements ModelDriven<Complain>
{
    Complain comp = new Complain();

    @Override
    public String execute() throws Exception
    {
        SessionFactory sf =
                new Configuration().configure().buildSessionFactory();

        Session session = sf.openSession();
        Transaction tx = session.beginTransaction();

        Date date = new Date();
        DateFormat df = DateFormat.getDateInstance(DateFormat.LONG);

        comp.setDate(df.format(date));
        comp.setStatus("under process");

        session.save(comp);
        tx.commit();
        session.close();

        return SUCCESS;
    }
    
    public String changeStatus()
{
    SessionFactory sf =
        new Configuration().configure().buildSessionFactory();

    Session session = sf.openSession();
    Transaction tx = session.beginTransaction();

    Complain complain =
        (Complain) session.get(Complain.class, comp.getComplainId());

    complain.setStatus(comp.getStatus());

    session.update(complain);
    tx.commit();
    session.close();

    return SUCCESS;
}
    
    public String deleteComplain()
{
    SessionFactory sf =
        new Configuration().configure().buildSessionFactory();

    Session session = sf.openSession();
    Transaction tx = session.beginTransaction();

    Complain complain =(Complain) session.get(Complain.class, comp.getComplainId());

    session.delete(complain);
    tx.commit();
    session.close();

    return SUCCESS;
}



    @Override
    public Complain getModel()
    {
        return comp;
    }
}