<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="tranassignpreview.aspx.cs" Inherits="IIL_Portal_res_.tranassignpreview" MasterPageFile="~/trantimetable.Master" %>

<asp:Content ID="body" ContentPlaceHolderID="bodytrain" runat="server">
    <link rel="stylesheet" href="bootstudentcss.css" type="text/css" />
    <br />
    <div class="mGrid1" style="margin-left:20px">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="sqlpreview">
            <Columns>
                <asp:BoundField DataField="batch" HeaderText="Batch" SortExpression="batch" />
                <asp:BoundField DataField="subject" HeaderText="Subject" SortExpression="subject" />
                <asp:BoundField DataField="facultyname" HeaderText="Faculty Name" SortExpression="facultyname" />
                <asp:BoundField DataField="sethour" HeaderText="Set Hour" SortExpression="sethour" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="sqlpreview" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT [batch], [subject], [facultyname], [sethour] FROM [assign]"></asp:SqlDataSource>
    </div><br /><br /><br />
   </asp:Content>