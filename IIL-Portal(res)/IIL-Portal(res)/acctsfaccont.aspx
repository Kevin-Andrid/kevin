<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="~/acctsfaccont.aspx.cs" MasterPageFile="~/accounts.Master" Inherits="IIL_Portal_res_.acctsfaccont" %>


<asp:Content ID="body" ContentPlaceHolderID="bodyaccts" runat="server">
    <link rel="stylesheet" href="bootstudentcss.css" type="text/css" />




    <div class="container">
        <div class="pagehead">
            <label>Faculty Contact</label>
        </div>

        <div class="row">
            <div class="col-md-6 col-sm-12 col-lg-6 col-xs-12">


                <div class="maincenter1">

                    <p>
                        <label>Select location</label>
                        <asp:DropDownList ID="ddbatch" runat="server" CssClass="cd-dropdown">

                            <asp:ListItem>Chennai</asp:ListItem>
                            <asp:ListItem>Kochi</asp:ListItem>
                            <asp:ListItem>Kovai</asp:ListItem>


                        </asp:DropDownList>

                    </p>

                    <div class="center">
                        <p>
                            <asp:Button ID="Button1" runat="server" Text="Search" CssClass="buttons" Style="margin-left: 37.4%" />
                        </p>

                    </div>
                </div>
            </div>

        </div>
    </div>


</asp:Content>
