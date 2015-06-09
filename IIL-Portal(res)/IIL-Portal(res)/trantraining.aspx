<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="trantraining.aspx.cs" Inherits="IIL_Portal_res_.trantraining" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
       <asp:GridView ID="Gridview1" runat="server" AutoGenerateColumns="False" CssClass="mGrid1" DataSourceID="sqlsubject">
            <Columns>
                <asp:BoundField DataField="subject" HeaderText="Subject" SortExpression="subject" />
                <asp:TemplateField HeaderText="Hour">
                    <ItemTemplate>
                        <asp:CheckBox ID="chkhour" runat="server" />
                    </ItemTemplate>
                </asp:TemplateField>
                </Columns>
           </asp:GridView>
        <asp:SqlDataSource ID="sqlsubject" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT [subject] FROM [subjectlist]"></asp:SqlDataSource>
    </div>
    </form>
</body>
</html>
