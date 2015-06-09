<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="tranattendance.aspx.cs" MasterPageFile="~/training.Master" Inherits="IIL_Portal_res_.tranattendance" %>

<asp:Content ID="body" ContentPlaceHolderID="bodytrain" runat="server">
    <link rel="stylesheet" href="bootstudentcss.css" type="text/css" />




      <div class="container">
                    <div class="pagehead">
                                <label>Students E-Library</label>
                    </div>
          
        
                   
                    <div class="row">
                        <div class="col-md-6 col-sm-12 col-lg-6 col-xs-12">
                            
                           
                            <div id="maincenter">
                  <p>
                        <label>Choose Batch :</label>
                        <asp:DropDownList ID="ddbatch" runat="server" CssClass="cd-dropdown1"></asp:DropDownList>
                        
      </p>
                    <p><asp:Label ID="lblbatchnme" runat="server" Font-Names="Calibri"></asp:Label> </p>
  
</div></div></div>  
         <div class="center">
     <p><asp:Button ID="Button1" runat="server" Text="Get Batch Details" Font-Names="Calibri" CssClass="buttons"/></p>  
        
     
    </div></div>









</asp:Content>
