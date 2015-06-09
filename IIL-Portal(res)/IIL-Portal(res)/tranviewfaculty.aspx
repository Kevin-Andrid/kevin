<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="tranviewfaculty.aspx.cs" Inherits="IIL_Portal_res_.tranviewfaculty" MasterPageFile="~/trantimetable.Master" %>

<asp:Content ID="body" ContentPlaceHolderID="bodytrain" runat="server">
    <link rel="stylesheet" href="bootstudentcss.css" type="text/css" />
    <div><br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" CssClass="mGrid1">
            <Columns>
                <asp:BoundField DataField="batch" HeaderText="Batch" SortExpression="batch" />
                <asp:BoundField DataField="section" HeaderText="Section" SortExpression="section" />
                <asp:BoundField DataField="subject" HeaderText="Subject" SortExpression="subject" />
                <asp:BoundField DataField="facultyname" HeaderText="Faculty Name" SortExpression="facultyname" />
         <asp:TemplateField>
             <ItemTemplate>
                 <asp:LinkButton ID="lbedit" CommandArgument='<%#Eval("facultyname") %>' runat="server" OnClick="lbedit_Click">Edit</asp:LinkButton>
             </ItemTemplate>
         </asp:TemplateField>
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [batch], [section], [subject], [facultyname] FROM [assign]"></asp:SqlDataSource>
    </div><br /><br />
   </asp:Content>
