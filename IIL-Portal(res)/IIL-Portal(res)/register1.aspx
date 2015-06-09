<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register1.aspx.cs" Inherits="IIL_Portal_res_.register1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Register</title>
    <link rel="stylesheet" type="text/css" href="register.css" />

        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.6/jquery.min.js" type = "text/javascript"></script>
    <script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/jquery-ui.min.js" type = "text/javascript"></script>
    <link href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/themes/base/jquery-ui.css" rel = "Stylesheet" type="text/css" /> 

</head>
<body>
    <form id="form1" runat="server">
        <div class="header"></div><br /><br />
    <div>
    
        <div class="main_container">
            <div class="box_border"><br />
            <div class="left">
                <asp:Label ID="username" runat="server" Text="Username"></asp:Label>:
                <br /><br /><br />
                <asp:Label ID="password" runat="server" Text="Password"></asp:Label>:<br />
                <br /><br />
                <asp:Label ID="confirm_password" runat="server" Text="Confirm password"></asp:Label>:<br />
                <br /><br />
                <asp:Label ID="email" runat="server" Text="Email"></asp:Label>:
            </div>
            <div class="right">
                <asp:TextBox ID="regUserTxt" runat="server" BorderWidth="1px" BorderColor="#BABABA"></asp:TextBox>
                
                <asp:CustomValidator ID="usernameCustomValidator" runat="server" ControlToValidate="regUserTxt" ClientValidationFunction="ValidateusernameTxt" ValidateEmptyText="True"></asp:CustomValidator>
                
                <br />
                <asp:RequiredFieldValidator ID="regUsernameValidator" runat="server" ControlToValidate="regUserTxt" ErrorMessage="enter username" ForeColor="Red" Font-Size="Small"></asp:RequiredFieldValidator>
                <br /><br />
                <asp:TextBox ID="regPasswordTxt" runat="server" BorderWidth="1px" BorderColor="#BABABA" TextMode="Password"></asp:TextBox>
                <asp:CustomValidator ID="passwordCustomValidator" runat="server" ControlToValidate="regPasswordTxt" ClientValidationFunction="ValidateregPasswordTxt" ValidateEmptyText="True"></asp:CustomValidator>
                <br />
                <asp:RequiredFieldValidator ID="regPasswordValidator" runat="server" ControlToValidate="regPasswordTxt" ErrorMessage="enter password" ForeColor="Red" Font-Size="Small"></asp:RequiredFieldValidator>
                <br /><br />    
                <asp:TextBox ID="conformPasswordTxt" runat="server" BorderWidth="1px" BorderColor="#BABABA" TextMode="Password"></asp:TextBox>
                <asp:CompareValidator ID="ComparePasswordValidator" runat="server" ControlToCompare="conformPasswordTxt" ControlToValidate="regPasswordTxt" ErrorMessage="password dosen't match" ForeColor="Red" Font-Size="Small"></asp:CompareValidator>
                <br />
                <asp:RequiredFieldValidator ID="conformPasswordValidator" runat="server" ControlToValidate="conformPasswordTxt" ErrorMessage="confirm password" ForeColor="Red" Font-Size="Small"></asp:RequiredFieldValidator>
                <asp:CustomValidator ID="conformPasswordCustomValidator" runat="server" ControlToValidate="conformPasswordTxt" ClientValidationFunction="ValidateconformPasswordTxt" ValidateEmptyText="True"></asp:CustomValidator>
                <br />
                <asp:TextBox ID="regEmailTxt" runat="server" Height="16px" Width="169px" BorderWidth="1px" BorderColor="#BABABA"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="regEmailTxt" ErrorMessage="enter a valid email address" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Font-Size="Small"></asp:RegularExpressionValidator>
                <br />
                <asp:RequiredFieldValidator ID="regEmailValidator" runat="server" ControlToValidate="regEmailTxt" ErrorMessage="enter email address" ForeColor="Red" Font-Size="Small"></asp:RequiredFieldValidator>
                <asp:CustomValidator ID="emailCustomValidator" runat="server" ControlToValidate="regEmailTxt" ClientValidationFunction="ValidateregEmailTxt" ValidateEmptyText="True"></asp:CustomValidator>
                <br />
                <asp:Label ID="lblRegMsg" runat="server" ForeColor="Red"></asp:Label>
          </div>
          <div class="btns">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="registerBtn" runat="server" Text="Register" OnClick="Button1_Click" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:HyperLink ID="loginLink" runat="server" ForeColor="#9966FF" NavigateUrl="~/login.aspx">Login</asp:HyperLink>
        </div>
    </div>
        </div></div>
    </form>
    <script type="text/javascript">

        function ValidateusernameTxt(source, args) {
            var is_valid = $("#regUserTxt").val() != "";
            $("#regUserTxt").css("border-color", is_valid ? "#21BF38" : "red");
            args.IsValid = is_valid;
        }
        function ValidateregPasswordTxt(source, args) {
            var is_valid = $("#regPasswordTxt").val() != "";
            $("#regPasswordTxt").css("border-color", is_valid ? "#21BF38" : "red");
            args.IsValid = is_valid;
        }
        function ValidateconformPasswordTxt(source, args) {
            var is_valid = $("#conformPasswordTxt").val() != "";
            $("#conformPasswordTxt").css("border-color", is_valid ? "#21BF38" : "red");
            args.IsValid = is_valid;
        }
        function ValidateregEmailTxt(source, args) {
            var is_valid = $("#regEmailTxt").val() != "";
            $("#regEmailTxt").css("border-color", is_valid ? "#21BF38" : "red");
            args.IsValid = is_valid;
        }
        </script>
</body>
</html>
