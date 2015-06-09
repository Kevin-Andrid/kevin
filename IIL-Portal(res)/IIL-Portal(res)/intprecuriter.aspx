<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="intprecuriter.aspx.cs" MasterPageFile="~/internship.Master" Inherits="IIL_Portal_res_.intprecuriter" %>

<asp:Content ID="body" ContentPlaceHolderID="bodyintp" runat="server">
    <link rel="stylesheet" href="bootstudentcss.css" type="text/css" />
    <div class="container">
        <div class="pagehead">
          <label>Internship Result</label>
        </div>

        <div class="row">
            <div class="col-md-6 col-sm-12 col-lg-6 col-xs-12">


                <div class="maincenter2">

                 <p>
                        <label>
                            Select Company
                        </label>
                        <asp:DropDownList ID="ddcmyname" runat="server" CssClass="cd-dropdown"></asp:DropDownList>


                        <asp:Label ID="Label3" runat="server" Text="*Note - Kindly contact admin to add new company name" Font-Italic="True" Font-Size="Smaller"></asp:Label>

                    </p>
                     <p>
                        <label>
                            Student Batch Name
                        </label>
                        <asp:DropDownList ID="drpbatch" runat="server" CssClass="cd-dropdown">
                            <asp:ListItem>--Select Month--</asp:ListItem>
                            <asp:ListItem>JAN</asp:ListItem>
                            <asp:ListItem>FEB</asp:ListItem>
                            <asp:ListItem>MAR</asp:ListItem>
                            <asp:ListItem>APR</asp:ListItem>
                            <asp:ListItem>MAY</asp:ListItem>
                            <asp:ListItem>JUN</asp:ListItem>
                            <asp:ListItem>JUL</asp:ListItem>
                            <asp:ListItem>AUG</asp:ListItem>
                            <asp:ListItem>SEP</asp:ListItem>
                            <asp:ListItem>OCT</asp:ListItem>
                            <asp:ListItem>NOV</asp:ListItem>
                            <asp:ListItem>DEC</asp:ListItem>
                        </asp:DropDownList>
                        <asp:DropDownList ID="ddyear" runat="server" CssClass="cd-dropdown">
                        </asp:DropDownList>
                        <asp:DropDownList ID="ddnobatch" runat="server" CssClass="cd-dropdown">
                            <asp:ListItem>--Select batch--</asp:ListItem>
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            <asp:ListItem>5</asp:ListItem>
                            <asp:ListItem>6</asp:ListItem>
                            <asp:ListItem>7</asp:ListItem>
                            <asp:ListItem>8</asp:ListItem>
                            <asp:ListItem>9</asp:ListItem>
                            <asp:ListItem>10</asp:ListItem>
                        </asp:DropDownList>

                    </p>
                    <p>
                        <label>
                            Type of Department
                        </label>
                        <asp:DropDownList ID="drpcourse" runat="server" CssClass="cd-dropdown">
                            <asp:ListItem>--Select Type--</asp:ListItem>
                            <asp:ListItem>Documentation</asp:ListItem>
                            <asp:ListItem>Operations</asp:ListItem>
                            <asp:ListItem>Sales</asp:ListItem>
                            <asp:ListItem>Marketing</asp:ListItem>
                            <asp:ListItem>Customer Service</asp:ListItem>
                            <asp:ListItem>Administrative Executive</asp:ListItem>
                            <asp:ListItem>Management Trainee</asp:ListItem>
                            <asp:ListItem>Companys Choice</asp:ListItem>
                        </asp:DropDownList>
                    </p>
                    
                    
                </div>
            

       
    
    <div class="center">
                        <p>
                            <asp:Button ID="btnsrc" runat="server" Text="Create List" CssClass="buttons" Style="margin-left: 37.4%" />
                        </p>
                        
                    </div>
    </div>
     </div>
    </div>
</asp:Content>

