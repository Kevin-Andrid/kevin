<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="~/studprofile.aspx.cs" MasterPageFile="~/master.Master" Inherits="IIL_Portal_res_.studprofile" %>

<asp:Content ID="body" ContentPlaceHolderID="bodystud" runat="server">
    <link rel="stylesheet" href="bootstudentcss.css" type="text/css" />
     <script src="http://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>
    <script src="dist/js/bootstrap-submenu.min.js"></script>
    <link href="http://localhost:52255/maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet" />
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
 <link href='http://fonts.googleapis.com/css?family=Philosopher' rel='stylesheet' type='text/css' />
    <script lang="ja" type="text/javascript">
        function ToUpper(id) {
            document.getElementById(id).value = document.getElementById(id).value.toUpperCase();
        }
    </script>
 
    
    <div class="container">
        <div class="pagehead">
            <label>Student Form</label>
        </div>

        <div class="row">
            <div class="col-md-6 col-sm-12 col-lg-6 col-xs-12">


                <div class="maincenter1">
                    <p>
                        <label>
                            Student Registration No 
                        </label>
                        <asp:TextBox ID="txtroll" runat="server" CssClass="ebutt" Style="text-transform: uppercase" AutoCompleteType="Disabled" Enabled="False"></asp:TextBox>
                        
       
                    </p>

                    <p>
                        <label>
                            Campus
                        </label>

                        <asp:DropDownList ID="drpplace1" runat="server" CssClass="cd-dropdown">
                            <asp:ListItem Value="Select">---------------</asp:ListItem>
                            <asp:ListItem Value="0">Chennai</asp:ListItem>
                            <asp:ListItem Value="1">Kochi</asp:ListItem>
                            <asp:ListItem>Kovai</asp:ListItem>
                        </asp:DropDownList>
                        
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ErrorMessage="*" InitialValue="Select" ControlToValidate="drpplace1" CssClass="alert-box error"></asp:RequiredFieldValidator>
                    </p>

                </div>
            </div>
            <div class="col-md-6 col-sm-12 col-lg-6 col-xs-12">
                <div class="centermain">
                    <p>
                        <label>
                            Course
                        </label>
                        <asp:DropDownList ID="drpcourse" runat="server" CssClass="cd-dropdown">
                            <asp:ListItem Value="Select">---------------</asp:ListItem>
                             <asp:ListItem Value="0">Logistics</asp:ListItem>
                            <asp:ListItem Value="1">Logistics and Shipping</asp:ListItem>
                        </asp:DropDownList>
                        
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" InitialValue="Select" ControlToValidate="drpcourse" CssClass="alert-box error"></asp:RequiredFieldValidator>
                     </p>
                   
                    <p>
                        <label>
                            Internship Option
                        </label>
                        <asp:DropDownList ID="drpipplace" runat="server" CssClass="cd-dropdown">
                            <asp:ListItem Value="Select">---------------</asp:ListItem>
                            <asp:ListItem Value="0">International</asp:ListItem>
                            <asp:ListItem Value="1">Domestic</asp:ListItem>
                            <asp:ListItem>Yet to Decide</asp:ListItem>
                        </asp:DropDownList>
                        
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" InitialValue="Select" ControlToValidate="drpipplace" CssClass="alert-box error"></asp:RequiredFieldValidator>
                     </p>
                </div>
            </div>

        </div>
        <br />

        <!-------->
        <div class="pagehead">
            <label>Personal Details</label>
        </div>

        <div class="row">
            <div class="col-md-6 col-sm-12 col-lg-6 col-xs-12">


                <div class="centercent1">
                    <p>
                        <label>
                            Name
                        </label>
                        <asp:TextBox ID="txtname" runat="server" CssClass="ebutt" onkeyup="ToUpper(this.id)"></asp:TextBox>
                        
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ControlToValidate="txtname" ForeColor="Red"></asp:RequiredFieldValidator>
                        </p>
                         <asp:CustomValidator ID="txtnameCustomValidator" runat="server" ControlToValidate="txtname" ClientValidationFunction="Validatetxtname" ValidateEmptyText="True" Font-Names="Segoe UI" Font-Size="Small"></asp:CustomValidator>
                        <asp:RegularExpressionValidator ID="regName" runat="server"
                            ControlToValidate="txtname"
                            ValidationExpression="^[a-zA-Z'.\s]{1,50}"
                            Text="Enter Valid Name" CssClass="alert-box error" />

                    
                    <p>
                        <label>
                            Birthdate
                        </label>
                        <asp:TextBox ID="txtdob" runat="server" CssClass="ebutt" TextMode="Date"></asp:TextBox>
                    </p>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*" ControlToValidate="txtdob" ForeColor="Red"></asp:RequiredFieldValidator>
                    <p>
                        <label>Address Line 1</label>
                        <asp:TextBox ID="txtadds1" runat="server" CssClass="ebutt" onkeyup="ToUpper(this.id)"></asp:TextBox>
                    </p>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="*" ControlToValidate="txtadds1" ForeColor="Red"></asp:RequiredFieldValidator>

                    <p>
                        <label>
                            City
                        </label>
                        <asp:TextBox ID="txtcity" runat="server" CssClass="ebutt" onkeyup="ToUpper(this.id)"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="*" ControlToValidate="txtcity" ForeColor="Red"></asp:RequiredFieldValidator>
                         </p>
                         <asp:CustomValidator ID="CustomValidatortxtcity" runat="server" ControlToValidate="txtcity" ClientValidationFunction="Validatetxtcity" ValidateEmptyText="True" Font-Names="Segoe UI" Font-Size="Small"></asp:CustomValidator>
                         <asp:RegularExpressionValidator ID="RegularExpressionValidator9" runat="server"
                            ControlToValidate="txtcity"
                            ValidationExpression="^[a-zA-Z ]+$"
                            Text="Enter Correctly" CssClass="alert-box error" />
                   
                  



                    <p>
                        <label>
                            Father Name
                        </label>
                        <asp:TextBox ID="txtfname" runat="server" CssClass="ebutt" onkeyup="ToUpper(this.id)"></asp:TextBox>

                     <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="*" ControlToValidate="txtfname" ForeColor="Red"></asp:RequiredFieldValidator>
                        </p>
                         <asp:CustomValidator ID="CustomValidatortxtfname" runat="server" ControlToValidate="txtfname" ClientValidationFunction="Validatetxtfname" ValidateEmptyText="True" Font-Names="Segoe UI" Font-Size="Small"></asp:CustomValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
                            ControlToValidate="txtfname"
                            ValidationExpression="^[a-zA-Z'.\s]{1,50}"
                            Text="Enter Valid Name" CssClass="alert-box error" />
                    <p>
                        <label>
                            Personal Contact
                        </label>
                        <asp:TextBox ID="txtpcont" runat="server" CssClass="ebutt"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="*" ControlToValidate="txtpcont" ForeColor="Red"></asp:RequiredFieldValidator>
                         </p>
                         <asp:CustomValidator ID="CustomValidatortxtpcont" runat="server" ControlToValidate="txtpcont" ClientValidationFunction="Validatetxtpcont" ValidateEmptyText="True" Font-Names="Segoe UI" Font-Size="Small"></asp:CustomValidator>
                         <asp:RegularExpressionValidator ID="RegularExpressionValidator11" runat="server"
                            ControlToValidate="txtpcont"
                           ValidationExpression="\d*"
                            Text="Valid Phone no" CssClass="alert-box error" />


                   



                    <p>
                        <label>Personal Email</label>
                        <asp:TextBox ID="txtemail" runat="server" CssClass="ebutt"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="*" ControlToValidate="txtemail" ForeColor="Red"></asp:RequiredFieldValidator>
                         </p>
                         <asp:CustomValidator ID="CustomValidatortxtemail" runat="server" ControlToValidate="txtemail" ClientValidationFunction="Validatetxtemail" ValidateEmptyText="True" Font-Names="Segoe UI" Font-Size="Small"></asp:CustomValidator>

                        <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server"
                            ControlToValidate="txtemail"
                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                            Text="Enter Valid Email" CssClass="alert-box error" />
                   


                </div>
            </div>
            <div class="col-md-6 col-sm-12 col-lg-6 col-xs-12">
                <div class="centcenter">


                    <p>
                        <label>Gender</label>
                        <asp:DropDownList ID="drpgender" runat="server" CssClass="cd-dropdown">
                             <asp:ListItem Value="Select">---------------</asp:ListItem>
                            <asp:ListItem Value="0">Male</asp:ListItem>
                            <asp:ListItem Value="1">Female</asp:ListItem>
                        </asp:DropDownList>
                    </p>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="*" InitialValue="Select" ControlToValidate="drpcourse" CssClass="alert-box error"></asp:RequiredFieldValidator>
                    <p>
                        <label>Native</label>
                        <asp:TextBox ID="txtnative" runat="server" CssClass="ebutt" onkeyup="ToUpper(this.id)"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="*" ControlToValidate="txtnative" ForeColor="Red"></asp:RequiredFieldValidator>
                         </p>
                         <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="txtnative" ClientValidationFunction="Validatetxtnative" ValidateEmptyText="True" Font-Names="Segoe UI" Font-Size="Small"></asp:CustomValidator>
                         <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server"
                            ControlToValidate="txtnative"
                            ValidationExpression="^[a-zA-Z ]+$"
                            Text="Enter Correctly" CssClass="alert-box error" />
                    
                    <p>
                        <label>Address Line 2</label>
                        <asp:TextBox ID="txtadds2" runat="server" CssClass="ebutt" onkeyup="ToUpper(this.id)"></asp:TextBox>
                    </p>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ErrorMessage="*" ControlToValidate="txtadds2" ForeColor="Red"></asp:RequiredFieldValidator>

                    <p>
                        <label>Pincode</label>
                        <asp:TextBox ID="txtpinc" runat="server" CssClass="ebutt" MaxLength="6"></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ErrorMessage="*" ControlToValidate="txtpinc" ForeColor="Red"></asp:RequiredFieldValidator>
                          </p>
                         <asp:CustomValidator ID="CustomValidatortxtpinc" runat="server" ControlToValidate="txtpinc" ClientValidationFunction="Validatetxtpinc" ValidateEmptyText="True" Font-Names="Segoe UI" Font-Size="Small"></asp:CustomValidator>
                   <asp:RegularExpressionValidator ID="RegularExpressionValidator10" runat="server"
                            ControlToValidate="txtpinc"
                           ValidationExpression="\d*"
                            Text="Enter Correctly" CssClass="alert-box error" />
                  

                    <p>
                        <label>
                            Mother Name
                        </label>
                        <asp:TextBox ID="txtmname" runat="server" CssClass="ebutt" onkeyup="ToUpper(this.id)"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ErrorMessage="*" ControlToValidate="txtmname" ForeColor="Red"></asp:RequiredFieldValidator>
                         </p>
                         <asp:CustomValidator ID="CustomValidator2" runat="server" ControlToValidate="txtmname" ClientValidationFunction="Validatetxtmname" ValidateEmptyText="True" Font-Names="Segoe UI" Font-Size="Small"></asp:CustomValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server"
                            ControlToValidate="txtmname"
                            ValidationExpression="^[a-zA-Z'.\s]{1,50}"
                            Text="Enter Valid Name" CssClass="alert-box error" />

                   

                    <p>
                        <label>Parent Contact</label>
                        <asp:TextBox ID="txtparentcon" runat="server" MaxLength="12" CssClass="ebutt"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ErrorMessage="*" ControlToValidate="txtparentcon" ForeColor="Red"></asp:RequiredFieldValidator>
                         </p>
                         <asp:CustomValidator ID="CustomValidator3" runat="server" ControlToValidate="txtparentcon" ClientValidationFunction="Validatetxtparentcon" ValidateEmptyText="True" Font-Names="Segoe UI" Font-Size="Small"></asp:CustomValidator>
                         <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server"
                            ControlToValidate="txtparentcon"
                           ValidationExpression="\d*"
                            Text="Valid Phone no" CssClass="alert-box error" />

                    <p>
                        <label>Institute Email</label>
                        <asp:TextBox ID="txtinsemail" runat="server" CssClass="ebutt"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" ErrorMessage="*" ControlToValidate="txtinsemail" ForeColor="Red"></asp:RequiredFieldValidator>
                         </p>
                         <asp:CustomValidator ID="CustomValidator4" runat="server" ControlToValidate="txtinsemail" ClientValidationFunction="Validatetxtinsemail" ValidateEmptyText="True" Font-Names="Segoe UI" Font-Size="Small"></asp:CustomValidator>

                        <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server"
                            ControlToValidate="txtinsemail"
                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                            Text="Enter Valid Email" CssClass="alert-box error" />
                   

                    

                </div>
            </div>

        </div>
        <br />
        <div class="pagehead">
            <label>Language Know / Internship Location</label>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">

                    <table id="Table1" class="etable" runat="server">
                        <tbody>
                            <tr>
                                <th>Language</th>
                                <th>Read</th>
                                <th>Write</th>
                                <th>Speak</th>
                            </tr>
                            <tr>
                                <td>
                                    <asp:TextBox ID="txtlang1" runat="server" CssClass="etxtlow" onkeyup="ToUpper(this.id)"></asp:TextBox></td>
                                <td>
                                    <asp:CheckBox ID="chkread1" runat="server" /></td>
                                <td>
                                    <asp:CheckBox ID="chkwrite1" runat="server" /></td>
                                <td>
                                    <asp:CheckBox ID="chkspeak1" runat="server" /></td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:TextBox ID="txtlang2" runat="server" CssClass="etxtlow" onkeyup="ToUpper(this.id)"></asp:TextBox></td>
                                <td>
                                    <asp:CheckBox ID="chkread2" runat="server" /></td>
                                <td>
                                    <asp:CheckBox ID="chkwrite2" runat="server" /></td>
                                <td>
                                    <asp:CheckBox ID="chkspeak2" runat="server" /></td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:TextBox ID="txtlang3" runat="server" CssClass="etxtlow" onkeyup="ToUpper(this.id)"></asp:TextBox></td>
                                <td>
                                    <asp:CheckBox ID="chkread3" runat="server" /></td>
                                <td>
                                    <asp:CheckBox ID="chkwrite3" runat="server" /></td>
                                <td>
                                    <asp:CheckBox ID="chkspeak3" runat="server" /></td>
                            </tr>
                        </tbody>
                    </table>

                </div>
           
       
        <!------->
        <br />

       
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">

                    <table id="Table3" class="etable" runat="server" style="margin-left:60%;margin-top:-27.4%">
                        <tbody>
                            <tr>
                                <th >Mother Tongue</th>
                                  <th > Internship Location</th></tr>
                               
                            <tr>
                                 <td >
                                    <asp:TextBox ID="txtmothertng" runat="server" CssClass="etxtlow" onkeyup="ToUpper(this.id)"></asp:TextBox></td>

                         
                            
                                <td >
                                    <asp:DropDownList ID="ddlocation2" runat="server" CssClass="cd-dropdown">
                                        <asp:ListItem>----------</asp:ListItem>
                                        <asp:ListItem>Chennai</asp:ListItem>
                                        <asp:ListItem>Kochi</asp:ListItem>
                                        <asp:ListItem>Bangalore</asp:ListItem>
                                        <asp:ListItem>Mumbai</asp:ListItem>
                                        <asp:ListItem>Delhi</asp:ListItem>
                                        <asp:ListItem>Kolkata</asp:ListItem>
                                        <asp:ListItem>Coimbatore</asp:ListItem>
                                        <asp:ListItem>Vizag</asp:ListItem>
                                        <asp:ListItem>Mundra </asp:ListItem>
                                        <asp:ListItem>Karikal</asp:ListItem>
                                        <asp:ListItem>Kakinada</asp:ListItem>
                                        <asp:ListItem>Goa</asp:ListItem>
                                        <asp:ListItem>Paradip</asp:ListItem>
                                        <asp:ListItem>Tuticorin</asp:ListItem>
                                        <asp:ListItem>Dubai</asp:ListItem>
                                    </asp:DropDownList></td>
                                

                            </tr>
                          
                        </tbody>                     
                    </table>

                   


                </div>

            </div>


        </div>
