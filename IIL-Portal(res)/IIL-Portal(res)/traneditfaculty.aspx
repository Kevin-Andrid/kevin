<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="traneditfaculty.aspx.cs" MasterPageFile="~/trantimetable.Master" Inherits="IIL_Portal_res_.traneditfaculty" %>

<asp:Content ID="body" ContentPlaceHolderID="bodytrain" runat="server">
    <link rel="stylesheet" href="bootstudentcss.css" type="text/css" />
    <div class="container">
        <div class="maincenter">
            <b><label>Assigned Details</label></b>
            <div class="row">
                <div class="col-lg-4 col-sm-4 col-md-12">
                    
                        <label>Name</label><br />
                    <asp:TextBox ID="txtname" CssClass="ebutt" runat="server"></asp:TextBox>
                </div>
                <div class="col-lg-4 col-sm-4 col-md-12">
                    
                        <label>Batch</label><br />
                    <asp:TextBox ID="txtbatch" CssClass="ebutt" Enabled="false" runat="server"></asp:TextBox>
                </div>
                <div class="col-lg-4 col-sm-4 col-md-12">
                    
                        <label>Section</label><br />
                    <asp:TextBox ID="txtsection" CssClass="ebutt" Enabled="false" runat="server"></asp:TextBox>
                </div>
            </div>
            <br />
            
            <div class="row">
                <div class="col-lg-4 col-sm-4 col-md-12">
                    
                        <label>Total Number of Hour</label><br />
                    <asp:TextBox ID="txthour" CssClass="ebutt" runat="server"></asp:TextBox>
                </div>
                <div class="col-lg-4 col-sm-4 col-md-12">
                    
                        <label>Subject</label><br />
                    <asp:TextBox ID="txtsubject" CssClass="ebutt" Enabled="false" runat="server"></asp:TextBox>
                </div>
                <div class="col-lg-4 col-sm-4 col-md-12"></div>
            </div>
            <br />
                <label><b>Contact Details</b></label>

            <div class="row">
                <div class="col-lg-4 col-sm-4 col-md-12">
                    <label>Email</label><br />
                    <asp:TextBox ID="txtemail" CssClass="ebutt" runat="server"></asp:TextBox>
                </div>
                <div class="col-lg-4 col-sm-4 col-md-12">
                    <label>Mobile Number</label><br />
                    <asp:TextBox ID="txtmobile" CssClass="ebutt" runat="server"></asp:TextBox>
                </div>
                <div class="col-lg-4 col-sm-4 col-md-12"></div>
            </div>
            <br />

            <b> <label>Finance Details</label></b>
            <div class="row">
                
                <div class="col-lg-4 col-sm-4 col-md-12">
                    <label>Banking Name</label><br />
                    <asp:TextBox ID="txtbankingname" CssClass="ebutt" runat="server"></asp:TextBox>
                </div>
                <div class="col-lg-4 col-sm-4 col-md-12">
                    <label>Honorarium Pay</label><br />
                    <asp:TextBox ID="txthpay" runat="server"></asp:TextBox>
                </div>
                <div class="col-lg-4 col-sm-4 col-md-12"></div>
            </div>
            <br />
            <asp:Button ID="btnupdate" runat="server" Text="Update" OnClick="btnupdate_Click" />
        </div>
    </div>
</asp:Content>
