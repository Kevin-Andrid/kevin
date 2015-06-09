<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="tranadminpage.aspx.cs" Inherits="IIL_Portal_res_.tranpage" MasterPageFile="~/trantimetable.Master" %>

<asp:Content ID="body" ContentPlaceHolderID="bodytrain" runat="server">
    <link rel="stylesheet" href="bootstudentcss.css" type="text/css" />
    <link rel="stylesheet" href="popup.css" type="text/css" />
   <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
    <div class="container">
        <div class="row">
            <link href="popup.css" rel="stylesheet" />
            <div class="col-md-12 col-sm-12 col-lg-12 col-xs-12" style="height: 700px">
                <div class="pagehead">
                    <label>Administrator</label>
                </div>
                <br />
                <div>                    
              <i class="fa fa-user-plus fa-2x" style="color:black"></i>
                    <asp:Button ID="btnaddfaculty" runat="server" Text="Add Faculty" OnClick="btnaddfaculty_Click" CssClass="buttonsub"/>
                     <br /><br />
                    <b><label>Existing Faculty</label></b>
                    <asp:GridView ID="gridviewfaculty" runat="server" CssClass="mGrid1" AutoGenerateColumns="False" DataSourceID="sqlview">
                        <Columns>
                            <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" />
                             <asp:BoundField DataField="dob" HeaderText="DOB" SortExpression="dob" />
                            <asp:BoundField DataField="mobile" HeaderText="Mobile" SortExpression="mobile" />
                            <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
                            <asp:BoundField DataField="bankingname" HeaderText="Banking Name" SortExpression="bankingname" />
                            <asp:BoundField DataField="hourpay" HeaderText="Honorarirum Pay" SortExpression="hourpay" />
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:LinkButton ID="lbedit" runat="server" CommandArgument='<%#Eval("name") %>' OnClick="lbedit_Click" Style="color:black"> <i class="fa fa-pencil-square-o" Style="color:black"></i>Edit</asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="sqlview" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [name], [dob], [mobile], [email], [bankingname], [hourpay] FROM [newfacultydetails]"></asp:SqlDataSource>
                     <br />
                    <br />
                    
                    <div class="center">
                    </div>
                </div>
            </div>
        </div>
    </div>


    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

    <pop:ModalPopupExtender ID="mp1" runat="server" PopupControlID="eventdetails1" TargetControlID="popuphidden"
        BackgroundCssClass="modalBackground2">
    </pop:ModalPopupExtender>
    <asp:HiddenField ID="popuphidden" runat="server" />
    <asp:Panel ID="eventdetails1" runat="server" CssClass="modalPopup2" align="center" Style="display: none">

        <div class="header2">
            <label>Add New Faculty</label>
            <div class="close">
                <asp:LinkButton ID="linkclose" ValidationGroup="none" runat="server" OnClick="linkclose_Click"><i class="fa fa-times"></i></asp:LinkButton>
              
            </div>
        </div>
        <br />

        <div class="mbody">

            <div class="class1">
                <asp:Label ID="lblfaculty" runat="server" CssClass="lblfixed">Faculty Name</asp:Label>
                <asp:TextBox ID="txtname" runat="server" CssClass="classright"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtname" ErrorMessage="Enter Valid Name" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
            <br />
            <br />

            <div class="class1">
                <asp:Label ID="lblemail" runat="server" CssClass="lblfixed">Email Id</asp:Label>
                <asp:TextBox ID="txtemail" runat="server" CssClass="classright"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtemail" ErrorMessage="Enter Valid Email Id" Font-Size="Small" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </div>
            <br />
            <br />

            <div class="class1">
                <asp:Label ID="lblmobile" runat="server" CssClass="lblfixed">Mobile Number</asp:Label>
                <asp:TextBox ID="txtmobile" runat="server" CssClass="classright"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtmobile" ErrorMessage="Enter Valid Phone Number" Font-Size="Small" ForeColor="Red" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
            </div>
            <br />
            <br />

            <div class="class1">
                <asp:Label ID="lblbank" runat="server" CssClass="lblfixed">Banking Name</asp:Label>
                <asp:TextBox ID="txtbankname" runat="server" CssClass="classright"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter Banking Name" ControlToValidate="txtbankname" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
            <br />
            <br />

            <div class="class1">
                <asp:Label ID="lblpay" runat="server" CssClass="lblfixed">Honorarium Pay</asp:Label>
                <asp:TextBox ID="txthourpay" runat="server" CssClass="classright"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txthourpay" ErrorMessage="Enter Correct Payment" Font-Size="Small" ForeColor="Red"></asp:RequiredFieldValidator>
            </div>
            <br />
            <br />

            <div class="class1">
            <asp:Label ID="Label1" runat="server" Text="DOB" CssClass="lblfixed"></asp:Label>
            <asp:TextBox ID="txtdob" runat="server" CssClass="classright" TextMode="Date"></asp:TextBox>
          </div>
              

            <asp:Button ID="btnsavefaculty" runat="server" PostBack="true" OnClick="btnsavefaculty_Click" Text="Save" />

        </div>
    </asp:Panel>

</asp:Content>
