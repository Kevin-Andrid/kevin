<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="coemarks.aspx.cs" MasterPageFile="~/coe.Master" Inherits="IIL_Portal_res_.coemarks" %>

<asp:Content ID="body" ContentPlaceHolderID="bodycoe" runat="server">
    <link rel="stylesheet" href="bootstudentcss.css" type="text/css" />


    <div class="container">
        <div class="pagehead">
          <label>Marks</label>
        </div>

        <div class="row">
            <div class="col-md-6 col-sm-12 col-lg-6 col-xs-12">


                <div class="maincenter1">

                  <p>
                        <label>Choose Exame Name :</label>
                        <asp:DropDownList ID="ddbatch" runat="server" CssClass="cd-dropdown"></asp:DropDownList>

                    </p>
                    <p>
                        <asp:Label ID="lblbatchnme" runat="server" Font-Names="Calibri"></asp:Label>
                    </p>
                    
                    <div class="center">
                        <p>
                            <asp:Button ID="btnins" runat="server" Text="Select Exam" CssClass="buttons" Style="margin-left: 37.4%" />
                        </p>
                        <p>
                            <asp:Button ID="btnupd" runat="server" Text="Update" CssClass="buttons" Style="margin-left: 37.4%" />
                        </p>

                    </div>
                </div>
            </div>

        </div>
    </div>
   



</asp:Content>
