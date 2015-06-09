<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="transelecttimetable.aspx.cs" Inherits="IIL_Portal_res_.transelecttimetable" MasterPageFile="~/trantimetable.Master" %>

<asp:Content ID="body" ContentPlaceHolderID="bodytrain" runat="server">
    <link rel="stylesheet" href="bootstudentcss.css" type="text/css" />

    <link rel="stylesheet" href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css" />
    <script src="http://code.jquery.com/jquery-1.9.1.js"></script>
    <script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
    <link href="css/fafaicon.css" rel="stylesheet" />

    <div>
    <div class="center" style="width: 81%">
            <asp:Button ID="btncreate" runat="server" OnClick="btncreate_Click" Text="Create TimeTable" CssClass="buttons" />
        </div>
        <br />
        <div>
            <asp:Button ID="btnsubject" runat="server" Text="Subject" OnClick="btnsubject_Click" />&nbsp
            <asp:Button ID="btnevent" runat="server" Text="Event" OnClick="btnevent_Click"  /><br />
        </div><br />
        <div>
            <asp:DropDownList ID="ddlselectsubject" runat="server" AppendDataBoundItems="true" DataSourceID="sqlselectsubject" DataTextField="subject" DataValueField="subject" OnSelectedIndexChanged="ddlselectsubject_SelectedIndexChanged"  AutoPostBack="true">
                <asp:listitem Value="">Please Select</asp:listitem>
            </asp:DropDownList>
            <asp:SqlDataSource ID="sqlselectsubject" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT [subject] FROM [subjectlist]"></asp:SqlDataSource>
            
            <asp:DropDownList ID="ddlselectevent" runat="server" OnSelectedIndexChanged="ddlselectevent_SelectedIndexChanged" AutoPostBack="true">
                <asp:ListItem Value="">Select Video</asp:ListItem>
                <asp:ListItem Value="video">Video 1</asp:ListItem>
                <asp:ListItem Value="video">Video 2</asp:ListItem>
                <asp:ListItem Value="video">Video 3</asp:ListItem>
            </asp:DropDownList>
        </div>
        <div class="gridcc">
            <asp:GridView ID="createtimetable" runat="server" AutoGenerateColumns="False" CssClass="mGrid1" OnSelectedIndexChanged="createtimetable_SelectedIndexChanged" OnRowDataBound="createtimetable_RowDataBound">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="datedif" HeaderText="Day/Hour" SortExpression="datedif" />
                    <asp:TemplateField HeaderText="Hour1">
                        <EditItemTemplate>
                            <asp:CheckBox ID="CheckBox1" runat="server" /> 
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:CheckBox ID="CheckBox1" runat="server" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Hour2">
                        <EditItemTemplate>
                            <asp:CheckBox ID="CheckBox2" runat="server" /><i class="fa fa-book" style="color:black"></i>
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
        <br />
        <div class="center">
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Submit" CssClass="buttons" />
        </div>
    </div>
    <br />
    <br />
    <br />
    <br />

      <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    
        <pop:modalpopupextender ID="mp1" runat="server" PopupControlID="eventdetails" TargetControlID="popuphidden"
            BackgroundCssClass="modalBackground">
        </pop:modalpopupextender>
    <asp:HiddenField ID="popuphidden" runat="server" />
     <asp:Panel ID="eventdetails" runat="server" CssClass="modalPopup" align="center" Style="display: none">
            
            <div class="mbody">
                <label>Do you want to block hours?</label><br /><br />
                <asp:Button ID="btnyes" runat="server" Text="Yes" />
                <asp:Button ID="btnno" runat="server" Text="No" />
            </div>
         </asp:Panel>
    </asp:Content>
