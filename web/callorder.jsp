<%@ page import="org.hibernate.SessionFactory,
                 org.hibernate.Transaction,
                 org.hibernate.cfg.Configuration,
                 org.hibernate.classic.Session" %>

<%@ page import="org.hibernate.Criteria" %>
<%@ page import="org.techno.sturent.OrderProduct" %>
<%@ page import="java.util.List" %>

<%
    SessionFactory sf = new Configuration().configure().buildSessionFactory();
    Session session1 = sf.openSession();
    Transaction tx = session1.beginTransaction();

    Criteria crit = session1.createCriteria(OrderProduct.class);
    List<OrderProduct> list = crit.list();
%>

<table width="90%" align="center">

    <tr align="center" style="background-color:white">
        <td>ORDER ID</td>
        <td>STUDENT ID</td>
        <td>PRODUCT NAME</td>
        <td>QUANTITY</td>
        <td>PRICE</td>
        <td>ADDRESS</td>
        <td>CONTACT</td>
    </tr>

<%
    for (OrderProduct data : list)
    {
%>
    <tr align="center">
        <td><%= data.getOrderid()%></td>
        <td><%= data.getStudentid() %></td>
        <td><%= data.getProductname() %></td> 
        <td><%= data.getQuantity() %></td>
        <td><%= data.getPrice() %></td>
        <td><%= data.getAddress() %></td>
        <td><%= data.getContact()%></td>
    </tr>
<%
    }
%>

</table>
    
  