<%@taglib  prefix="s" uri="/struts-tags"%>
<html>
    <style>
        body
        {
            background-image: url('images/134.jpg');
            background-size: 100%;
        }
        .tabtheme
        {
            background-color: rgba(250,250,250,0.6);
            color: black;
            font-size: 16px;
            text-align: center;
            font-family: arial;
            text-transform: uppercase;
            height:50px;
            animation:menutheme 3s;
            position: relative;
            width:100%;
        }
        @keyframes menutheme{
            from{
                top:-100px;
            }
            to{
                top:0px;
            }
        }
        h1{
            font-family: arial;
            font-size: 20px;
         
            margin-top: 90px;
            color:black
        }
        .current
        {
            background-color: black;
            color:white;
        }
        .news
        {
            margin-left: 400px;
            margin-top: -40px;
            color:black;
            font-family: OCR A;
        }
        .formtheme{
            width:400px;
            height: 400px;
            background-color:rgba(255,255,255,0.6);
            margin:auto;
            margin-top:80px;
            box-shadow: 3px 3px 3px rgba(0,0,0,0.7);
           
        }
    </style>

    <body>
        <div style="width:100%;height:100%;background-color:rgba(250,250,250,0.7)">
             <table  class="tabtheme"  width="100%">
    <tr>
<td><s:a href="homelink.action">home</s:a></td>
<td><s:a href="signinlink.action">signin</s:a></td>
<td><s:a href="signuplink.action">signup</s:a></td>
<td><s:a href="contactlink.action">contact</s:a></td>
</tr>
</table>
      
<%@taglib prefix="s1"  uri="/struts-dojo-tags" %>

<s1:head debug="true"/>    
    

<div  class="formtheme">
<h2  cssStyle="">USER SIGNUP</h2>
<s:form action="signupcode.action" enctype="multipart/form-data">
    <table  cellspacing="1px"  cellpadding="1px">
        <tr>
    <td><s:textfield label="Id"  name="uid"  cssClass="txt1"/></td>
    </tr>
    
    <tr>
        <td>
    <s:password label="Password"  name="pwd"/></td>
        </tr>
        
        
        <tr><td>
    <s:textfield label="Full name"  name="fnm"/>
            </td></tr>
        
        
    <tr><td>
        <s:textfield label="Contact"  name="cont"/></td></tr>
    <tr><td>
            
            
    <s:textfield label="Email"  name="mailId"/>
    </td></tr>
    
    
    <tr><td>
    <s:textfield label="Aadhar"  name="adharNo"/>
    </td></tr>
    
    
    <tr><td>
    <s:radio label="Gender"  name="gender"  list="{'male','female'}"/>
    </td></tr>
    
    
    <tr>
        <td><s:file label="Upload photo" name="photo"/></td>
    </tr>
    
    
    
    <tr><td>
    <s:textarea  label="Address"  name="address"/>
    </td></tr>
    
    
    <tr><td>
    <s1:autocompleter  label="City"  name="city"  
                       list="{'bombay','bilaspur','bhopal','indore','itarsi','raipur','ratlam'}" showDownArrow="false"  autoComplete="false"/>
    </td></tr>
    
    
    <tr><td>
    <s1:datetimepicker label="DOB" name="dOB"/>
    </td></tr>
    
    
    <tr><td>
    <s1:datetimepicker label="Time" name="time"  type="time"/>
    </td></tr>
    
    <tr><td>
    <s:submit  value="Submit"/>
    </td></tr>
</s:form>
      
         
                    
        </div>
        
    </body>
</html>
