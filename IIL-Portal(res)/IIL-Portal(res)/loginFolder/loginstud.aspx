<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="loginstud.aspx.cs" Inherits="IIL_Portal_res_.loginstud" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
     <link rel="stylesheet" href="loginss.css" type="text/css" />
     <link href='http://fonts.googleapis.com/css?family=Philosopher' rel='stylesheet' type='text/css'/>
    <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet" />  
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.6/jquery.min.js" type="text/javascript"></script>
   
    <link href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/themes/base/jquery-ui.css" rel="Stylesheet" type="text/css" />

</head>
<body>
    <form id="form1" runat="server">
        <article class="bottom1content">

            <div class="heading">
                <h2>Log In</h2>
            </div>
            <p>
               
                 <i class="fa fa-user"></i><asp:TextBox ID="loginUserNameTxt" runat="server" ToolTip="User Name" placeholder="User Name / Email" CssClass="ebutt"></asp:TextBox>
                <asp:RequiredFieldValidator ID="usernameValidator" runat="server" ControlToValidate="loginUserNameTxt" ErrorMessage="*Enter Username" ForeColor="Red" Font-Names="Segoe UI" Font-Size="Small"></asp:RequiredFieldValidator>
                <asp:CustomValidator ID="usernameCustomValidator" runat="server" ControlToValidate="loginUserNameTxt" ClientValidationFunction="ValidateloginUserNameTxt" ValidateEmptyText="True" Font-Names="Segoe UI" Font-Size="Small"></asp:CustomValidator>
            </p>


            <p>

                
                <i class="fa fa-lock"></i><asp:TextBox ID="loginPasswordTxt" runat="server" TextMode="Password" placeholder="Password" CssClass="ebutt" ToolTip="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="passwordValidator" runat="server" ControlToValidate="loginPasswordTxt" ErrorMessage="*Enter Password" ForeColor="Red" Font-Names="Segoe UI" Font-Size="Small"></asp:RequiredFieldValidator>
                
                <asp:CustomValidator ID="passwordCustomValidator" runat="server" ControlToValidate="loginPasswordTxt" ClientValidationFunction="ValidateloginPasswordTxt" ValidateEmptyText="True" Font-Names="Segoe UI" Font-Size="Small"></asp:CustomValidator>
            </p>
            <p>
                <asp:Button ID="Button1" runat="server" Text="login" OnClick="login_click" CssClass="button" />
            </p>
            <p>

                <asp:CheckBox ID="rememberMe" runat="server" Text="Keep me signed in" Font-Size="Small" Font-Names="Segoe UI" />
            </p>
            <p><asp:HyperLink ID="resetlink" runat="server" Text="Forgot Password?" NavigateUrl="~/loginFolder/resetpswstud.aspx" Font-Size="Small" Font-Names="Segoe UI semibold" ForeColor="#427FED" Style="text-decoration:none"></asp:HyperLink></p>
            <p><asp:HyperLink ID="registerLink" runat="server" ForeColor="#427FED" NavigateUrl="~/loginFolder/registerstud.aspx" Font-Names="Segoe UI semibold" Font-Size="Small" Style="text-decoration:none">Create Account</asp:HyperLink></p>

            <asp:Label ID="errorMsgLabel" runat="server" ForeColor="Red" Font-Names="Segoe UI"></asp:Label>
            
        </article>
        
        


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
