<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ttattendance.aspx.cs" MasterPageFile="~/ttraining.Master" Inherits="IIL_Portal_res_.ttattendance" %>

<asp:Content ID="body" ContentPlaceHolderID="bodytrain" runat="server">
    <link rel="stylesheet" href="bootstudentcss.css" type="text/css" />




    <div class="container">
        <div class="pagehead">
            <label>Students E-Library</label>
        </div>



        <div class="row">
            <div class="col-md-6 col-sm-12 col-lg-6 col-xs-12">


                <div class="maincenter1">
                    <p>
                        <label>Choose Batch :</label>
                        <asp:DropDownList ID="ddbatch" runat="server" CssClass="cd-dropdown"></asp:DropDownList>

                    </p>
                    <p>
                        <asp:Label ID="lblbatchnme" runat="server" Font-Names="Calibri"></asp:Label>
                    </p>

                </div>
                <div class="center">
                        <p>
                            <asp:Button ID="btnsrc" runat="server" Text="Get Batch Details" CssClass="buttons" Style="margin-left: 37.4%" />
                        </p>
                        
                    </div>
            </div>
        </div>
      
    </div>









</asp:Content>
