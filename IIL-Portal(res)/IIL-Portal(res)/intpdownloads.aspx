<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="intpdownloads.aspx.cs" MasterPageFile="~/internship.Master" Inherits="IIL_Portal_res_.intpdownloads" %>

<asp:Content ID="body" ContentPlaceHolderID="bodyintp" runat="server">
    <link rel="stylesheet" href="bootstudentcss.css" type="text/css" />
    <div class="container">
        <div class="pagehead">
          <label>Internship Downloads</label>
        </div>

        <div class="row">
            <div class="col-md-6 col-sm-12 col-lg-6 col-xs-12">


                <div class="maincenter1">

                  <p>
                    <label>Batch</label>
                    <asp:DropDownList ID="ddbatch" runat="server" CssClass="cd-dropdown"></asp:DropDownList>
                </p>

                    
                    <div class="center">
                        <p>
                            <asp:Button ID="btnsrc" runat="server" Text="Search" CssClass="buttons" Style="margin-left: 37.4%" />
                        </p>
                        
                    </div>
                </div>
            </div>

        </div>
    </div>
  


</asp:Content>
