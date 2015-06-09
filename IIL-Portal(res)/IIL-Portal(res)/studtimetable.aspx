<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="~/studtimetable.aspx.cs" MasterPageFile="~/master.Master" Inherits="IIL_Portal_res_.studtimetable" %>

<asp:Content ID="body" ContentPlaceHolderID="bodystud" runat="server">
    <link rel="stylesheet" href="bootstudentcss.css" type="text/css" />


    <div class="container">
        <div class="pagehead">
            <label>Student TimeTable</label>
        </div>

        <div class="row">
            <div class="col-md-6 col-sm-12 col-lg-6 col-xs-12">


                <div class="maincenter1">
                    <p>
                        <label>
                            Batch
                        </label>
                        <asp:DropDownList ID="ddbatch" runat="server" CssClass="cd-dropdown"></asp:DropDownList>

                    </p>

                    <p>
                        <label>
                            Campus
                        </label>
                        <asp:DropDownList ID="ddcamp" runat="server" CssClass="cd-dropdown" AutoPostBack="true">
                            <asp:ListItem>CHN</asp:ListItem>
                            <asp:ListItem>COK</asp:ListItem>
                        </asp:DropDownList>
                    </p>


                </div>
            </div>
            <div class="col-md-6 col-sm-12 col-lg-6 col-xs-12">
                <div id="centermain">
                    <p>
                        <label>
                            Week
                        </label>
                        <asp:DropDownList ID="ddweek" runat="server" CssClass="cd-dropdown">
                        </asp:DropDownList>

                    </p>
                    <p>
                        <label>
                            From Date
                        </label>
                        <span style="font-size: 12px">
                            <asp:Label ID="lblfrom" runat="server" Text="" CssClass="lbl"></asp:Label></span>
                    </p>
                    <p>
                        <label>
                            To Date
                        </label>
                        <asp:Label ID="lblto" runat="server" Text="" CssClass="lbl"></asp:Label>
                    </p>


                </div>
                <div class="center">
        <p>
            <asp:Button ID="btnins" runat="server" Text="View Timetable" CssClass="buttons" Style="margin-left:-40%" /></p>
    </div>
            </div>
            
        </div>
        
    

    </div>


    <div class="container">
        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div class="boottable">
                    <table id="Table1" class="etable" runat="server">
                        <tbody>
                            <tr>
                                <th>Day/Session</th>
                                <th>Session I</th>
                                <th>Session II</th>
                                <th>Session III</th>
                                <th>Session IV</th>
                                <th>Session V</th>
                            </tr>
                            <tr>
                                <th>Monday</th>
                                <td>
                                    <asp:Label ID="lblmon1" runat="server" Text=""></asp:Label></td>
                                <td>
                                    <asp:Label ID="lblmon2" runat="server" Text=""></asp:Label></td>
                                <td>
                                    <asp:Label ID="lblmon3" runat="server" Text=""></asp:Label></td>
                                <td>
                                    <asp:Label ID="lblmon4" runat="server" Text=""></asp:Label></td>
                                <td>
                                    <asp:Label ID="lblmon5" runat="server" Text=""></asp:Label></td>
                            </tr>
                            <tr>
                                <th>Tuesday</th>
                                <td>
                                    <asp:Label ID="lbltue1" runat="server" Text=""></asp:Label></td>
                                <td>
                                    <asp:Label ID="lbltue2" runat="server" Text=""></asp:Label></td>
                                <td>
                                    <asp:Label ID="lbltue3" runat="server" Text=""></asp:Label></td>
                                <td>
                                    <asp:Label ID="lbltue4" runat="server" Text=""></asp:Label></td>
                                <td>
                                    <asp:Label ID="lbltue5" runat="server" Text=""></asp:Label></td>
                            </tr>
                            <tr>
                                <th>Wednesday</th>
                                <td>
                                    <asp:Label ID="lblwed1" runat="server" Text=""></asp:Label></td>
                                <td>
                                    <asp:Label ID="lblwed2" runat="server" Text=""></asp:Label></td>
                                <td>
                                    <asp:Label ID="lblwed3" runat="server" Text=""></asp:Label></td>
                                <td>
                                    <asp:Label ID="lblwed4" runat="server" Text=""></asp:Label></td>
                                <td>
                                    <asp:Label ID="lblwed5" runat="server" Text=""></asp:Label></td>
                            </tr>
                            <tr>
                                <th>Thursday</th>
                                <td>
                                    <asp:Label ID="lblthu1" runat="server" Text=""></asp:Label></td>
                                <td>
                                    <asp:Label ID="lblthu2" runat="server" Text=""></asp:Label></td>
                                <td>
                                    <asp:Label ID="lblthu3" runat="server" Text=""></asp:Label></td>
                                <td>
                                    <asp:Label ID="lblthu4" runat="server" Text=""></asp:Label></td>
                                <td>
                                    <asp:Label ID="lblthu5" runat="server" Text=""></asp:Label></td>
                            </tr>
                            <tr>
                                <th>Friday</th>
                                <td>
                                    <asp:Label ID="lblfri1" runat="server" Text=""></asp:Label></td>
                                <td>
                                    <asp:Label ID="lblfri2" runat="server" Text=""></asp:Label></td>
                                <td>
                                    <asp:Label ID="lblfri3" runat="server" Text=""></asp:Label></td>
                                <td>
                                    <asp:Label ID="lblfri4" runat="server" Text=""></asp:Label></td>
                                <td>
                                    <asp:Label ID="lblfri5" runat="server" Text=""></asp:Label></td>
                            </tr>
                            <tr>
                                <th>Saturday</th>
                                <td>
                                    <asp:Label ID="lblsat1" runat="server" Text=""></asp:Label></td>
                                <td>
                                    <asp:Label ID="lblsat2" runat="server" Text=""></asp:Label></td>
                                <td>
                                    <asp:Label ID="lblsat3" runat="server" Text=""></asp:Label></td>
                                <td>
                                    <asp:Label ID="lblsat4" runat="server" Text=""></asp:Label></td>
                                <td>
                                    <asp:Label ID="lblsat5" runat="server" Text=""></asp:Label></td>
                            </tr>
                        </tbody>
                    </table>

                </div>

            </div>
        </div>
    </div>
    <br />
    <br />


    <!-------->



</asp:Content>
