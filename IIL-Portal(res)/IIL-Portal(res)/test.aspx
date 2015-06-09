<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="test.aspx.cs" Inherits="IIL_Portal_res_.test" MasterPageFile="~/trantimetable.Master" %>

<asp:Content ID="body" ContentPlaceHolderID="bodytrain" runat="server">
    <link rel="stylesheet" href="bootstudentcss.css" type="text/css" />

    <link rel="stylesheet" href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css" />
    <script src="http://code.jquery.com/jquery-1.9.1.js"></script>
    <script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
    <link href="css/fafaicon.css" rel="stylesheet" />

     
    <div>
    <asp:GridView ID="Gv3" runat="server" AutoGenerateColumns="False" CssClass="mGrid1" OnRowDataBound="Gv3_RowDataBound" >
                <Columns>
                    <asp:BoundField DataField="datedif" HeaderText="Day/Hour" SortExpression="datedif" />
                    <asp:TemplateField HeaderText="Hour1">
                        <EditItemTemplate>
                            <asp:CheckBox ID="CheckBox1" runat="server" /> 
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:CheckBox ID="CheckBox1" runat="server" /><i class="fa fa-book fa-2x"  style="color:black"></i>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Hour2">
                        <EditItemTemplate>
                            <asp:CheckBox ID="CheckBox2" runat="server" />
                        </EditItemTemplate>
                        <ItemTemplate>
                           <asp:CheckBox ID="CheckBox2" runat="server" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Hour3">
                        <EditItemTemplate>
                            <asp:CheckBox ID="CheckBox3" runat="server" />
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:CheckBox ID="CheckBox3" runat="server" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Hour4">
                        <EditItemTemplate>
                            <asp:CheckBox ID="CheckBox4" runat="server" />
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:CheckBox ID="CheckBox4" runat="server" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Hour5">
                        <EditItemTemplate>
                            <asp:CheckBox ID="CheckBox5" runat="server" />
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:CheckBox ID="CheckBox5" runat="server" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
        </asp:GridView>
    </div>
   </asp:Content>