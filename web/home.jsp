<html>
    <style>
        body
        {
        background-image:url('images/134.jpg');
        background-size:cover;
        background-position:center;
        }
        .tabtheme
        {
            background-color:rgba(0,0,0,0.6);
            color:white;
            font-size:16px;
            text-align: center;
            font-family: arial;
            text-transform: uppercase;
            height: 55px;
            animation:menutheme  2s;
            position: relative;
        }
        @keyframes  menutheme{
            from{
                top:-100px;
            }
            to{
               top:0px; 
            }
        }
        h1{
            font-family:arial;
            font-size:64px;
            margin-left:350px;
            margin-top:120px;
            color:#2c3e50;
            line-height:1.2;
        }
        .current
        {
            background-color:#2c3e50;
            color:white;
        }
        .current a
        {
            background-color:#2c3e50;
            color:white;
        }
        .news{
            margin-left:350px;
            margin-top:-30px;
            color:#333;
            font-family:arial;
            font-size:18px;
            font-weight:bold;
        }
        .imganim{
            animation:imagetheme 2s;
            position: relative;
        }
        @keyframes imagetheme{
            from{
                top:200px;
            }
            to{
                top:0px;
            }
        }
        .signupbuttons
        {
            margin-left:470px;
            margin-top:30px;
            font-family:arial;
        }
        .signupbuttons a{
            color:white;
            text-decoration: none;
            font-size:18px;
            font-weight:bold;
        }
        .tabtheme a{
            color:white;
            text-decoration: none;
        }
           .right-vector {
    position: absolute;
    right: 0;
    bottom: 0;
    width: 45%;
    height: auto;
    z-index: 1;
    opacity: 0.95;
}
    </style>
    
    <body>
        <div style='width:100%;height:100%;background-color:rgba(255,255,255,0.85)'>
             <img src="images/sv.png" class="right-vector" alt="Students Vector">
       
            

            <%@taglib prefix="s" uri="/struts-tags" %>
            <table width='100%' class='tabtheme'>
                <tr>
                    <td class='current'><a href="homelink.action" style="color:white">HOME</a></td>
                    <td><s:a href="product.action">ALL PRODUCTS </s:a></td>
                    <td><s:a href="authsigninlink.action">COMPANY </s:a></td>
                    <td><s:a href="signinlink.action">SIGNIN </s:a></td>
                    <td><s:a href="signuplink.action">SIGNUP</s:a></td>
                    <td><s:a href="contact.action">contact </s:a></td>
                    <td><s:a href="aboutus.action">About us </s:a></td>
                    
                    <td>
                        <img src="images/LOGOSTURENT.jpg" width="100px" height="70px" class="imganim">
                    </td>
                </tr>
            </table>
            
        <h1>Use more.<br>Own less.<br>Rent smart.</h1>
            
            <table class='news' width='55%'>
                <tr align='center'>
                    <td>
                        <marquee scrollamount='10px' behavior='scroll' direction='left'>
No need to buy! Rent daily-use appliances for your PG or hostel at student-friendly prices.
                        </marquee>
                    </td>
                </tr>
            </table>
            
           
            
        </div>
    </body>
</html>