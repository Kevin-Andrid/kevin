<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="~/studresult.aspx.cs" MasterPageFile="~/master.Master" Inherits="IIL_Portal_res_.studresult" %>

<asp:Content ID="body" ContentPlaceHolderID="bodystud" runat="server">
    <link rel="stylesheet" href="bootstudentcss.css" type="text/css" />


    <div class="container">
        <div class="pagehead">
            <label>Student Result</label>
        </div>
        <br />
        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div class="boottable">
                    <table id="Table1" class="etable" runat="server">
                        <tbody>
                            <tr>
                                <th>Subjects</th>
                                <th>Result</th>
                            </tr>
                            <tr>
                                <th>FOL</th>
                                <td>
                                    <asp:TextBox ID="TextBox2" runat="server" CssClass="etxtlow" Enabled="False"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <th>IBM</th>
                                <td>
                                    <asp:TextBox ID="TextBox8" runat="server" CssClass="etxtlow" Enabled="False"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <th>ITS</th>
                                <td>
                                    <asp:TextBox ID="TextBox14" runat="server" CssClass="etxtlow" Enabled="False"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <th>PA</th>
                                <td>
                                    <asp:TextBox ID="TextBox1" runat="server" CssClass="etxtlow" Enabled="False"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <th>STEV</th>
                                <td>
                                    <asp:TextBox ID="TextBox21" runat="server" CssClass="etxtlow" Enabled="False"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <th>CP</th>
                                <td>
                                    <asp:TextBox ID="TextBox7" runat="server" CssClass="etxtlow" Enabled="False"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <th>TDM</th>
                                <td>
                                    <asp:TextBox ID="TextBox22" runat="server" CssClass="etxtlow" Enabled="False"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <th>WHIM</th>
                                <td>
                                    <asp:TextBox ID="TextBox29" runat="server" CssClass="etxtlow" Enabled="False"></asp:TextBox></td>
                            </tr>
                        </tbody>
                    </table>


                </div>

            </div>
        </div>
    </div>




</asp:Content>
