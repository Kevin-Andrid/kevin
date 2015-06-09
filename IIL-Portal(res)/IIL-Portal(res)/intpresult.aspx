<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="intpresult.aspx.cs" MasterPageFile="~/internship.Master" Inherits="IIL_Portal_res_.intpresult" %>

<asp:Content ID="body" ContentPlaceHolderID="bodyintp" runat="server">
    <link rel="stylesheet" href="bootstudentcss.css" type="text/css" />
    <div class="container">
        <div class="pagehead">
          <label>Internship Result</label>
        </div>

        <div class="row">
            <div class="col-md-6 col-sm-12 col-lg-6 col-xs-12">


                <div class="maincenter1">

                  <p>
                    <p>
                    <label>Select Exam Name</label>
                    <asp:DropDownList ID="ddbatch" runat="server" CssClass="cd-dropdown"></asp:DropDownList>
                </p>
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
