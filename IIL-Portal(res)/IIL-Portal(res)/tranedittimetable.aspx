<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="tranedittimetable.aspx.cs" Inherits="IIL_Portal_res_.tranedittimetable" MasterPageFile="~/trantimetable.Master" %>

<asp:Content ID="body" ContentPlaceHolderID="bodytrain" runat="server">
    <link rel="stylesheet" href="bootstudentcss.css" type="text/css" />
    <div class="row">
        <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
            <asp:Label ID="lblebatch" runat="server" Text="Batch"></asp:Label><br />
            <asp:DropDownList ID="ddlebatch" runat="server" AutoPostBack="true" CssClass="cd-dropdown" DataSourceID="sqlebatch" DataTextField="batch" DataValueField="batch" OnDataBound="ddlebatch_DataBound"></asp:DropDownList>
            <asp:SqlDataSource ID="sqlebatch" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT [batch] FROM [tblclass]"></asp:SqlDataSource>
        </div>
          <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
            <asp:Label ID="lbleweek" runat="server" Text="Week"></asp:Label><br />
            <asp:DropDownList ID="ddleweek" runat="server" AutoPostBack="true" CssClass="cd-dropdown" DataSourceID="sqleweek" DataTextField="dayweek" DataValueField="dayweek" OnDataBound="ddleweek_DataBound"></asp:DropDownList>
            <asp:SqlDataSource ID="sqleweek" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT [dayweek] FROM [test]">
            <SelectParameters>
                <asp:ControlParameter ControlID="ddleweek" Name="batch" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
            </asp:SqlDataSource>
              </div>
          <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12"></div>
    </div>
     <p>
        <asp:Button ID="btnedit" runat="server" Text="Edit" OnClick="btnedit_Click" />
    </p>
    <asp:Button ID="btnsubject" runat="server" Text="Subject" OnClick="btnsubject_Click"/>
    <asp:Button ID="btnevent" runat="server" Text="Event" OnClick="btnevent_Click" />
    <br /><br />
    <asp:DropDownList ID="ddlsubject" runat="server" DataSourceID="sqlsubject" DataTextField="subject" DataValueField="subject" OnSelectedIndexChanged="ddlsubject_SelectedIndexChanged">
    <asp:ListItem>Please Select</asp:ListItem>
    </asp:DropDownList>
    <asp:SqlDataSource ID="sqlsubject" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT [subject] FROM [subjectlist]"></asp:SqlDataSource>
   
     <asp:DropDownList ID="ddlevent" runat="server" OnSelectedIndexChanged="ddlevent_SelectedIndexChanged">
         <asp:ListItem Value="">Select Video</asp:ListItem>
                <asp:ListItem Value="video">Video 1</asp:ListItem>
                <asp:ListItem Value="video">Video 2</asp:ListItem>
                <asp:ListItem Value="video">Video 3</asp:ListItem>
    </asp:DropDownList>

    <asp:GridView ID="edittable" runat="server" CssClass="mGrid1" AutoGenerateColumns="False" DataSourceID="sqledit">
        <Columns>
            <asp:BoundField DataField="datedif" HeaderText="datedif" SortExpression="datedif" />
            <asp:TemplateField HeaderText="Hour1">
            <ItemTemplate>
               <asp:CheckBox ID="chk1" runat="server" />
            </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Hour2">
            <ItemTemplate>
               <asp:CheckBox ID="chk2" runat="server" />
            </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Hour3">
            <ItemTemplate>
               <asp:CheckBox ID="chk3" runat="server" />
            </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Hour4">
            <ItemTemplate>
               <asp:CheckBox ID="chk4" runat="server" />
            </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Hour5">
            <ItemTemplate>
               <asp:CheckBox ID="chk5" runat="server" />
            </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        

    </asp:GridView>
    <asp:SqlDataSource ID="sqledit" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [datedif] FROM [test]"></asp:SqlDataSource>
   
</asp:Content>
