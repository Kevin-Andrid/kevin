<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admissions.aspx.cs" Inherits="IIL_Portal_res_.admissions" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>

    <link rel="stylesheet" href="bootstudentcss.css" type="text/css" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <link href='http://fonts.googleapis.com/css?family=Philosopher' rel='stylesheet' type='text/css' />

    <link rel="stylesheet" href="css/footer.css" />
    <link href="css/style.css" rel="stylesheet" type="text/css" />
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="dist/css/bootstrap-submenu.min.css" />


    <script src="http://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>
    <script src="dist/js/bootstrap-submenu.min.js"></script>
    <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet" />
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>




</head>
<body>
    <form id="form1" runat="server">
        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12" id="logo_cust">
                <img src="image/logo.png" alt="logo" title="logo" class="img-responsive" />
            </div>
        </div>
        <div class="menu">
            <button class="navbar-toggle" type="button" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>

            <div class="collapse navbar-collapse">
                <ul class="nav navbar-nav">

                    <li><a href="#">Admissions</a></li>
                    <li><a href="sportal.aspx">logout</a></li>


                </ul>

            </div>

        </div>





        <script lang="ja" type="text/javascript">
            function ToUpper(id) {
                document.getElementById(id).value = document.getElementById(id).value.toUpperCase();
            }
        </script>

        <div class="container">
            


            <div class="row">
                
            
                <div class="col-md-12 col-sm-12 col-lg-12 col-xs-12">

                     <div class="pagehead">
                <label>Student Form</label></div>
 <div class="maincenter">
                       <p>
                            <label class="text-base">
                                Student Registration Student Registration No 
                            </label>

                            <asp:DropDownList ID="drpbatch" runat="server" CssClass="cd-dropdown">
                                
                                <asp:ListItem Value="Select">---------------</asp:ListItem>
                                <asp:ListItem Value="JUN15MBA">JUN15MBA</asp:ListItem>
                                <asp:ListItem Value="JUN15BBA">JUN15BBA</asp:ListItem>
                                <asp:ListItem Value="JUN15BCOM">JUN15BCOM</asp:ListItem>
                            </asp:DropDownList>
                           <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="*" InitialValue="Select" ControlToValidate="drpbatch" CssClass="alert-box error"></asp:RequiredFieldValidator>
                          

                            <asp:DropDownList ID="drpplace" runat="server" CssClass="cd-dropdown">
                                 <asp:ListItem Value="Select">---------------</asp:ListItem>
                                <asp:ListItem Value="CHN">CHN</asp:ListItem>
                                <asp:ListItem Value="COH">COH</asp:ListItem>
                            </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ErrorMessage="*" InitialValue="Select" ControlToValidate="drpplace" CssClass="alert-box error"></asp:RequiredFieldValidator>
                            

                            <asp:TextBox ID="rollnum" runat="server" CssClass="ebutt1" Style="width: 50px" MaxLength="4"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="*" ControlToValidate="rollnum" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                               <asp:CustomValidator ID="CustomValidatorrollnum" runat="server" ControlToValidate="rollnum" ClientValidationFunction="Validaterollnum" ValidateEmptyText="True" Font-Names="Segoe UI" Font-Size="Small"></asp:CustomValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator12" runat="server"
                            ControlToValidate="rollnum"
                           ValidationExpression="\d*"
                            Text="Valid Register no" CssClass="alert-box error" />
                        </p>
                        <p>
                            <label class="text-base">
                                Campus
                            </label>

                            <asp:DropDownList ID="drpcampus" runat="server" CssClass="cd-dropdown1">
                               <asp:ListItem Value="Select">---------------</asp:ListItem>
                                <asp:ListItem Value="Chennai">Chennai</asp:ListItem>
                                <asp:ListItem Value="Kochi">Kochi</asp:ListItem>
                                <asp:ListItem Value="Kovai">Kovai</asp:ListItem>
                            </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ErrorMessage="*" InitialValue="Select" ControlToValidate="drpcampus" CssClass="alert-box error"></asp:RequiredFieldValidator>
                          
                           

                        </p>


                        <p>
                            <label class="text-base">
                                Course
                            </label>
                            <asp:DropDownList ID="drpcourse" runat="server" CssClass="cd-dropdown1">
                                <asp:ListItem Value="Select">---------------</asp:ListItem>
                                <asp:ListItem Value="BBA">BBA</asp:ListItem>
                                <asp:ListItem Value="MBA">MBA</asp:ListItem>


                            </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ErrorMessage="*" InitialValue="Select" ControlToValidate="drpcourse" CssClass="alert-box error"></asp:RequiredFieldValidator>
                          





                        </p>
                        <p>
                            <label class="text-base">
                                Internship Option
                            </label>
                            <asp:DropDownList ID="drpintpopn" runat="server" CssClass="cd-dropdown1">
                                  <asp:ListItem Value="Select">---------------</asp:ListItem>
                                <asp:ListItem Value="International">International</asp:ListItem>
                                <asp:ListItem Value="Domestic">Domestic</asp:ListItem>
                                <asp:ListItem Value="Yet to Decide">Yet to Decide</asp:ListItem>
                            </asp:DropDownList>
                          
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ErrorMessage="*" InitialValue="Select" ControlToValidate="drpintpopn" CssClass="alert-box error"></asp:RequiredFieldValidator>


                        </p>
                    </div>
                </div>
                <div class="col-md-4 col-sm-12 col-lg-4 col-xs-12"></div>

            </div>
            <br />
            <br />
            
            <!-------->

          
            <div class="row">
            <div class="col-md-12 col-sm-12 col-lg-12 col-xs-12">
                   <div class="pagehead">
                    <label>Personal Details</label>
                </div>
               
                <div class="maincenter">
                    <p>
                        <label class="text-base">
                            Name
                        </label>
                        <asp:TextBox ID="txtname" runat="server" CssClass="ebutt1" onkeyup="ToUpper(this.id)"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="txtname" ForeColor="Red"></asp:RequiredFieldValidator>
                         <asp:CustomValidator ID="txtnameCustomValidator" runat="server" ControlToValidate="txtname" ClientValidationFunction="Validatetxtname" ValidateEmptyText="True" Font-Names="Segoe UI" Font-Size="Small"></asp:CustomValidator>
                        <asp:RegularExpressionValidator ID="regName" runat="server"
                            ControlToValidate="txtname"
                            ValidationExpression="^[a-zA-Z'.\s]{1,50}"
                            Text="Enter Valid Name" CssClass="alert-box error" />
                    </p>
                     <p>
                        <label class="text-base">Gender</label>                            
                              <asp:DropDownList ID="drpgender" runat="server" CssClass="cd-dropdown1">
                            <asp:ListItem Value="Select">---------------</asp:ListItem>
                            <asp:ListItem Value="Male">Male</asp:ListItem>
                            <asp:ListItem Value="Female">Female</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ErrorMessage="*" ControlToValidate="drpgender" ForeColor="Red" InitialValue="Select"></asp:RequiredFieldValidator>



                    </p>
                    <p>
                        <label class="text-base">
                            Birthdate
                        </label>
                        <asp:TextBox ID="txtdob" runat="server" CssClass="ebutt1" TextMode="Date"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="txtdob" ForeColor="Red"></asp:RequiredFieldValidator>
                    </p>
                    <p>
                        <label class="text-base">Address Line 1</label>
                        <asp:TextBox ID="txtaddress1" runat="server"  CssClass="ebutt1" onkeyup="ToUpper(this.id)"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ControlToValidate="txtaddress1" ForeColor="Red"></asp:RequiredFieldValidator>
                         <asp:CustomValidator ID="CustomValidatortxtaddress1" runat="server" ControlToValidate="txtaddress1" ClientValidationFunction="Validatetxtaddress1" ValidateEmptyText="True" Font-Names="Segoe UI" Font-Size="Small"></asp:CustomValidator>

                    </p>
                    <p>
                        <label class="text-base">Address Line 2</label>
                        <asp:TextBox ID="txtaddress2" runat="server"  CssClass="ebutt1" onkeyup="ToUpper(this.id)"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="*" ControlToValidate="txtaddress2" ForeColor="Red"></asp:RequiredFieldValidator>
                         <asp:CustomValidator ID="CustomValidatortxtaddress2" runat="server" ControlToValidate="txtaddress2" ClientValidationFunction="Validatetxtaddress2" ValidateEmptyText="True" Font-Names="Segoe UI" Font-Size="Small"></asp:CustomValidator>

                    </p>
                    <p>
                        <label class="text-base">
                            City
                        </label>
                        <asp:TextBox ID="txtcity" runat="server" CssClass="ebutt1" onkeyup="ToUpper(this.id)"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*" ControlToValidate="txtcity" ForeColor="Red"></asp:RequiredFieldValidator>
                         <asp:CustomValidator ID="CustomValidatortxtcity" runat="server" ControlToValidate="txtcity" ClientValidationFunction="Validatetxtcity" ValidateEmptyText="True" Font-Names="Segoe UI" Font-Size="Small"></asp:CustomValidator>
                         <asp:RegularExpressionValidator ID="RegularExpressionValidator9" runat="server"
                            ControlToValidate="txtcity"
                            ValidationExpression="^[a-zA-Z ]+$"
                            Text="Enter Correctly" CssClass="alert-box error" />
                    </p>
                    <p>
                        <label class="text-base">State</label>
                        <asp:TextBox ID="txtstate" runat="server" CssClass="ebutt1" onkeyup="ToUpper(this.id)"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="*" ControlToValidate="txtstate" ForeColor="Red"></asp:RequiredFieldValidator>
                         <asp:CustomValidator ID="CustomValidatortxtstate" runat="server" ControlToValidate="txtstate" ClientValidationFunction="Validatetxtstate" ValidateEmptyText="True" Font-Names="Segoe UI" Font-Size="Small"></asp:CustomValidator>

                        <asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server"
                            ControlToValidate="txtstate"
                            ValidationExpression="^[a-zA-Z ]+$"
                            Text="Enter Correctly" CssClass="alert-box error" />
                    </p>







                    <p>
                        <label class="text-base">Pincode</label>
                   
                   
                        <asp:TextBox ID="txtpinc" runat="server" CssClass="ebutt1"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="*" ControlToValidate="txtpinc" ForeColor="Red"></asp:RequiredFieldValidator>
                         <asp:CustomValidator ID="CustomValidatortxtpinc" runat="server" ControlToValidate="txtpinc" ClientValidationFunction="Validatetxtpinc" ValidateEmptyText="True" Font-Names="Segoe UI" Font-Size="Small"></asp:CustomValidator>
                   <asp:RegularExpressionValidator ID="RegularExpressionValidator10" runat="server"
                            ControlToValidate="txtpinc"
                           ValidationExpression="\d*"
                            Text="Enter Correctly" CssClass="alert-box error" />
                    </p>

                   
                    <p>
                        <label class="text-base">
                            Personal Contact
                        </label>
                        <asp:TextBox ID="txtpcont" runat="server" CssClass="ebutt1" onkeyup="ToUpper(this.id)"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="*" ControlToValidate="txtpcont" ForeColor="Red"></asp:RequiredFieldValidator>
                         <asp:CustomValidator ID="CustomValidatortxtpcont" runat="server" ControlToValidate="txtpcont" ClientValidationFunction="Validatetxtpcont" ValidateEmptyText="True" Font-Names="Segoe UI" Font-Size="Small"></asp:CustomValidator>
                         <asp:RegularExpressionValidator ID="RegularExpressionValidator11" runat="server"
                            ControlToValidate="txtpcont"
                           ValidationExpression="\d*"
                            Text="Valid Phone no" CssClass="alert-box error" />

                    </p>

                    

                    

                    <p>
                        <label class="text-base">Institute Email</label>



                        <asp:TextBox ID="txtemail" runat="server" CssClass="ebutt1"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="*" ControlToValidate="txtemail" ForeColor="Red"></asp:RequiredFieldValidator>
                         <asp:CustomValidator ID="CustomValidatortxtemail" runat="server" ControlToValidate="txtemail" ClientValidationFunction="Validatetxtemail" ValidateEmptyText="True" Font-Names="Segoe UI" Font-Size="Small"></asp:CustomValidator>

                        <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server"
                            ControlToValidate="txtemail"
                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                            Text="Enter Valid Email" CssClass="alert-box error" />

                    </p>
                </div>

            </div>
                <div class="col-md-4 col-sm-12 col-lg-4 col-xs-12"></div>
