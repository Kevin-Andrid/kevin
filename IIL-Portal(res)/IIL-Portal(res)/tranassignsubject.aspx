<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="tranassignsubject.aspx.cs" Inherits="IIL_Portal_res_.tranassignsubject" MasterPageFile="~/trantimetable.Master" %>

<asp:Content ID="body" ContentPlaceHolderID="bodytrain" runat="server">
    <link rel="stylesheet" href="bootstudentcss.css" type="text/css" />
    <br />
    <div class="centcenter1" style="padding-left:20px">
        <table>
            <tbody>
                <tr>
                    <td>
        <label>Batch</label>
        <asp:DropDownList ID="ddlbatches" runat="server" DataSourceID="sqlbatc" AutoPostBack="true" DataTextField="batch" DataValueField="batch" CssClass="cd-dropdown" OnDataBound="ddlbatches_DataBound" ></asp:DropDownList>
                        <asp:SqlDataSource ID="sqlbatc" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT [batch] FROM [tblclass]"></asp:SqlDataSource>
                    </td>
                </tr>
            </tbody>
        </table>
        </div>
    <div class="mGrid1" style="padding-left:20px;">
        <asp:GridView ID="Gvassignsubject" runat="server" AutoGenerateColumns="False" OnRowDataBound="Gvassignsubject_RowDataBound">
            <Columns>
                <asp:BoundField DataField="Subject" HeaderText="subject" SortExpression="subject" />
                <asp:TemplateField HeaderText ="Faculty">
                    <ItemTemplate>
                        <asp:Label ID ="lblfaculty" runat="server" Text='<%%# Eval("facultyname") %>>' Visible="false"/>
                        <asp:DropDownList ID="ddlfaculty" runat="server"></asp:DropDownList>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Set Hour">
                    <ItemTemplate>
                         <asp:TextBox ID="txthour" runat="server"></asp:TextBox><asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Please Select Less than 30" ValidationExpression="^(1|2|3|4|5|6|7|8|9|10|11|12|13|14|15|16|17|18|19|20|21|22|23|24|25|26|27|28|29|30)$" Font-Size="Small" ForeColor="Red" ControlToValidate="txthour"></asp:RegularExpressionValidator>
                    </ItemTemplate>
                </asp:TemplateField>
                 </Columns>
        </asp:GridView><br />
        <div >
        <asp:Button ID="btnsubmit" runat="server" Text="Create TimeTable" OnClick="btnsubmit_Click" class="button2" /></div>
    </div>
    </asp:Content>
    
    
