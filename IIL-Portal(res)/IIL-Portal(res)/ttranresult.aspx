<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ttranresult.aspx.cs" MasterPageFile="~/ttraining.Master" Inherits="IIL_Portal_res_.ttranresult" %>

<asp:Content ID="body" ContentPlaceHolderID="bodytrain" runat="server">
    <link rel="stylesheet" href="bootstudentcss.css" type="text/css" />

    <div class="container">
        <div class="pagehead">
            <label>Result</label>
        </div>

        <div class="row">
            <div class="col-md-6 col-sm-12 col-lg-6 col-xs-12">


                <div class="maincenter1">

                    <p>
                        <label>Select Exam Name</label>
                        <asp:DropDownList ID="ddbatch" runat="server" CssClass="cd-dropdown"></asp:DropDownList>


                    </p>


                </div>
                <div class="center">
                        <p>
                            <asp:Button ID="Button1" runat="server" Text="Submit" CssClass="buttons" Style="margin-left: 37.4%" />
                        </p>
                        
                    </div>
            </div>
        </div>
        
                  
    </div>


</asp:Content>
