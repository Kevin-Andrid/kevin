<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="coecreateexam.aspx.cs" MasterPageFile="~/coe.Master" Inherits="IIL_Portal_res_.coecreateexam" %>

<asp:Content ID="body" ContentPlaceHolderID="bodycoe" runat="server">
    <link rel="stylesheet" href="bootstudentcss.css" type="text/css" />


    <div class="container">
        <div class="pagehead">
          <label>Create Exam</label>
        </div>

        <div class="row">
            <div class="col-md-6 col-sm-12 col-lg-6 col-xs-12">


                <div class="maincenter1">

                   <p>
                        <label>
                            Exam name
                        </label>
                        <asp:TextBox ID="txtexamname" runat="server" CssClass="ebutt" Style="text-transform: uppercase"></asp:TextBox>
                    </p>
                    <div class="center">
                        <p>
                            <asp:Button ID="Button1" runat="server" Text="Create Exam" CssClass="buttons" Style="margin-left: 37.4%" />
                        </p>

                    </div>
                </div>
            </div>

        </div>
    </div>






</asp:Content>
