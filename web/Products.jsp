<%@taglib  prefix="s" uri="/struts-tags"%>


<html>
    <style>
        body
        {
        background-image:url('images/134.jpg');
        background-size:100%;
        }
        .tabtheme
        {
            background-color:rgba(255,255,255,0.6);
            color:black;
            font-size:16px;
            text-align: center;
            font-family: arial;
            text-transform: uppercase;
            height: 50px;
            animation:menutheme  3s;
            position: relative;
/*            box-shadow: 2px 3px 3px black;*/
/*            border-radius: 30px;*/
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
            font-size:70px;
            margin-left:400px;
            margin-top:100px;
            color:darkslategray;
        }
        .current
        {
            background-color:darkslategray;
            color:white;
        }
        .current a
        {
            background-color:darkslategray;
            color:white;
        }
        .news{
            margin-left:400px;
            margin-top:-40px;
            color:black;
            font-family: OCR A;
        }
        .imganim{
            animation:imagetheme 2s;
            position: relative;
        }
        @keyframes imagetheme{
            from{
                top:300px;
            }
            to{
                top:0px;
            }
        }
        .signupbuttons
        {
            
            margin-left:500px;
            font-family:arial;
            
        }
        .signupbuttons a{
            color:white;
            text-decoration: none;
        }
        .tabtheme a{
            color:black;
            text-decoration: none;
        }
        
          .formtheme{
            width:450px;
            height: 400px;
            background-color:rgba(255,255,255,0.6);
            margin:auto;
            margin-top:60px;
            box-shadow: 3px 3px 3px rgba(0,0,0,0.7);
            font-family:arial;
/*            border-top-right-radius: 100px;
            border-bottom-left-radius: 100px;
            border-radius: 50px;
            animation:logintheme 3s;
            position: relative;*/
        }
        @keyframes logintheme{
            from{
                top:300px;
                transform:rotateY(0deg);
            }
            to{
                top:0px;
                transform:rotateY(360deg);
            }
        }
        .txt1{
            width:100%;
            height: 20px;
            
            }
        .txt1:focus{
            background-color:black;
            color:white;
        }
        .txt2:focus{
            background-color:black;
            color:white;
        }
        .combo
        {
            width:100%;
            height: 40px;
            background-color:transparent;
        }
        .btn{
            background-color:transparent;
            width:100%;
            height: 40px;
            background-color:darkslategray;
            color:white;
            text-transform: uppercase;
            border-bottom-left-radius:  20px;
            border-bottom-right-radius:  20px;
            
        }
     

    </style>
    
    <body>
        <div  style='width:100%;height:1000%;background-color:rgba(255,255,255,0.7)'>
           
       
             <table  class="tabtheme"  width="100%">
    <tr>
<td><s:a href="homelink.action">home</s:a></td>
<td><s:a href="useracclink.action">account</s:a></td>
<td><s:a href="pwdsetlink.action">setting</s:a></td>
<td><s:a href="complainlink.action">Complain</s:a></td>
<td><s:a href="loadpage.action">signout</s:a></td>
</tr>
</table>
      
<%@ taglib prefix="s" uri="/struts-tags" %>
<s1:head debug="true"/>
<div class="formtheme">
    <form action="ordercode.action">
    <table cellspacing="5" cellpadding="5">
          
        

        <tr>
            <td>
                <s:textfield label="Student Id" name="studentid"/>
            </td>
             <td>
                <s:textfield label="Product Name" name="productname"/>
            </td>
            
           
        </tr>

        <tr>
             <td>
                <s:textfield label="Quantity" name="quantity"/>
            </td>
            <td>
                <s:textfield label="Price" name="price"/>
            </td>
            
        </tr>

        <tr>
            <td>
                <s:textfield label="Address" name="address"/>
            </td>
            <td>
                <s:textfield label="Contact" name="Contact"/>
            </td>
           
            <td>
                <s:submit label="submit"/>
            </td>
        </tr>

    </table>
</form>
</div>

            
<table width="100%" cellspacing="10" cellpadding="10">
    
    <!-- ROW 1 -->
    <tr align="center">
        <td>
            <img src="images/laptop.jpeg" width="200" height="200"><br>
            Product Id: HJ78<br>
            Rental: 10/-month
        </td>

        <td>
            <img src="images/studytable.jpg" width="200" height="200"><br>
            Product Id: HJ79<br>
            Rental: 10/-month
        </td>

        <td>
            <img src="images/studychair.jpg" width="200" height="200"><br>
            Product Id: HJ80<br>
            Rental: 10/-month
        </td>

        <td>
            <img src="images/mattress.jpg" width="200" height="200"><br>
            Product Id: HJ81<br>
            Rental: 10/-month
        </td>

        <td>
            <img src="images/kettle.jpg" width="200" height="200"><br>
            Product Id: HJ82<br>
            Rental: 10/-month
        </td>
    </tr>

    <!-- ROW 2 -->
    <tr align="center">
        <td>
            <img src="images/induction.jpeg" width="200" height="200"><br>
            Product Id: HJ83<br>
            Rental: 10/-month
        </td>

        <td>
            <img src="images/fridge.jpeg" width="200" height="200"><br>
            Product Id: HJ84<br>
            Rental: 10/-month
        </td>

        <td>
            <img src="images/iron.jpg" width="200" height="200"><br>
            Product Id: HJ85<br>
            Rental: 10/-month
        </td>

        <td>
            <img src="images/lamp.jpeg" width="200" height="200"><br>
            Product Id: HJ86<br>
            Rental: 10/-month
        </td>

        <td>
            <img src="images/extension.jpg" width="200" height="200"><br>
            Product Id: HJ87<br>
            Rental: 10/-month
        </td>
    </tr>

    <!-- ROW 3 -->
    <tr align="center">
        <td>
            <img src="images/cycle.jpeg" width="200" height="200"><br>
            Product Id: HJ88<br>
            Rental: 10/-month
        </td>

        <td>
            <img src="images/wardrobe.jpeg" width="200" height="200"><br>
            Product Id: HJ89<br>
            Rental: 10/-month
        </td>

        <td>
            <img src="images/immersionrod.jpg" width="200" height="200"><br>
            Product Id: HJ90<br>
            Rental: 10/-month
        </td>

        <td>
            <img src="images/powerbank.jpg" width="200" height="200"><br>
            Product Id: HJ91<br>
            Rental: 10/-month
        </td>

        <td>
            <img src="images/whiteboard.jpg" width="200" height="200"><br>
            Product Id: HJ92<br>
            Rental: 10/-month
        </td>
    </tr>

</table>



            
    </body>
</html>
    
    