</div>
        </div>



        <div class="center">
            <p>
                <asp:Button ID="btnins" runat="server" Text="Submit" CssClass="buttons" Style="margin-left: 10.5%" OnClick="btnins_Click" />
            </p>



        </div>


        <br />
        <link href="http://localhost:52255/maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet" />
        <div class=" navbar navbar-inverse navbar-static-top">
            <div id="foot">
                <div class="row">

                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <footer>
                            <div class="footer" id="footer">
                                <div class="container">
                                    <div class="row">
                                        <div class="col-lg-2  col-md-2 col-sm-12 col-xs-12">
                                            <h3>IIL Home         
                                                                                      Ipsum </a></li>
                                                <li><a href="#">Lorem Ipsum </a></li>
                                                <li><a href="#">Lorem Ipsum </a></li>
                                                <li><a href="#">Lorem Ipsum </a></li>
                                            </ul>
                                        </div>
                                        <div class="col-lg-2  col-md-2 col-sm-12 col-xs-12">
                                            <h3>About us </h3>
                                            <ul>
                                                <li><a href="#">Lorem Ipsum </a></li>
                                                <li><a href="#">Lorem Ipsum </a></li>
                                                <li><a href="#">Lorem Ipsum </a></li>
                                                <li><a href="#">Lorem Ipsum </a></li>
                                            </ul>
                                        </div>
                                        <div class="col-lg-2  col-md-2 col-sm-12 col-xs-12">
                                            <h3>Admission </h3>
                                            <ul>
                                                <li><a href="#">Lorem Ipsum </a></li>
                                                <li><a href="#">Lorem Ipsum </a></li>
                                                <li><a href="#">Lorem Ipsum </a></li>
                                                <li><a href="#">Lorem Ipsum </a></li>
                                            </ul>
                                        </div>
                                        <div class="col-lg-2  col-md-2 col-sm-12 col-xs-12">
                                            <h3>Academics </h3>
                                            <ul>
                                                <li><a href="#">Lorem Ipsum </a></li>
                                                <li><a href="#">Lorem Ipsum </a></li>
                                                <li><a href="#">Lorem Ipsum </a></li>
                                                <li><a href="#">Lorem Ipsum </a></li>
                                            </ul>
                                        </div>
                                        <div class="col-lg-3  col-md-3 col-sm-12 col-xs-12 ">
                                            <h3>Lorem Ipsum </h3>
                                            <ul>
                                                <li>
                                                    <div class="input-append newsletter-box text-center">
                                                        <input type="text" class="full text-center" placeholder="Email " />
                                                        <button class="btn  bg-gray" type="button">Lorem ipsum <i class="fa fa-long-arrow-right"></i></button>
                                                    </div>
                                                </li>
                                            </ul>
                                            <ul class="social">
                                                <li><a href="#"><i class=" fa fa-facebook"></i></a></li>
                                                <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                                <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                                                <li><a href="#"><i class="fa fa-pinterest"></i></a></li>
                                                <li><a href="#"><i class="fa fa-youtube"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <!--/.row-->
                                </div>
                                <!--/.container-->
                            </div>
                            <!--/.footer-->

                            <div class="footer-bottom">
                                <div class="container">
                                    <p class="pull-left">
                                        Copyright © 2014 Indian Institute of Logistics.
                                        <br />
                                        <br />
                                        <a href="#">Home</a>|<a href="#">About us</a>
                                    </p>
                                    <div class="pull-right">
                                        <a href="http://www.enfosys.in/" target="_blank">
                                            <img src="image/powered1.png" class="img-responsive  " /></a>
                                    </div>
                                </div>
                            </div>
                            <!--/.footer-bottom-->
                        </footer>
                    </div>


                </div>
            </div>
        </div>

        <script>

            $(document).ready(function () {
                $('.js-activated').dropdownHover().dropdown();
            });
        </script>
        <script>
            $('.dropdown-submenu > a').submenupicker();
        </script>


    </form>
     <script type="text/javascript">
         function Validatetxtaddress1(source, args) {
             var is_valid = $("#txtaddress1").val() != "";
             $("#txtaddress1").css("border-color", is_valid ? "#21BF38" : "#e21f26");
             args.IsValid = is_valid;
         }
         function Validatetxtcity(source, args) {
             var is_valid = $("#txtcity").val() != "";
             $("#txtcity").css("border-color", is_valid ? "#21BF38" : "#e21f26");
             args.IsValid = is_valid;
         }
         function Validaterollnum(source, args) {
             var is_valid = $("#rollnum").val() != "";
             $("#rollnum").css("border-color", is_valid ? "#21BF38" : "#e21f26");
             args.IsValid = is_valid;
         }
         function Validatetxtpinc(source, args) {
             var is_valid = $("#txtpin").val() != "";
             $("#txtpin").css("border-color", is_valid ? "#21BF38" : "#e21f26");
             args.IsValid = is_valid;
         }
         function Validatetxtname(source, args) {
             var is_valid = $("#txtname").val() != "";
             $("#txtname").css("border-color", is_valid ? "#21BF38" : "#e21f26");
             args.IsValid = is_valid;
         }
         function Validatetxtpcont(source, args) {
             var is_valid = $("#txtpcont").val() != "";
             $("#txtpcont").css("border-color", is_valid ? "#21BF38" : "#e21f26");
             args.IsValid = is_valid;
         }
         function Validatetxtaddress2(source, args) {
             var is_valid = $("#txtaddress2").val() != "";
             $("#txtaddress2").css("border-color", is_valid ? "#21BF38" : "#e21f26");
             args.IsValid = is_valid;
         }
         
         function Validatetxtstate(source, args) {
             var is_valid = $("#txtstate").val() != "";
             $("#txtstate").css("border-color", is_valid ? "#21BF38" : "#e21f26");
             args.IsValid = is_valid;
         }
         
         function Validatetxtemail(source, args) {
             var is_valid = $("#txtemail").val() != "";
             $("#txtemail").css("border-color", is_valid ? "#21BF38" : "#e21f26");
             args.IsValid = is_valid;
         }
         function Validatetxtpinc(source, args) {
             var is_valid = $("#txtpinc").val() != "";
             $("#txtpinc").css("border-color", is_valid ? "#21BF38" : "#e21f26");
             args.IsValid = is_valid;
         }
    </script>
</body>
</html>
