<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="traneditfacultydetails.aspx.cs" Inherits="IIL_Portal_res_.traneditfacultydetails" MasterPageFile="~/trantimetable.Master" %>


<asp:Content ID="body" ContentPlaceHolderID="bodytrain" runat="server">
    <link rel="stylesheet" href="bootstudentcss.css" type="text/css" />

    <div>
        <br />
        <div class="row">

            <div class="col-lg-4 col-sm-4 col-md-12">
                <b>
                    <label>Personal Details</label></b><br />
                <br />
                <label>Name</label><br />
                <asp:TextBox ID="txtname" CssClass="ebutt" runat="server"></asp:TextBox>
            </div>
            <div class="col-lg-4 col-sm-4 col-md-12">
                <br />
                <br />
                <label>DOB</label><br />
                <asp:TextBox ID="txtdob" CssClass="ebutt" runat="server" TextMode="Date"></asp:TextBox>
            </div>
            <div class="col-lg-4 col-sm-4 col-md-12"></div>
        </div>
        <br />
        <div class="row">

            <div class="col-lg-4 col-sm-4 col-md-12">
                <b>
                    <label>Contact Details</label></b><br />
                <br />
                <label>Mobile</label><br />
                <asp:TextBox ID="txtmobile" CssClass="ebutt" runat="server"></asp:TextBox>
            </div>
            <br />
            <br />
            <div class="col-lg-4 col-sm-4 col-md-12">
                <label>E-Mail</label><br />
                <asp:TextBox ID="txtemail" CssClass="ebutt" runat="server"></asp:TextBox>
            </div>
            <div class="col-lg-4 col-sm-4 col-md-12"></div>
        </div>
        <br />
        <div class="row">

            <div class="col-lg-4 col-sm-4 col-md-12">
                <b>
                    <label>Finance Details</label></b><br />
                <br />
                <label>Banking Name</label><br />
                <asp:TextBox ID="txtbankname" CssClass="ebutt" runat="server"></asp:TextBox>
            </div>
            <br />
            <br />
            <div class="col-lg-4 col-sm-4 col-md-12">
                <label>Honorarium Pay</label><br />
                <asp:TextBox ID="txthourpay" CssClass="ebutt" runat="server"></asp:TextBox>
            </div>
            <div class="col-lg-4 col-sm-4 col-md-12"></div>
        </div>
        <br />
        <asp:Button ID="btnupdate" runat="server" Text="Update" OnClick="btnupdate_Click" />
        <asp:Button ID="btndelete" runat="server" Text="Delete" OnClick="btndelete_Click" />
    </div>

</asp:Content>

