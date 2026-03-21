<%@ page import="org.hibernate.SessionFactory,
                 org.hibernate.Transaction,
                 org.hibernate.cfg.Configuration,
                 org.hibernate.classic.Session" %>

<%@ page import="org.hibernate.Criteria" %>
<%@ page import="org.techno.sturent.Complain" %>
<%@ page import="java.util.List" %>

<%
    SessionFactory sf = new Configuration().configure().buildSessionFactory();
    Session session1 = sf.openSession();
    Transaction tx = session1.beginTransaction();

    Criteria crit = session1.createCriteria(Complain.class);
    List<Complain> list = crit.list();
%>

<table width="90%" align="center">

    <tr align="center" style="background-color:white">
        <td>USER ID</td>
        <td>COMPLAIN ID</td>
        <td>COMPLAIN</td>
        <td>DATE</td>
        <td>STATUS</td>
    </tr>

<%
    for (Complain data : list)
    {
%>
    <tr align="center">
        <td><%= data.getUserId() %></td>
        <td><%= data.getComplainId() %></td>
        <td><%= data.getComplain() %></td>
        <td><%= data.getDate() %></td>
        <td><%= data.getStatus() %></td>
    </tr>
<%
    }
%>

</table>