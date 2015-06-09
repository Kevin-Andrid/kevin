<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="intpstaff.aspx.cs" MasterPageFile="~/internship.Master" Inherits="IIL_Portal_res_.intpstaff" %>

<asp:Content ID="body" ContentPlaceHolderID="bodyintp" runat="server">
    <link rel="stylesheet" href="bootstudentcss.css" type="text/css" />

    <div class="container">
        <div class="pagehead">
            <label>Add Student Internship/ Placement Details</label>
        </div>
        <br />
        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div class="boottable">
                    <table id="Table1" class="etable" runat="server">
                        <tbody>
                            <tr>
                                <th>Batch</th>
                                <th>Roll Number</th>
                                <th>Name</th>
                                <th>Date</th>
                                <th>Company Name</th>
                                <th>Interview Type</th>
                                <th>Status</th>
                            </tr>
                            <tr>
                                <td>
                                    <asp:DropDownList ID="ddbatch" runat="server" CssClass="cd-dropdown"></asp:DropDownList>

                                </td>
                                <td>
                                    <asp:DropDownList ID="ddroll" runat="server" CssClass="cd-dropdown"></asp:DropDownList>

                                </td>
                                <td>
                                    <asp:DropDownList ID="ddname" runat="server" CssClass="cd-dropdown"></asp:DropDownList>

                                </td>
                                <td>
                                    <asp:TextBox ID="txtdate" runat="server" CssClass="etxtlow" TextMode="Date"></asp:TextBox></td>
                                <td>
                                    <asp:TextBox ID="txtcomp" runat="server" CssClass="etxtlow"></asp:TextBox></td>
                                <td>
                                    <asp:DropDownList ID="ddinterview" runat="server" CssClass="cd-dropdown">
                                        <asp:ListItem>Internship</asp:ListItem>
                                        <asp:ListItem>Placement</asp:ListItem>
                                    </asp:DropDownList></td>
                                <td>
                                    <asp:DropDownList ID="ddstatus" runat="server" CssClass="cd-dropdown">
                                        <asp:ListItem>Selected</asp:ListItem>
                                        <asp:ListItem>Waiting</asp:ListItem>
                                        <asp:ListItem>Re-Appear</asp:ListItem>
                                    </asp:DropDownList></td>

                            </tr>
                        </tbody>
                    </table>
                </div>

            </div>
        </div>
        <div class="center">
            <p>
                <asp:Button ID="btnins" runat="server" Text="Submit" Font-Names="Calibri" CssClass="buttons" /></p>


        </div>
    </div>




</asp:Content>