<br />

        <div class="pagehead">
            <label>Academic Details</label>
        </div>
        <!------>
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="boottable">
                        <table id="Table2" class="etable" runat="server">
                            <tbody>
                                <tr>
                                    <th>Education</th>
                                    <th>Course/Board</th>
                                    <th>Institute Name</th>
                                    <th>City</th>
                                    <th>Percentage (%)</th>
                                    <th>Year of Passing</th>
                                </tr>
                                <tr>
                                    <th>X</th>
                                    <td>
                                        <asp:TextBox ID="TextBox2" runat="server" CssClass="etxtlow" onkeyup="ToUpper(this.id)"></asp:TextBox></td>
                                    <td>
                                        <asp:TextBox ID="TextBox3" runat="server" CssClass="etxthig" onkeyup="ToUpper(this.id)"></asp:TextBox></td>
                                    <td>
                                        <asp:TextBox ID="TextBox4" runat="server" CssClass="etxtlow" onkeyup="ToUpper(this.id)"></asp:TextBox></td>
                                    <td>
                                        <asp:TextBox ID="TextBox5" runat="server" CssClass="etxtlow"></asp:TextBox></td>
                                    <td>
                                        <asp:TextBox ID="TextBox6" runat="server" CssClass="etxtlow"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <th>XII</th>
                                    <td>
                                        <asp:TextBox ID="TextBox7" runat="server" CssClass="etxtlow" onkeyup="ToUpper(this.id)"></asp:TextBox></td>
                                    <td>
                                        <asp:TextBox ID="TextBox8" runat="server" CssClass="etxthig" onkeyup="ToUpper(this.id)"></asp:TextBox></td>
                                    <td>
                                        <asp:TextBox ID="TextBox9" runat="server" CssClass="etxtlow" onkeyup="ToUpper(this.id)"></asp:TextBox></td>
                                    <td>
                                        <asp:TextBox ID="TextBox10" runat="server" CssClass="etxtlow"></asp:TextBox></td>
                                    <td>
                                        <asp:TextBox ID="TextBox11" runat="server" CssClass="etxtlow"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <th>UG</th>
                                    <td>
                                        <asp:TextBox ID="TextBox12" runat="server" CssClass="etxtlow" onkeyup="ToUpper(this.id)"></asp:TextBox></td>
                                    <td>
                                        <asp:TextBox ID="TextBox13" runat="server" CssClass="etxthig" onkeyup="ToUpper(this.id)"></asp:TextBox></td>
                                    <td>
                                        <asp:TextBox ID="TextBox14" runat="server" CssClass="etxtlow" onkeyup="ToUpper(this.id)"></asp:TextBox></td>
                                    <td>
                                        <asp:TextBox ID="TextBox15" runat="server" CssClass="etxtlow"></asp:TextBox></td>
                                    <td>
                                        <asp:TextBox ID="TextBox16" runat="server" CssClass="etxtlow"></asp:TextBox></td>
                                </tr>
                                <tr>
                                    <th>PG</th>
                                    <td>
                                        <asp:TextBox ID="TextBox17" runat="server" CssClass="etxtlow" onkeyup="ToUpper(this.id)"></asp:TextBox></td>
                                    <td>
                                        <asp:TextBox ID="TextBox18" runat="server" CssClass="etxthig" onkeyup="ToUpper(this.id)"></asp:TextBox></td>
                                    <td>
                                        <asp:TextBox ID="TextBox19" runat="server" CssClass="etxtlow" onkeyup="ToUpper(this.id)"> </asp:TextBox></td>
                                    <td>
                                        <asp:TextBox ID="TextBox20" runat="server" CssClass="etxtlow"></asp:TextBox></td>
                                    <td>
                                        <asp:TextBox ID="TextBox21" runat="server" CssClass="etxtlow"></asp:TextBox></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>

                </div>
            </div>
        </div>
        <!------->
        <br />

        <!------>
         <div class="pagehead">
            <label>Uploads</label>
        </div>
        


        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="boottable">
                        <table id="Table5" class="etable" runat="server">
                            <tbody>
                                <tr>
                                    <th colspan="2">Select type of Upload</th>
                                   
                                    
                                </tr>
                                <tr>
                                    
                                    <td>
                                        <asp:DropDownList ID="ddtypeofupload" runat="server" CssClass="cd-dropdown">
                                        <asp:ListItem>-------------</asp:ListItem>
                                        <asp:ListItem>Resume</asp:ListItem>
                                        <asp:ListItem>Passport Photo</asp:ListItem>
                                        <asp:ListItem>Passport Scan Copy</asp:ListItem>
                                       
                                        </asp:DropDownList>
                                    
                                     </td>
                                    <td><asp:Button ID="btnupload" runat="server" Text="Browse" CssClass="btnup" /></td>

                                </tr>
                                
                                
                               
                            </tbody>
                        </table>
                    </div>

                </div>


                 <div class="col-md-12 col-sm-12 col-lg-12 col-xs-12">
                <div class="note">
                    <h2>Note :
                    </h2>
                    <ul>
                        <li>Resume Should be uploaded in(.doc,.pdf) format only</li>
                        <li>Maximum file size should be 1MB (Resume,PassportPhoto(.jpg,.jpeg), Passport Scan Copy(Single file in .jpg,.jpeg,.pdf) format only)</li>
                    </ul>

                </div>

            </div>
            </div>
        </div>
  













        <!------->
       <br />

        <div class="pagehead">
            <label>Work Experience</label>
        </div>

        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <table id="Table4" class="etable" runat="server">
                        <tbody>
                            <tr>
                                <th>Organization</th>
                                <th>Role</th>
                                <th>Description</th>
                                <th>Duration</th>
                                <th>Industry</th>
                            </tr>
                            <tr>
                                <td>
                                    <asp:TextBox ID="txtworkorg1" runat="server" CssClass="etxtlow" onkeyup="ToUpper(this.id)"></asp:TextBox></td>
                                <td>
                                    <asp:TextBox ID="txtworkrole1" runat="server" CssClass="etxthig" onkeyup="ToUpper(this.id)"></asp:TextBox></td>
                                <td>
                                    <asp:TextBox ID="txtworkdesc1" runat="server" CssClass="etxtlow" onkeyup="ToUpper(this.id)"></asp:TextBox></td>
                                <td>
                                    <asp:TextBox ID="txtworkduration1" runat="server" CssClass="etxtlow"></asp:TextBox></td>
                                <td>
                                    <asp:TextBox ID="txtworkindustry1" runat="server" CssClass="etxtlow" onkeyup="ToUpper(this.id)"></asp:TextBox></td>
                            </tr>
                            <tr>

                                <td>
                                    <asp:TextBox ID="txtworkorg2" runat="server" CssClass="etxtlow" onkeyup="ToUpper(this.id)"></asp:TextBox></td>
                                <td>
                                    <asp:TextBox ID="txtworkrole2" runat="server" CssClass="etxthig" onkeyup="ToUpper(this.id)"></asp:TextBox></td>
                                <td>
                                    <asp:TextBox ID="txtworkdesc2" runat="server" CssClass="etxtlow" onkeyup="ToUpper(this.id)"></asp:TextBox></td>
                                <td>
                                    <asp:TextBox ID="txtworkduration2" runat="server" CssClass="etxtlow"></asp:TextBox></td>
                                <td>
                                    <asp:TextBox ID="txtworkindustry2" runat="server" CssClass="etxtlow" onkeyup="ToUpper(this.id)"></asp:TextBox></td>
                            </tr>
                            <tr>

                                <td>
                                    <asp:TextBox ID="txtworkorg3" runat="server" CssClass="etxtlow" onkeyup="ToUpper(this.id)"></asp:TextBox></td>
                                <td>
                                    <asp:TextBox ID="txtworkrole3" runat="server" CssClass="etxthig" onkeyup="ToUpper(this.id)"></asp:TextBox></td>
                                <td>
                                    <asp:TextBox ID="txtworkdesc3" runat="server" CssClass="etxtlow" onkeyup="ToUpper(this.id)"></asp:TextBox></td>
                                <td>
                                    <asp:TextBox ID="txtworkduration3" runat="server" CssClass="etxtlow"></asp:TextBox></td>
                                <td>
                                    <asp:TextBox ID="txtworkindustry3" runat="server" CssClass="etxtlow" onkeyup="ToUpper(this.id)"></asp:TextBox></td>
                            </tr>
                        </tbody>
                    </table>


                </div>
            </div>
        </div>
        <!------->
        <br />

        <div class="pagehead">
            <label>Terms and Conditions</label>
        </div>

        <div class="container">
            <div class="row">
                
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div id="contjus">
                        <h3>IIL</h3>
                        •	IIL is an approved institution of Bharthiar University, Coimbatore. Offering MBA Course under CPP (Center for Participatory Programme).<br />
                        •	For legal purposes, the student is deemed to have been enrolled in IIL, for the entire duration of the course under CPP. For Jurisdiction purpose, the
                            Chennai court shall have exclusive jurisdiction in the matter and the law prevailing in India shall apply.
                        <br />
                        •	Enrollment for the course, together with payment of the required deposits or first installment of fees creates a binding agreement to follow the course
                            and pay the full fees. Even if a student subsequently decides not to complete the course, further no refunds can be made as a seat has been committed
                            to the student for the duration of the programme and the IIL will not entertain any request for refunds.<br />
                        •	IIL offers tuition on a ‘per course’ basis and not based on numbers of hours of instruction which may vary, IIL further requires all students to attend
                            lectures, classes, tests and to submit written works as assigned by lectures and tutors regularly, No classes will be scheduled on public holidays.<br />
                        •	Student will be charged a late fee of Rs.1,500 per week per installment if he/she failed to pay the tuition fee as per installment structure agreed.<br />

                        •   The students will be liable for all legal expenses incurred in recovering late or non-payment of tuition fee on an indemnity basis. In the event of such
                            legal action taken by the training center against you, IIL reserves the right to claim the full amount due from the student.<br/>
                        •   IIL reserves the right to instruct the student from dismisal of the course at any stage if the student fails to fulfill the above requirements or if a student's
                            continued presence would, in the opinion of IIL be detrimental to the well - being of the students and the staff in general. The refund of fees of an
                            expelled student is wholly at the discretion of IIL. <br />
                        •   The Student shall indemnify IIL for any loss or damages occurred as a result of his / her negligence or willful misconduct during practical visits or
                            during the process of training. <br />
                        •   If student changes his / her course of study during the term, no refund will be given for the revised courses if the number of subjects involved are
                            less than that for which original enrollment was accepted. Additional conversion fees will be charged if the change involves an increase in the number
                            of subjects over that of the original enrollment.<br />
                        •   It is the responsibility of the student to ensure that he / she fully complies with the requirements and does the necessary examination registration with
                            the relevant University / Examining body. In this respect, IIL will endeavor to assist the student in whichever way necessary. The student will be
                            charged separately for these services. <br />
                        •   All representation made by IIL regarding the awarding University / Examining body and the external programme are based on information made
                            available by the University / Examining body and are comprehensively contained in IIL printed information or in IIL websites. As the university
                            reserves the right to change programme details without any notice to the student, IL shall not be liable for any representations made about the University
                            / Examining body which will therefore not be deemed as a term of enrollment.<br />
                        •   IIL reserves the right to cancel a course on two weeks’ notice prior to the commencement date of the course where upon any fees paid will be refunded
                            in full. <br />
                        •   IIL Do Not Provide ‘PARKING’ to the students in any of its premises. <br />
                        •   IIL reserves the right to withdraw a subject up to four weeks after commencement date. If it is considered that the subject is not viable whereupon an
                            alternative subject will be offered or a pro-rated refund of the course fees given. <br />
                        •   IIL also reserves the right to vary the subjects offered, the time - table programmes scheduled and teaching staff so as to provide better services to the
                            students or as may be required by the University/ Examining body or by the Ministry of Education. <br />
                        •   All Notes/ handouts, class video tapes and other materials given to students are the intellectual property right of IIL and are given to registered students
                            of the class as consideration for enrollment who agree to respect the intellectual property right of IIL. <br />
                        •   Students who have enrolled for Gulf Plan for IIP/ Project work and the event of the student being rejected by Immigration authority of UAE for a
                            VISA, Institute's responsibility is limited to arranging for the student to continue with the programme in India. <br />
                        •   By Becoming the Student of IIL / signing this Application, you are termed to have accepted with free and full consent all the agreements and contract
                            between you and the institution. And that you have also agreed and accepted all contracts and agreements concluded between IIL and Other Institutions
                            / Companies, for the betterment of the course for which you have registered yourself. <br />
                        •   This training is not meant for ‘JOB’,This is for a “CAREER”and the student is expected to pursue this carer for best results.
                            Diploma/PG Diploma/MBA in Logistics/BBA,Indian Institute of Logistics conducts its own programs in Logistics and related subjects and does not
                            teach any Foreign Institute courses. Bharathiar University, Coimbatore / Good Ocean Maritime (Institute for Logistics)awards its renowned Certificates
                            in Recognition of Excellence of IIL PROGRAMME. The certificate conferred by Bharathiar University/Good Ocean Maritime(Institute of
                            Logistics).IIL/Good Ocean Maritime(Institute of Logistics)does not come under the pureview of ACITE. <br />
                        •   In case the student discontinues the course at any stage or he / she been dismissed from the course, the fees once paid by him / her will not be refunded. <br />
                        •   If the student is paying the fees in parts, then only after the payment of full fees of the course he / she shall be relieved from the course. <br />
                        •   Admission to the course is subject to OAT conducted by IIL at its various centers and the right of admitting a student in a course is reserved to the
                            institution. <br />
                        •   The Student, by filling and duly signing this application, states and declares his/her consent to abide by all the rules and regulations framed by the
                            institution which may be amended from time to time for the betterment of the course / student community. <br />
                        •   The institution reserves the right to make new policies and take decisions at any time for the betterment of the course / student community. <br />
                        •   The student is expected to follow utmost discipline in both inside and outside the campus, failing which he / she shall be liable to be dismissed from
                            the course immediately. <br />
                        •   Enrollment for MBA (Logistics and Shipping) course is subjected to Univeristy’s acceptance. <br />
                        •   IIL (Indian Insititute of Logistics) will interact/ deal with the current batch students only when the students are in Formal Attire like Uniform with tie,
                            shoes and ID card from Monday to Friday. On Saturday Smart Casuals with ID card and Shoes. <br />
                        •   Minimum attendance required by University and UGC is 70%. <br />
                        •   Sudents who are placed shall pay a Lump-sum condonation fee of Rs.5000/-(Rupees Five Thousand only)
                        •   Any student having less than 60% attendancebut,above 50%shall pay a condonation fee of Rs.1000/-(Rupees one thousand only) for every 1%
                            shortage. <br />
                        •   Any student whose Attendance is Less than 70% but, 60% and above shall pay a condonation Fee of Rs.500/- (Rupees Five hundred only) for every
                            1% shortage. <br />
                        •   IIL reserves right of admission to the courses/ programmes offered by





                        <h3>Dubai Plan</h3>
                        •	If admitted students should agree to be bound by the rules & regulations now in force & those that will be made from time to time by Good Ocean Maritime/Hosting Company/ UAEAll rights of admissions for DUBAI PLAN IS RESERVED.<br />
                        •	Visa & Registration fee is non- refundable in the event of rejection of visa of the candidate is not acceptable for IIP by Logistics & Shipping Companies at UAE<br />
                        •	All the students should hold valid passport (min 6 months),if not please apply immediately<br />
                        •	The Duration of IIP is 60 days
                        <br />
                        •	Students has to submit all the documents required for visa processing WITHIN SPECIFIED TIME<br />
                        •	Students should accept all the decisions of the authorities concerned in all matters of Training, Process, Conduct, Process of examinations & Discipline<br />
                        •	Extra Cost other than the specified once in applicable, will be paid additionally by the student<br />
                        •	GML is not responsible, if the student is not acceptable to the company after the student reports to the company in UAE or Disowned by the company for “NOT” reporting regularly to the company, or for any other reasons<br />
                        •	The Above plan is “NOT” for profit model<br />
                        •	The “DUBAI PLAN “ is taken by the student at his/her own cost/Time/Risk<br />
                        •	Students ensure to fix accommodation well in time prior to departure from India<br />
                        •	Students shall hold IIL / GML or its partnering companies responsible for any inconvenience / unforeseen circumstances which may arise druing the course of Unpaid IIP (Dubai Plan) at UAE<br />
                        <br />
                      
                        <div class="remember">
                              <asp:CheckBox ID="rememberMe" runat="server" Text="I agree the terms & Conditions" Font-Size="small" Font-Names="Segoe UI" ForeColor="#333" /> 
                          </div>
                        <p>
                            <asp:Button ID="btnins" runat="server" Text="Submit" Font-Names="Segoe UI" Font-Size="Medium" CssClass="button"  />
                        </p>

                    </div>
                    <br />
                    <br />
                    <br />
                    <br />

                </div>
                
            </div>


            


        </div>


    </div>
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





</asp:Content>
