<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="~/trancert.aspx.cs" MasterPageFile="~/ttraining.Master" Inherits="IIL_Portal_res_.trancert" %>

<asp:Content ID="body" ContentPlaceHolderID="bodytrain" runat="server">
    <link rel="stylesheet" href="bootstudentcss.css" type="text/css" />

       <div class="maincenter1">



           <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="sqlbatch" DataTextField="batch" DataValueField="batch"></asp:DropDownList>

           

           <asp:SqlDataSource ID="sqlbatch" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT [batch] FROM [studdetails]"></asp:SqlDataSource>

           

           <br />
           
           <br />
           <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="sregno" DataSourceID="SqlDataSource1">
               <Columns>
                   <asp:BoundField DataField="sregno" HeaderText="sregno" ReadOnly="True" SortExpression="sregno" />
                   <asp:BoundField DataField="sname" HeaderText="sname" SortExpression="sname" />
                   <asp:templatefield HeaderText="">
                    <itemtemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("sregno") %>' OnClick="LinkButton1_Click">View More</asp:LinkButton>
                    </itemtemplate>

                </asp:templatefield>
                   
               </Columns>
           </asp:GridView>



          


           <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [sregno], [sname] FROM [studdetails] WHERE ([batch] = @batch)">
               <SelectParameters>
                   <asp:ControlParameter ControlID="DropDownList1" Name="batch" PropertyName="SelectedValue" Type="String" />
               </SelectParameters>
           </asp:SqlDataSource>


           <br />
          
          
          

           </div>


    <asp:Label ID="msg" runat="server" Text=""></asp:Label>
    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
    <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>




    </asp:Content>