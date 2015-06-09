<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="coecreatelist.aspx.cs" MasterPageFile="~/coe.Master" Inherits="IIL_Portal_res_.coecreatelist" %>

<asp:Content ID="body" ContentPlaceHolderID="bodycoe" runat="server">
    <link rel="stylesheet" href="bootstudentcss.css" type="text/css" />


    <div class="container">
        <div class="pagehead">
          <label>Create Exam List</label>
        </div>

        <div class="row">
            <div class="col-md-6 col-sm-12 col-lg-6 col-xs-12">


                <div class="maincenter1">

                   <p>
                        <label>Exam name</label>
                        <asp:DropDownList ID="ddexamname" runat="server" CssClass="cd-dropdown"></asp:DropDownList>

                    </p>
                    <p>
                        <label>Batch</label>
                        <asp:DropDownList ID="ddbatch" runat="server" CssClass="cd-dropdown"></asp:DropDownList>

                    </p>
                    
                    <div class="center">
                        <p>
                            <asp:Button ID="btnins" runat="server" Text="Generate List" CssClass="buttons" Style="margin-left: 37.4%" />
                        </p>
                        <p>
                            <asp:Button ID="btnupd" runat="server" Text="Generate List" CssClass="buttons" Style="margin-left: 37.4%" />
                        </p>

                    </div>
                </div>
            </div>

        </div>
    </div>
    




</asp:Content>
