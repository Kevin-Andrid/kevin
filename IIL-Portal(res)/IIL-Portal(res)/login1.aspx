<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login1.aspx.cs" Inherits="IIL_Portal_res_.login1" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
  <link rel="stylesheet" href="login.css" type="text/css" />

    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.6/jquery.min.js" type = "text/javascript"></script>
    <script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/jquery-ui.min.js" type = "text/javascript"></script>
    <link href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/themes/base/jquery-ui.css" rel = "Stylesheet" type="text/css" /> 

</head>
<body>
    <form id="form1" runat="server">
        <div class="header">
           <br /><img src="images/Full_Logo_iil_print.png" height="50" width="400" >
        </div>
    <div>
        <div class="content_out">
            <div class="box_border">
            <div class="left">
                 &nbsp;<br />
                 <br />&nbsp;<br />
                 <br />
                 <br />
            </div>
                <div class="right">
                    <asp:Label ID="username" runat="server" Font-Names="Segoe UI" Text="User Name:"></asp:Label>
                    <br />
                    <asp:TextBox ID="loginUserNameTxt" runat="server" BorderColor="#BABABA" BorderWidth="1px" ToolTip="User Name" placeholder="User Name" Height="23px" Width="220px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="usernameValidator" runat="server" ControlToValidate="loginUserNameTxt" ErrorMessage="enter username" ForeColor="Red" Font-Names="Segoe UI" Font-Size="Small"></asp:RequiredFieldValidator>
                    <asp:CustomValidator ID="usernameCustomValidator" runat="server" ControlToValidate="loginUserNameTxt" ClientValidationFunction="ValidateloginUserNameTxt" ValidateEmptyText="True" Font-Names="Segoe UI" Font-Size="Small"></asp:CustomValidator>
                    <br />
                    <br />

                    <asp:Label ID="Password" runat="server" Font-Names="Segoe UI" Text="Password:"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:HyperLink ID="resetlink" runat="server" Text="Forgot Password?" NavigateUrl="~/register/resetpassword.aspx" Font-Size="Small" Font-Names="Segoe UI" ForeColor="#427FED"></asp:HyperLink>
                    <br />
                    <asp:TextBox ID="loginPasswordTxt" runat="server" BorderColor="#BABABA" BorderWidth="1px" TextMode="Password" placeholder="Password" Height="23px" Width="220px" ToolTip="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="passwordValidator" runat="server" ControlToValidate="loginPasswordTxt" ErrorMessage="enter password" ForeColor="Red" Font-Names="Segoe UI" Font-Size="Small"></asp:RequiredFieldValidator>
                    <asp:CustomValidator ID="passwordCustomValidator" runat="server" ControlToValidate="loginPasswordTxt" ClientValidationFunction="ValidateloginPasswordTxt" ValidateEmptyText="True" Font-Names="Segoe UI" Font-Size="Small"></asp:CustomValidator>
                    <br />

                    <asp:CheckBox ID="rememberMe" runat="server" Text="Keep me signed in" Font-Size="Small" Font-Names="Segoe UI" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                     &nbsp;
                    <asp:Label ID="errorMsgLabel" runat="server" ForeColor="Red" Font-Names="Segoe UI"></asp:Label>
                    <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" Text="login" OnClick="login_click" Width="110px" /><br /><br />
                    <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="newuser" runat="server" ForeColor="Black" Text="Create new account" Font-Names="Segoe UI" Font-Size="Small"></asp:Label>
                    ?<asp:HyperLink ID="registerLink" runat="server" ForeColor="#427FED" NavigateUrl="~/register/register.aspx" Font-Names="Segoe UI" Font-Size="Small">register</asp:HyperLink>
                    
                </div>
        </div>
            </div>

    </div>
    </form>
      <script type="text/javascript">
          function ValidateloginUserNameTxt(source, args) {
              var is_valid = $("#loginUserNameTxt").val() != "";
              $("#loginUserNameTxt").css("border-color", is_valid ? "#21BF38" : "red");
              args.IsValid = is_valid;
          }
          function ValidateloginPasswordTxt(source, args) {
              var is_valid = $("#loginPasswordTxt").val() != "";
              $("#loginPasswordTxt").css("border-color", is_valid ? "#21BF38" : "red");
              args.IsValid = is_valid;
          }
          </script>
</body>
</html>

