<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="~/studupload.aspx.cs" MasterPageFile="~/master.Master" Inherits="IIL_Portal_res_.studupload" %>

<asp:Content ID="body" ContentPlaceHolderID="bodystud" runat="server">
    <link rel="stylesheet" href="bootstudentcss.css" type="text/css" />



    <div class="container">
        <div class="pagehead">
            <label>Student Upload</label>
        </div>


        <div class="row">
            <div class="col-md-12 col-sm-12 col-lg-12 col-xs-12">
                <asp:Label ID="lblcomma" runat="server" Text="MAY14GMLCHN9632"></asp:Label>
                <p>
                    <label>Select type of Upload</label>

                    <asp:DropDownList ID="ddupload" runat="server" CssClass="cd-dropdown">
                        <asp:ListItem>Resume</asp:ListItem>
                        <asp:ListItem>Passport Photo</asp:ListItem>
                        <asp:ListItem>Passport Scan Copy</asp:ListItem>
                    </asp:DropDownList>
                </p>

                <p>
                    <asp:FileUpload ID="fuupload" runat="server" CssClass="ebuttbb" /></p>
                  <div class="center">
                        <p>
                            <asp:Button ID="btnupload" runat="server" Text="Upload Now" CssClass="buttons"   />
                        </p>
                        
                    </div>
                    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
               



            </div>
            <div class="col-md-12 col-sm-12 col-lg-12 col-xs-12">
                <div class="note">
                    <h2>Note :
                    </h2>
                    <ul>
                        <li>Resume Should be uploaded in(.doc,.pdf) format only</li>
                        <li>Maximum file size should be 1MB (Resume,PassportPhoto(.jpg,.jpeg), Passport Scan Copy(Single file in .jpg,.jpeg,.pdf) format only)</li>
                    </ul>

                </div>

            </div>

        </div>
    </div>







</asp:Content>
