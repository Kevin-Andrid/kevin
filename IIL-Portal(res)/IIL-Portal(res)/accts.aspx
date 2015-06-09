<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="accts.aspx.cs" MasterPageFile="~/accounts.Master" Inherits="IIL_Portal_res_.accts" %>


<asp:Content ID="body" ContentPlaceHolderID="bodyaccts" runat="server">
    <link rel="stylesheet" href="bootstudentcss.css" type="text/css" />




    <div class="container">
        <div class="pagehead">
            <label>Accounts</label>
        </div>

        <div class="row">
            <div class="col-md-6 col-sm-12 col-lg-6 col-xs-12">


                <div class="maincenter1">

                    <p>
                        <label>Batch</label>
                        <asp:DropDownList ID="ddbatch" runat="server" CssClass="cd-dropdown">
                            <asp:ListItem></asp:ListItem>
                        </asp:DropDownList>

                    </p>
                    <p>
                        <label>Roll No</label>
                        <asp:DropDownList ID="ddrollno" runat="server" CssClass="cd-dropdown">
                        </asp:DropDownList>

                    </p>
                    <p>
                        <label>Name</label>
                        <asp:DropDownList ID="ddstdname" runat="server" CssClass="cd-dropdown">


                            <asp:ListItem></asp:ListItem>
                        </asp:DropDownList>

                    </p>
                    <div class="center">
                        <p>
                            <asp:Button ID="btndel" runat="server" Text="Get Details" Font-Names="Segoe UI" Font-Size="Medium" CssClass="buttons" Style="margin-left:34.5%" />
                        </p>


                    </div>
                </div>
            </div>

        </div>
    </div>

    <!------>
    <!------>
    <br />
    <br />
    <div class="container">
        <div class="pagehead">
            <label>Fee Details</label>
        </div>
        <br />
        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div class="boottable">
                    <table id="Table1" class="etable" runat="server">
                        <tbody>
                            <tr>
                                <th>Type of Fees</th>
                                <th>Paid Amount</th>
                                <th>Receipt Number</th>
                                <th>Date of Payment</th>
                            </tr>
                            <tr>
                                <th>Registration</th>
                                <td>
                                    <asp:TextBox ID="txtreg" runat="server" CssClass="etxtlow"></asp:TextBox></td>
                                <td>
                                    <asp:TextBox ID="txtregrec" runat="server" CssClass="etxtlow"></asp:TextBox></td>
                                <td>
                                    <asp:TextBox ID="dtdor" runat="server" CssClass="etxtlow" TextMode="Date"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <th>Enrollment</th>
                            </tr>
                            <tr>
                                <th>Installment - I</th>
                                <td>
                                    <asp:TextBox ID="txtins1" runat="server" CssClass="etxtlow"></asp:TextBox></td>
                                <td>
                                    <asp:TextBox ID="txtinsrec1" runat="server" CssClass="etxtlow"></asp:TextBox></td>
                                <td>
                                    <asp:TextBox ID="dtins1" runat="server" CssClass="etxtlow" TextMode="Date"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <th>Installment - II</th>
                                <td>
                                    <asp:TextBox ID="txtins2" runat="server" CssClass="etxtlow"></asp:TextBox></td>
                                <td>
                                    <asp:TextBox ID="txtinsrec2" runat="server" CssClass="etxtlow"></asp:TextBox></td>
                                <td>
                                    <asp:TextBox ID="dtins2" runat="server" CssClass="etxtlow" TextMode="Date"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <th>Exam Fee</th>
                                <td>
                                    <asp:TextBox ID="txtexamfee" runat="server" CssClass="etxtlow"></asp:TextBox></td>
                                <td>
                                    <asp:TextBox ID="txtexamrec" runat="server" CssClass="etxtlow"></asp:TextBox></td>
                                <td>
                                    <asp:TextBox ID="dtexamfee" runat="server" CssClass="etxtlow" TextMode="Date"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <th>Arrear Fee</th>
                                <td>
                                    <asp:TextBox ID="txtarrearfee" runat="server" CssClass="etxtlow"></asp:TextBox></td>
                                <td>
                                    <asp:TextBox ID="txtarrearrec" runat="server" CssClass="etxtlow"></asp:TextBox></td>
                                <td>
                                    <asp:TextBox ID="dtarrearfee" runat="server" CssClass="etxtlow" TextMode="Date"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <th>Miscellanous</th>
                                <td>
                                    <asp:TextBox ID="txtmis" runat="server" CssClass="etxtlow"></asp:TextBox></td>
                                <td>
                                    <asp:TextBox ID="txtmisrec" runat="server" CssClass="etxtlow"></asp:TextBox></td>
                                <td>
                                    <asp:TextBox ID="dtmis" runat="server" CssClass="etxtlow" TextMode="Date"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <th>DP Registration</th>
                                <td>
                                    <asp:TextBox ID="txtdpreg" runat="server" CssClass="etxtlow"></asp:TextBox></td>
                                <td>
                                    <asp:TextBox ID="txtdpregrec" runat="server" CssClass="etxtlow"></asp:TextBox></td>
                                <td>
                                    <asp:TextBox ID="dtdpreg" runat="server" CssClass="etxtlow" TextMode="Date"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <th>DP Enrollment</th>
                            </tr>
                            <tr>
                                <th>DP Installment - I</th>
                                <td>
                                    <asp:TextBox ID="txtdpins1" runat="server" CssClass="etxtlow"></asp:TextBox></td>
                                <td>
                                    <asp:TextBox ID="txtdpinsrec1" runat="server" CssClass="etxtlow"></asp:TextBox></td>
                                <td>
                                    <asp:TextBox ID="dtdpins1" runat="server" CssClass="etxtlow" TextMode="Date"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <th>DP Installment - II</th>
                                <td>
                                    <asp:TextBox ID="txtdpins2" runat="server" CssClass="etxtlow"></asp:TextBox></td>
                                <td>
                                    <asp:TextBox ID="txtdpinsrec2" runat="server" CssClass="etxtlow"></asp:TextBox></td>
                                <td>
                                    <asp:TextBox ID="dtdpins2" runat="server" CssClass="etxtlow" TextMode="Date"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <th>DP Miscellanous</th>
                                <td>
                                    <asp:TextBox ID="txtdpmis" runat="server" CssClass="etxtlow"></asp:TextBox></td>
                                <td>
                                    <asp:TextBox ID="txtdpmisrec" runat="server" CssClass="etxtlow"></asp:TextBox></td>
                                <td>
                                    <asp:TextBox ID="dtdpmis" runat="server" CssClass="etxthig" TextMode="Date"></asp:TextBox></td>
                            </tr>
                        </tbody>
                    </table>
                      <div class="center">
                        <p>
                            <asp:Button ID="btnins" runat="server" Text="Submit" Font-Names="Segoe UI" Font-Size="Medium" CssClass="buttons" Style="margin-left: 31%" />
                        </p>


                    </div>
                </div>

            </div>
        </div>

    </div>
    <!------->






</asp:Content>
