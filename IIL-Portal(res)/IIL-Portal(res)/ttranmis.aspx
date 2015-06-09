<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ttranmis.aspx.cs" MasterPageFile="~/ttraining.Master" Inherits="IIL_Portal_res_.ttranmis" %>

<asp:Content ID="body" ContentPlaceHolderID="bodytrain" runat="server">
    <link rel="stylesheet" href="bootstudentcss.css" type="text/css" />



    <div class="container">
        <div class="pagehead">
            <label>MIS</label>
        </div>

        <div class="row">
            <div class="col-md-6 col-sm-12 col-lg-6 col-xs-12">


                <div class="maincenter1">
                    <p>
                        <label>Faculty Name</label>
                        <asp:DropDownList ID="drpfacultyname" runat="server" CssClass="cd-dropdown">
                        </asp:DropDownList>
                    </p>
                    <p>
                        <label>Total no of Hrs</label>
                        <asp:TextBox ID="txttotalhrs" runat="server" CssClass="ebutt"></asp:TextBox>
                    </p>
                    <p>
                        <label>Mode of Payment</label>
                        <asp:TextBox ID="txtmodepayment" runat="server" CssClass="ebutt"></asp:TextBox>
                    </p>
                    <p>
                        <label>Amount</label>
                        <asp:TextBox ID="txtamount" runat="server" CssClass="ebutt"></asp:TextBox>
                    </p>

                    <p>
                        <label>Subjects</label>
                        <asp:DropDownList ID="ddsubjects" runat="server" CssClass="cd-dropdown">
                            <asp:ListItem>IBM</asp:ListItem>
                            <asp:ListItem>FOL</asp:ListItem>
                            <asp:ListItem>IS</asp:ListItem>
                            <asp:ListItem>CP</asp:ListItem>
                            <asp:ListItem>WIM</asp:ListItem>
                            <asp:ListItem>SFFPO </asp:ListItem>
                            <asp:ListItem>TDM</asp:ListItem>
                            <asp:ListItem>PA</asp:ListItem>
                        </asp:DropDownList>
                    </p>
                    <p>
                    <p>
                        <label>Total no of Hrs completed</label>
                        <asp:TextBox ID="txttotalhrcomple" runat="server" CssClass="ebutt"></asp:TextBox>
                    </p>

                    <p>
                        <label>Date of Payment</label>
                        <asp:TextBox ID="txtdateofpayment" runat="server" CssClass="ebutt"></asp:TextBox>
                    </p>

                </div>
                <div class="center">
                        <p>
                            <asp:Button ID="btnsrc" runat="server" Text="Submit" CssClass="buttons" Style="margin-left: 37.4%" />
                        </p>
                        
                    </div>
            </div>

        </div>
    </div>
    

    

</asp:Content>
