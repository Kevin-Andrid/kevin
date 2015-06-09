<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="resetpswstud.aspx.cs" Inherits="IIL_Portal_res_.resetpswstud" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Reset Password</title>
    <link href="resetpassword.css" rel="stylesheet" type="text/css" />

    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.6/jquery.min.js" type = "text/javascript"></script>
    <script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/jquery-ui.min.js" type = "text/javascript"></script>
    <link href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/themes/base/jquery-ui.css" rel = "Stylesheet" type="text/css" /> 

</head>
<body>
    <form id="form2" runat="server">
   
    
    
     <div class="header"></div>
        <div class="content_out">
            <div class="box_border">
                 <br />
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 <asp:Label ID="Lblusername" runat="server" Text="Username:"></asp:Label>
                 <asp:CustomValidator ID="usernameCustomValidator" runat="server" ClientValidationFunction="ValidateloginUserNameTxt" ControlToValidate="txtUserName" Font-Names="Segoe UI" Font-Size="Small" OnServerValidate="usernameCustomValidator_ServerValidate" ValidateEmptyText="True"></asp:CustomValidator>
                 <br />
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtUserName" Width="150px" runat="server" BorderColor="#BABABA" BorderWidth="1px"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="ResetusernameValidator" runat="server" ControlToValidate="txtUserName" ErrorMessage="enter username" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
      
                <asp:Label ID="lblMessage" runat="server" Font-Size="Small"></asp:Label>
                 <br />    
        
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;    
        
                <asp:Button ID="btnResetPassword" runat="server"  Text="Reset Password" OnClick="btnResetPassword_Click" style="margin-left: 0px" Width="110px" />
    
      
            </div>
         </div>
   
    </form>
    <script type="text/javascript">
        function ValidateloginUserNameTxt(source, args) {
            var is_valid = $("#txtUserName").val() != "";
            $("#txtUserName").css("border-color", is_valid ? "#21BF38" : "red");
            args.IsValid = is_valid;
        }
        </script>

</body>
</html>
