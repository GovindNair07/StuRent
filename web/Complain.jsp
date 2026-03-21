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
        <div  style='width:100%;height:100%;background-color:rgba(255,255,255,0.7)'>
       
             <table  class="tabtheme"  width="100%">
    <tr>
<td><s:a href="homelink.action">home</s:a></td>
<td><s:a href="homelink.action">reports</s:a></td>
<td><s:a href="signinlink.action">account</s:a></td>
<td><s:a href="pwdsetlink.action">setting</s:a></td>
<td><s:a href="loadpage.action">signout</s:a></td>
</tr>
</table>
      
<%@taglib prefix="s1"  uri="/struts-dojo-tags" %>

<s1:head debug="true"/>    
    

<div  class="formtheme">
<h2  cssStyle="">USER PASSWORD SETTING FORM</h2>
<%@taglib prefix="s"  uri="/struts-tags" %>

<s:form action="complaincode.action">

        <s:textfield 
            label="User Id" 
            name="userId" />

        <s:textarea 
            label="Complain" 
            name="complain" />

        <s:submit value="SEND" />

    </s:form>

</div>


            
    </body>
</html>
    
    






