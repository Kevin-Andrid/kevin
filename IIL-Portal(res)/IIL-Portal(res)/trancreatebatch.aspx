<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="trancreatebatch.aspx.cs" Inherits="IIL_Portal_res_.trancreatebatch" MasterPageFile="~/trantimetable.Master" %>

<asp:Content ID="body" ContentPlaceHolderID="bodytrain" runat="server">
    <link rel="stylesheet" href="bootstudentcss.css" type="text/css" />
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css" />
   
    <div style="margin-left:10px">
         <div><asp:Label ID="lblbatch" runat="server"><b>Select Batch</b></asp:Label></div>
        <div class="row">
             <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                 <asp:Label ID="lblyear" runat="server">Year</asp:Label><br />
                 <asp:DropDownList ID="ddlyear" runat="server" CssClass="cd-dropdown">
                     <asp:ListItem Value="0">Select Year</asp:ListItem>
                     <asp:ListItem Value="15">2015</asp:ListItem>
                     <asp:ListItem Value="16">2016</asp:ListItem>
                     <asp:ListItem Value="17">2017</asp:ListItem>
                     <asp:ListItem Value="18">2018</asp:ListItem>
                     <asp:ListItem Value="19">2019</asp:ListItem>
                     <asp:ListItem Value="20">2020</asp:ListItem>
                 </asp:DropDownList>
             </div>
             <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                  <asp:Label ID="lbllocation" runat="server">Location</asp:Label><br />
        <asp:DropDownList ID="ddllocation" runat="server" CssClass="cd-dropdown">
            <asp:ListItem value="0">Select Location</asp:ListItem>
            <asp:ListItem Value="CHN">CHENNAI</asp:ListItem>
            <asp:ListItem Value="COK">KOCHI</asp:ListItem>
            <asp:ListItem Value="CBE">COIMBATORE</asp:ListItem>
        </asp:DropDownList>
             </div>
            <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12"></div>
        </div><br />
       
       <div class="row">
          <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
        <asp:Label ID="lblcourse" runat="server">Course</asp:Label><br />
        <asp:DropDownList ID="ddlcourse" runat="server" CssClass="cd-dropdown">
            <asp:ListItem Value="0">Select Course</asp:ListItem>
            <asp:ListItem>BBA</asp:ListItem>
            <asp:ListItem>MBA</asp:ListItem>
        </asp:DropDownList>
        </div>   
        
          <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
       <asp:Label ID="lblsection" runat="server">Section</asp:Label><br />
            <asp:DropDownList ID="ddlsection" runat="server" CssClass="cd-dropdown">
                <asp:ListItem Value="0">Select Section</asp:ListItem>
                <asp:ListItem Value="AM1">AM1</asp:ListItem>
                <asp:ListItem Value="AM2">AM2</asp:ListItem>
                <asp:ListItem Value="AM3">AM3</asp:ListItem>
            </asp:DropDownList>
         </div>
          <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12"></div>
         </div>
        <br />
            <asp:Button ID="btnsubmit" runat="server" Text="Submit" CssClass="button1" OnClick="btnsubmit_Click" />
        
         <br />
         <asp:GridView ID="batchlistgrid" runat="server" AutoGenerateColumns="False" DataSourceID="sqlbatch" CssClass="mGrid1">
             <Columns>
                 <asp:BoundField DataField="batch" HeaderText="Batch" SortExpression="batch" />
                 <asp:TemplateField HeaderText="Action">
                     <ItemTemplate>
                         <asp:Button ID="btnassign" runat="server" Text="Assign Faculty & Subject" OnClick="btnassign_Click" />
                     </ItemTemplate>
                 </asp:TemplateField>
             </Columns>
         </asp:GridView>
         <asp:SqlDataSource ID="sqlbatch" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT [batch] FROM [tblclass]"></asp:SqlDataSource>
        
    </div>

    </asp:Content>
