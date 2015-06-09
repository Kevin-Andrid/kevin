<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="changepswstud.aspx.cs" Inherits="IIL_Portal_res_.changepswstud" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <link href="changepassword.css" type="text/css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="header"></div>
        <asp:HyperLink ID="welcomelink" runat="server" NavigateUrl="~/welcome/welcome.aspx">Home</asp:HyperLink>
        <div class="main_container">
            <div class="box_border"><br />
             <div class="left">
                <asp:Label ID="lblcurrentpassword" runat="server" Text="Current Password:"></asp:Label><br />
                <br />
                <br />
                <asp:Label ID="lblnewpassword" runat="server" Text="New Password:"></asp:Label><br />
                <br />
                <br />
                <asp:Label ID="lblconfirmpassword" runat="server" Text="Confirm Password:"></asp:Label><br /><br />
            </div>
            
            <div class="right">
                <asp:TextBox ID="currentpasswordtxt" runat="server"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="currentpasswordValidator1" runat="server" ControlToValidate="currentpasswordtxt" ErrorMessage="enter current password" Font-Names="Segoe UI" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                <br /><br />
                <asp:TextBox ID="txtNewPassword" runat="server"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="newpasswordValidator" runat="server" ControlToValidate="txtNewPassword" ErrorMessage="enter new password" Font-Names="Segoe UI" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                <br /><br />
                <asp:TextBox ID="txtConfirmNewPassword" TextMode="Password" runat="server"></asp:TextBox>
                     <br />
                <asp:RequiredFieldValidator ID="confirmpasswordValidator" runat="server" ControlToValidate="txtConfirmNewPassword" ErrorMessage="confirm password" Font-Names="Segoe UI" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                     <br />
                <asp:Label ID="lblMessage" runat="server" Font-Names="Segoe UI" Font-Size="Small" ForeColor="Red"></asp:Label>
                <br />
                <asp:Button ID="btnSave" runat="server" Text="Save Password" onclick="btnSave_Click" Width="108px" />
            </div>
        </div>
      </div>
    
        </form>
    </body>
    </html>
 
            