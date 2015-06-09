<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="registerstud.aspx.cs" Inherits="IIL_Portal_res_.registerstud" %>

<!DOCTYPE html>


<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Register</title>
    <link rel="stylesheet" type="text/css" href="loginss.css"/>
    <link href='http://fonts.googleapis.com/css?family=Philosopher' rel='stylesheet' type='text/css'/>
    <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet" />
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.6/jquery.min.js" type = "text/javascript"></script>
    <script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/jquery-ui.min.js" type = "text/javascript"></script>
    <link href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/themes/base/jquery-ui.css" rel = "Stylesheet" type="text/css" /> 

</head>
<body>
    <form id="form1" runat="server">
        
    <article class="bottom2content">
                   
                     <div class="register">
                        <h2>Register</h2></div>
                    <p>
                       <label>User Name</label>

                <asp:TextBox ID="regUserTxt" runat="server" CssClass="ebutt"></asp:TextBox>
                          <asp:RequiredFieldValidator ID="regUsernameValidator" runat="server" ControlToValidate="regUserTxt" ErrorMessage="enter username" ForeColor="Red" Font-Size="Small"></asp:RequiredFieldValidator>
                
                <asp:CustomValidator ID="usernameCustomValidator" runat="server" ControlToValidate="regUserTxt" ClientValidationFunction="ValidateusernameTxt" ValidateEmptyText="True"></asp:CustomValidator>
                     
                </p>
        <p>
                        <label>Password</label>

                <asp:TextBox ID="regPasswordTxt" runat="server" TextMode="Password" CssClass="ebutt"></asp:TextBox>
                <asp:CustomValidator ID="passwordCustomValidator" runat="server" ControlToValidate="regPasswordTxt" ClientValidationFunction="ValidateregPasswordTxt" ValidateEmptyText="True"></asp:CustomValidator>
             <asp:RequiredFieldValidator ID="regPasswordValidator" runat="server" ControlToValidate="regPasswordTxt" ErrorMessage="enter password" ForeColor="Red" Font-Size="Small"></asp:RequiredFieldValidator>
              
               
               </p>
        <p>
             <label>Confirm Password</label>
                <asp:TextBox ID="conformPasswordTxt" runat="server" CssClass="ebutt" TextMode="Password"></asp:TextBox>
               <asp:RequiredFieldValidator ID="conformPasswordValidator" runat="server" ControlToValidate="conformPasswordTxt" ErrorMessage="confirm password" ForeColor="Red" Font-Size="Small"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="ComparePasswordValidator" runat="server" ControlToCompare="conformPasswordTxt" ControlToValidate="regPasswordTxt" ErrorMessage="password dosen't match" ForeColor="Red" Font-Size="Small"></asp:CompareValidator>
               <asp:CustomValidator ID="conformPasswordCustomValidator" runat="server" ControlToValidate="conformPasswordTxt" ClientValidationFunction="ValidateconformPasswordTxt" ValidateEmptyText="True"></asp:CustomValidator>
              </p>
         <p>
                        <label>Email</label>  
                <asp:TextBox ID="regEmailTxt" runat="server"  CssClass="ebutt" ></asp:TextBox>
              <asp:RequiredFieldValidator ID="regEmailValidator" runat="server" ControlToValidate="regEmailTxt" ErrorMessage="enter email address" ForeColor="Red" Font-Size="Small"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="regEmailTxt" ErrorMessage="enter a valid email address" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Font-Size="Small"></asp:RegularExpressionValidator>
                <asp:CustomValidator ID="emailCustomValidator" runat="server" ControlToValidate="regEmailTxt" ClientValidationFunction="ValidateregEmailTxt" ValidateEmptyText="True"></asp:CustomValidator>
                </p>
        <p>
                     <asp:Label ID="lblRegMsg" runat="server" ForeColor="Red"></asp:Label>
        </p>
               
          
          <p>
             
                 <asp:Button ID="registerBtn" runat="server" CssClass="button"  Text="Register" OnClick="Button1_Click" />
               <asp:HyperLink ID="loginLink" runat="server" Font-Names="Segoe UI" Style="margin-left:80%" ForeColor="#2672EC" NavigateUrl="~/loginFolder/loginstud.aspx">Login</asp:HyperLink>
        </p>

        </article>
        
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
