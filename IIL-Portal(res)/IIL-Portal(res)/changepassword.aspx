﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="changepassword.aspx.cs" Inherits="IIL_Portal_res_.changepassword" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <link rel="stylesheet" href="logincss.css" type="text/css" />
    <link href='http://fonts.googleapis.com/css?family=Philosopher' rel='stylesheet' type='text/css'/>
    <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
                    <article class="bottom2content">
                   
                     <div class="register">
                        <h2>Change Password</h2></div>
                    <p>
                       <label>Current password</label>
                    <asp:TextBox ID="currentpasswordtxt" runat="server" CssClass="ebutt"></asp:TextBox>
                                  
                              
                    </p>
                    
                    <p>
                        <label>New Password</label>
                        
                <asp:TextBox ID="TextBox1" runat="server" CssClass="ebutt"></asp:TextBox>
                  
                        </p>
  <p>
                        <label>Confirm Password</label>
                        
                 <asp:TextBox ID="txtConfirmNewPassword" TextMode="Password" runat="server" CssClass="ebutt"></asp:TextBox>
                  
                        </p>
                  
                        <p>  <asp:Button ID="btnSave" runat="server" Text="Save Password" CssClass="button" /></p>
                   
                      
                </article>
                
    </form>
</body>
</html>
