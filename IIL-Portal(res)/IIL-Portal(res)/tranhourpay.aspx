<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="tranhourpay.aspx.cs" Inherits="IIL_Portal_res_.tranhourpay" MasterPageFile="~/trantimetable.Master" %>

<asp:Content ID="body" ContentPlaceHolderID="bodytrain" runat="server">
    <link rel="stylesheet" href="bootstudentcss.css" type="text/css" />
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css" />
    <div style="margin-left: 10px">
        <div>
            <asp:Label ID="lblbatch" runat="server"><b>Calculate honorarium payout</b></asp:Label></div>
        <div class="row">
            <div class="col-lg-2 col-md-2 col-sm-12 col-xs-12">
                <label>Subject</label><br />
                <asp:DropDownList ID="ddlsubject" runat="server" DataSourceID="subject" AutoPostBack="true" DataTextField="subject" DataValueField="subject" OnDataBound="ddlsubject_DataBound" CssClass="cd-dropdown"></asp:DropDownList>
                <asp:SqlDataSource ID="subject" runat="server" ConnectionString="<%$ ConnectionStrings:Database1ConnectionString1 %>" SelectCommand="SELECT DISTINCT [subject] FROM [subjectlist]"></asp:SqlDataSource>
            </div>
            <div class="col-lg-2 col-md-2 col-sm-12 col-xs-12">
                <label>Faculty</label><br />
                <asp:DropDownList ID="ddlfaculty" runat="server" DataSourceID="faculty" AutoPostBack="true" OnSelectedIndexChanged="ddlfaculty_SelectedIndexChanged" DataTextField="facultyname" DataValueField="facultyname" OnDataBound="ddlfaculty_DataBound" CssClass="cd-dropdown"></asp:DropDownList>
                <asp:SqlDataSource ID="faculty" runat="server" ConnectionString="<%$ ConnectionStrings:Database1ConnectionString1 %>" SelectCommand="SELECT DISTINCT [facultyname] FROM [assign]"></asp:SqlDataSource>
            </div>

            <div class="col-lg-2 col-md-2 col-sm-12 col-xs-12">
                <label>Month</label><br />
                <asp:DropDownList ID="ddlmonth" runat="server" DataSourceID="month" DataTextField="WeekMonth" DataValueField="WeekMonth" AutoPostBack="true" OnSelectedIndexChanged="ddlmonth_SelectedIndexChanged" OnDataBound="ddlmonth_DataBound" CssClass="cd-dropdown"></asp:DropDownList>
                <asp:SqlDataSource ID="month" runat="server" ConnectionString="<%$ ConnectionStrings:Database1ConnectionString1 %>" SelectCommand="SELECT DISTINCT [WeekMonth] FROM [admin]"></asp:SqlDataSource>
            </div>
            <div class="col-lg-2 col-md-2 col-sm-12 col-xs-12">
                <label>No of count</label><br />
                <asp:TextBox ID="txtpay" runat="server" CssClass="cd-dropdown"></asp:TextBox>
            </div>
            <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                <br />
            <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" CssClass="buttons2" />
           </div>
        </div>
    </div>
    <br />
    <br />
    <br />
</asp:Content>