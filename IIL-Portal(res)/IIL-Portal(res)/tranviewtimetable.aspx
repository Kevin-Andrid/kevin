﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="tranviewtimetable.aspx.cs" Inherits="IIL_Portal_res_.tranviewtimetable" MasterPageFile="~/trantimetable.Master" %>

<asp:Content ID="body" ContentPlaceHolderID="bodytrain" runat="server">
    <link rel="stylesheet" href="bootstudentcss.css" type="text/css" />
    <div class="container">
    <br />

    <p>
        <asp:Label ID="lblbatch" runat="server">Batch</asp:Label>
        <asp:DropDownList ID="ddlbatchs" runat="server" CssClass="cd-dropdown" DataSourceID="SqlDataSource2" DataTextField="batch" DataValueField="batch" AutoPostBack="true" OnDataBound="ddlbatchs_DataBound"></asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT [batch] FROM [assign]"></asp:SqlDataSource>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="ddlbatchs" ErrorMessage="Select Batch"></asp:RequiredFieldValidator>
    </p>
    <p>
        <label>Section</label>
        <asp:DropDownList ID="ddlsection" runat="server" OnDataBound="ddlsection_DataBound" AutoPostBack="true" DataSourceID="SqlDataSourcesection" DataTextField="section" DataValueField="section" OnSelectedIndexChanged="ddlsection_SelectedIndexChanged"></asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSourcesection" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT distinct [section] FROM [test] WHERE ([batch] = @batch)">
            <SelectParameters>
                <asp:ControlParameter ControlID="ddlbatchs" Name="batch" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
        <br />
    <div class="mGrid1">
        <asp:GridView ID="timetable1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="datedif" HeaderText="Date" SortExpression="datedif" />
                <asp:TemplateField HeaderText="Hour1" SortExpression="faculty1">
                    <ItemTemplate>
                        <b>
                            <asp:Label ID="Label1" runat="server" Text='<%#Eval("subject1")%>'></asp:Label><br />
                            <br />
                        </b>
                        <i>
                            <asp:Label ID="Label6" runat="server" Visible='<%#(Eval("faculty1")!=DBNull.Value ? true:false)%>' Text='<%#"Faculty:"+Eval("faculty1")%>'></asp:Label></i>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Hour2" SortExpression="faculty2">
                    <ItemTemplate>
                        <b>
                            <asp:Label ID="Label2" runat="server" Text='<%#Eval("subject2")%>'></asp:Label><br />
                            <br />
                        </b>
                       <i>
                            <asp:Label ID="Label7" runat="server" Visible='<%#(Eval("faculty2")!=DBNull.Value ? true:false)%>' Text='<%#"Faculty:"+Eval("faculty2")%>'></asp:Label></i>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Hour3" SortExpression="faculty3">
                    <ItemTemplate>
                        <b>
                            <asp:Label ID="Label3" runat="server" Text='<%#Eval("subject3")%>'></asp:Label><br />
                            <br />
                        </b>
                        <i>
                            <asp:Label ID="Label8" runat="server" Visible='<%#(Eval("faculty3")!=DBNull.Value ? true:false)%>' Text='<%#"Faculty:"+Eval("faculty3")%>'></asp:Label></i>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Hour4" SortExpression="faculty4">
                    <ItemTemplate>
                        <b>
                            <asp:Label ID="Label4" runat="server" Text='<%#Eval("subject4")%>'></asp:Label><br />
                            <br />
                        </b>
                        <i>
                            <asp:Label ID="Label9" runat="server" Visible='<%#(Eval("faculty4")!=DBNull.Value ? true:false)%>' Text='<%#"Faculty:"+Eval("faculty4")%>'></asp:Label></i>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Hour5" SortExpression="faculty5">
                    <ItemTemplate>
                        <b>
                            <asp:Label ID="Label5" runat="server" Text='<%#Eval("subject5")%>'></asp:Label><br />
                            <br />
                        </b>
                        <i>
                            <asp:Label ID="Label10" runat="server" Visible='<%#(Eval("faculty5")!=DBNull.Value ? true:false)%>' Text='<%#"Faculty:"+Eval("faculty5")%>'></asp:Label></i>
                    </ItemTemplate>
                </asp:TemplateField>

            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [datedif], [subject1], [faculty1], [subject2], [faculty2], [subject3], [faculty3], [subject4], [faculty4], [subject5], [faculty5] FROM [test]  WHERE ([dayweek] = 'Week 1') and ([batch] = @batch) and ([section]=@section) ">
              <SelectParameters>
                <asp:ControlParameter ControlID="ddlbatchs" Name="batch" PropertyName="SelectedValue" Type="String" />
                   <asp:ControlParameter ControlID="ddlsection" Name="section" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        
         <asp:GridView ID="timetable2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource3">
            <Columns>
                <asp:BoundField DataField="datedif" HeaderText="Date" SortExpression="datedif" />
                <asp:TemplateField HeaderText="Hour1" SortExpression="faculty1">
                    <ItemTemplate>
                        <b>
                            <asp:Label ID="Label1" runat="server" Text='<%#Eval("subject1")%>'></asp:Label><br />
                            <br />
                        </b>
                       <b> <i>
                            <asp:Label ID="Label6" runat="server" Visible='<%#(Eval("faculty1")!=DBNull.Value ? true:false)%>' Text='<%#"Faculty:"+Eval("faculty1")%>'></asp:Label></i></b>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Hour2" SortExpression="faculty2">
                    <ItemTemplate>
                        <b>
                            <asp:Label ID="Label2" runat="server" Text='<%#Eval("subject2")%>'></asp:Label><br />
                            <br />
                        </b>
                       <b> <i>
                            <asp:Label ID="Label7" runat="server" Visible='<%#(Eval("faculty2")!=DBNull.Value ? true:false)%>' Text='<%#"Faculty:"+Eval("faculty2")%>'></asp:Label></i></b>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Hour3" SortExpression="faculty3">
                    <ItemTemplate>
                        <b>
                            <asp:Label ID="Label3" runat="server" Text='<%#Eval("subject3")%>'></asp:Label><br />
                            <br />
                        </b>
                       <b> <i>
                            <asp:Label ID="Label8" runat="server" Visible='<%#(Eval("faculty3")!=DBNull.Value ? true:false)%>' Text='<%#"Faculty:"+Eval("faculty3")%>'></asp:Label></i></b>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Hour4" SortExpression="faculty4">
                    <ItemTemplate>
                        <b>
                            <asp:Label ID="Label4" runat="server" Text='<%#Eval("subject4")%>'></asp:Label><br />
                            <br />
                        </b>
                        <b><i>
                            <asp:Label ID="Label9" runat="server" Visible='<%#(Eval("faculty4")!=DBNull.Value ? true:false)%>' Text='<%#"Faculty:"+Eval("faculty4")%>'></asp:Label></i></b>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Hour5" SortExpression="faculty5">
                    <ItemTemplate>
                        <b>
                            <asp:Label ID="Label5" runat="server" Text='<%#Eval("subject5")%>'></asp:Label><br />
                            <br />
                        </b>
                        <b><i>
                            <asp:Label ID="Label10" runat="server" Visible='<%#(Eval("faculty5")!=DBNull.Value ? true:false)%>' Text='<%#"Faculty:"+Eval("faculty5")%>'></asp:Label></i></b>
                    </ItemTemplate>
                </asp:TemplateField>

            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [datedif], [subject1], [faculty1], [subject2], [faculty2], [subject3], [faculty3], [subject4], [faculty4], [subject5], [faculty5] FROM [test]  WHERE ([dayweek] = 'Week 2') and ([batch] = @batch) and ([section]=@section) ">
              <SelectParameters>
                <asp:ControlParameter ControlID="ddlbatchs" Name="batch" PropertyName="SelectedValue" Type="String" />
                   <asp:ControlParameter ControlID="ddlsection" Name="section" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />

         <asp:GridView ID="timetable3" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource4">
            <Columns>
                <asp:BoundField DataField="datedif" HeaderText="Date" SortExpression="datedif" />
                <asp:TemplateField HeaderText="Hour1" SortExpression="faculty1">
                    <ItemTemplate>
                        <b>
                            <asp:Label ID="Label1" runat="server" Text='<%#Eval("subject1")%>'></asp:Label><br />
                            <br />
                        </b>
                       <b> <i>
                            <asp:Label ID="Label6" runat="server" Visible='<%#(Eval("faculty1")!=DBNull.Value ? true:false)%>' Text='<%#"Faculty:"+Eval("faculty1")%>'></asp:Label></i></b>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Hour2" SortExpression="faculty2">
                    <ItemTemplate>
                        <b>
                            <asp:Label ID="Label2" runat="server" Text='<%#Eval("subject2")%>'></asp:Label><br />
                            <br />
                        </b>
                       <b> <i>
                            <asp:Label ID="Label7" runat="server" Visible='<%#(Eval("faculty2")!=DBNull.Value ? true:false)%>' Text='<%#"Faculty:"+Eval("faculty2")%>'></asp:Label></i></b>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Hour3" SortExpression="faculty3">
                    <ItemTemplate>
                        <b>
                            <asp:Label ID="Label3" runat="server" Text='<%#Eval("subject3")%>'></asp:Label><br />
                            <br />
                        </b>
                       <b> <i>
                            <asp:Label ID="Label8" runat="server" Visible='<%#(Eval("faculty3")!=DBNull.Value ? true:false)%>' Text='<%#"Faculty:"+Eval("faculty3")%>'></asp:Label></i></b>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Hour4" SortExpression="faculty4">
                    <ItemTemplate>
                        <b>
                            <asp:Label ID="Label4" runat="server" Text='<%#Eval("subject4")%>'></asp:Label><br />
                            <br />
                        </b>
                        <b><i>
                            <asp:Label ID="Label9" runat="server" Visible='<%#(Eval("faculty4")!=DBNull.Value ? true:false)%>' Text='<%#"Faculty:"+Eval("faculty4")%>'></asp:Label></i></b>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Hour5" SortExpression="faculty5">
                    <ItemTemplate>
                        <b>
                            <asp:Label ID="Label5" runat="server" Text='<%#Eval("subject5")%>'></asp:Label><br />
                            <br />
                        </b>
                        <b><i>
                            <asp:Label ID="Label10" runat="server" Visible='<%#(Eval("faculty5")!=DBNull.Value ? true:false)%>' Text='<%#"Faculty:"+Eval("faculty5")%>'></asp:Label></i></b>
                    </ItemTemplate>
                </asp:TemplateField>

            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [datedif], [subject1], [faculty1], [subject2], [faculty2], [subject3], [faculty3], [subject4], [faculty4], [subject5], [faculty5] FROM [test]  WHERE ([dayweek] = 'Week 3') "></asp:SqlDataSource>
        <br />

         <asp:GridView ID="timetable4" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource5">
            <Columns>
                <asp:BoundField DataField="datedif" HeaderText="Date" SortExpression="datedif" />
                <asp:TemplateField HeaderText="Hour1" SortExpression="faculty1">
                    <ItemTemplate>
                        <b>
                            <asp:Label ID="Label1" runat="server" Text='<%#Eval("subject1")%>'></asp:Label><br />
                            <br />
                        </b>
                       <b> <i>
                            <asp:Label ID="Label6" runat="server" Visible='<%#(Eval("faculty1")!=DBNull.Value ? true:false)%>' Text='<%#"Faculty:"+Eval("faculty1")%>'></asp:Label></i></b>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Hour2" SortExpression="faculty2">
                    <ItemTemplate>
                        <b>
                            <asp:Label ID="Label2" runat="server" Text='<%#Eval("subject2")%>'></asp:Label><br />
                            <br />
                        </b>
                       <b> <i>
                            <asp:Label ID="Label7" runat="server" Visible='<%#(Eval("faculty2")!=DBNull.Value ? true:false)%>' Text='<%#"Faculty:"+Eval("faculty2")%>'></asp:Label></i></b>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Hour3" SortExpression="faculty3">
                    <ItemTemplate>
                        <b>
                            <asp:Label ID="Label3" runat="server" Text='<%#Eval("subject3")%>'></asp:Label><br />
                            <br />
                        </b>
                       <b> <i>
                            <asp:Label ID="Label8" runat="server" Visible='<%#(Eval("faculty3")!=DBNull.Value ? true:false)%>' Text='<%#"Faculty:"+Eval("faculty3")%>'></asp:Label></i></b>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Hour4" SortExpression="faculty4">
                    <ItemTemplate>
                        <b>
                            <asp:Label ID="Label4" runat="server" Text='<%#Eval("subject4")%>'></asp:Label><br />
                            <br />
                        </b>
                        <b><i>
                            <asp:Label ID="Label9" runat="server" Visible='<%#(Eval("faculty4")!=DBNull.Value ? true:false)%>' Text='<%#"Faculty:"+Eval("faculty4")%>'></asp:Label></i></b>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Hour5" SortExpression="faculty5">
                    <ItemTemplate>
                        <b>
                            <asp:Label ID="Label5" runat="server" Text='<%#Eval("subject5")%>'></asp:Label><br />
                            <br />
                        </b>
                        <b><i>
                            <asp:Label ID="Label10" runat="server" Visible='<%#(Eval("faculty5")!=DBNull.Value ? true:false)%>' Text='<%#"Faculty:"+Eval("faculty5")%>'></asp:Label></i></b>
                    </ItemTemplate>
                </asp:TemplateField>

            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [datedif], [subject1], [faculty1], [subject2], [faculty2], [subject3], [faculty3], [subject4], [faculty4], [subject5], [faculty5] FROM [test]  WHERE ([dayweek] = 'Week 4') and ([batch] = @batch) and ([section]=@section) ">
              <SelectParameters>
                <asp:ControlParameter ControlID="ddlbatchs" Name="batch" PropertyName="SelectedValue" Type="String" />
                   <asp:ControlParameter ControlID="ddlsection" Name="section" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />



    </div>
    <br />
        </div>
</asp:Content>
