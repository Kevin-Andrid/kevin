<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="tranfacultynew.aspx.cs" Inherits="IIL_Portal_res_.transfaculty" MasterPageFile="~/trantimetable.Master" %>

<asp:Content ID="body" ContentPlaceHolderID="bodytrain" runat="server">
    <link rel="stylesheet" href="bootstudentcss.css" type="text/css" />

    <link href="bootstudentcss.css" rel="stylesheet" />
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.js"></script>
    <script type="text/javascript">
        function IdExists(elements, id) {
            for (var i = 0; i < elements.length; i++) {
                if (elements[i].id.indexOf(id) > -1) {
                    return true;
                }
            }
            return false;
        }

        function Check_Click(chkBx) {
            Parent = document.getElementById('<% =Gv1.ClientID %>');          
            for (i = 0; i < Parent.rows.length; i++) {

                var row = Parent.rows[i];
                var items = row.getElementsByTagName('input');

                if (items.length > 0) {
                    if (IdExists(items, chkBx.id)) {
                        var tot = 0,cc=0;

                        for (j = 0; j < items.length; j++)
                        {
                            
                            if (items[j].type == 'checkbox' && items[j].checked && items[j].disabled == false)
                            {
                               
                                tot = tot + 1;
                                if (tot > 3)
                                {
                                    alert('Cannot take more than 3 hours');
                                    chkBx.checked = false;
                                    return;
                                }
                            }
                            
                        }
                    }
                }
            }



        }
    </script>

        <div class="container">
            <div class="row">
                <div class="col-md-12 col-sm-12 col-lg-12 col-xs-12">
                    <div class="pagehead">
                        <label>Faculty</label>
                    </div><br />
                    <b><asp:Label ID="lblWelcomeName" runat="server" Text="Label"></asp:Label></b>
                    <div class="centcenter"><br />
                        <table>
                            <tr>
                                <td>
                                    <label>Select Batch</label> 
                                    <asp:DropDownList ID="ddlbatch" runat="server" AutoPostBack="true" OnDataBound="ddlbatch_DataBound" OnSelectedIndexChanged="ddlbatch_SelectedIndexChanged" DataSourceID="sbbatch" DataTextField="batch" DataValueField="batch" CssClass="cd-dropdown">
                                    </asp:DropDownList>
                                    <br />
                                </td>
                                <td>
                                    <label>select section</label>
                                    <asp:DropDownList ID="ddlsection" runat="server" CssClass="cd-dropdown" OnDataBound="ddlsection_DataBound"></asp:DropDownList>
                                </td>
                            </tr>
                             <tr>
                                <td></td>
                            </tr>
                             <tr>
                                <td>
                                    <label>Select Subject</label>
                                    <asp:DropDownList ID="ddlsubj" runat="server" AutoPostBack="True" CssClass="cd-dropdown">
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td></td>
                            </tr>
                            <tr>
                                <td>
                                    <label>Select Month</label>
                                    <asp:DropDownList ID="ddlmonths" runat="server" DataSourceID="sbmonth" DataTextField="WeekMonth" DataValueField="WeekMonth" CssClass="cd-dropdown">
                                    </asp:DropDownList>
                                    <asp:SqlDataSource ID="sbmonth" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT [WeekMonth] FROM [admin]"></asp:SqlDataSource>
                                </td>
                            </tr>
                        </table>
                        <div class="center">
                            <asp:Button ID="createbtnclick" runat="server" Text="Create TimeTable" OnClick="createbtnclick_Click" CssClass="button2" />
                            <br />
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <br />
        <br />
        <br />
        <br />
        <asp:GridView ID="Gv1" runat="server" AutoGenerateColumns="False" OnRowDataBound="Gv1_RowDataBound" CellPadding="4" ForeColor="#333333" GridLines="None" CssClass="mGrid1">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="datedif" HeaderText="Day/Hour" SortExpression="datedif" />
                <asp:TemplateField HeaderText="Hour1">
                    <EditItemTemplate>
                        <asp:CheckBox ID="chkColumn1" runat="server" OnClick="Check_Click(this)" />
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:CheckBox ID="chkHour1" runat="server" Checked='<%# bool.Parse( Eval("hour1").ToString()) %>' Enabled='<%# Eval("hour1").ToString().Equals("False") %>'
                            OnCheckedChanged="CheckBox1_CheckedChanged" OnClick="Check_Click(this)" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Hour2">
                    <EditItemTemplate>
                        <asp:CheckBox ID="ChkColumn2" runat="server" OnClick="Check_Click(this)" />
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:CheckBox ID="chkHour2" runat="server" Checked='<%# bool.Parse( Eval("hour2").ToString()) %>' Enabled='<%# Eval("hour2").ToString().Equals("False") %>'
                            OnCheckedChanged="CheckBox6_CheckedChanged" OnClick="Check_Click(this)" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Hour3">
                    <EditItemTemplate>
                        <asp:CheckBox ID="chkColumn3" runat="server" OnClick="Check_Click(this)" />
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:CheckBox ID="chkHour3" runat="server" Checked='<%# bool.Parse( Eval("hour3").ToString()) %>' Enabled='<%# Eval("hour3").ToString().Equals("False") %>'
                            OnCheckedChanged="CheckBox3_CheckedChanged" OnClick="Check_Click(this)" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Hour4">
                    <EditItemTemplate>
                        <asp:CheckBox ID="chkColumn4" runat="server" OnClick="Check_Click(this)" />
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:CheckBox ID="chkHour4" runat="server" Checked='<%# bool.Parse( Eval("hour4").ToString()) %>' Enabled='<%# Eval("hour4").ToString().Equals("False") %>'
                            OnCheckedChanged="CheckBox4_CheckedChanged" OnClick="Check_Click(this)" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Hour5">
                    <EditItemTemplate>
                        <asp:CheckBox ID="chkColumn5" runat="server" OnClick="Check_Click(this)" />
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:CheckBox ID="chkHour5" runat="server" Checked='<%# bool.Parse( Eval("hour5").ToString()) %>' Enabled='<%# Eval("hour5").ToString().Equals("False") %>'
                            OnCheckedChanged="CheckBox5_CheckedChanged" OnClick="Check_Click(this)" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <SortedAscendingCellStyle BackColor="#FDF5AC" />
            <SortedAscendingHeaderStyle BackColor="#4D0000" />
            <SortedDescendingCellStyle BackColor="#FCF6C0" />
            <SortedDescendingHeaderStyle BackColor="#820000" />
        </asp:GridView>
        <br />
        <asp:GridView ID="Gv2" runat="server" AutoGenerateColumns="False" OnRowDataBound="Gv1_RowDataBound" CellPadding="4" ForeColor="#333333" GridLines="None" CssClass="mGrid1">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="datedif" HeaderText="Day/Hour" SortExpression="datedif" />
                <asp:TemplateField HeaderText="Hour1">
                    <EditItemTemplate>
                        <asp:CheckBox ID="chkColumn6" runat="server" OnClick="Check_Click(this)" />
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:CheckBox ID="chkHour6" runat="server" Checked='<%# bool.Parse( Eval("hour1").ToString()) %>' Enabled='<%# Eval("hour1").ToString().Equals("False") %>'
                            OnCheckedChanged="CheckBox7_CheckedChanged" OnClick="Check_Click(this)" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Hour2">
                    <EditItemTemplate>
                        <asp:CheckBox ID="ChkColumn7" runat="server" OnClick="Check_Click(this)" />
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:CheckBox ID="chkHour7" runat="server" Checked='<%# bool.Parse( Eval("hour2").ToString()) %>' Enabled='<%# Eval("hour2").ToString().Equals("False") %>'
                            OnCheckedChanged="CheckBox8_CheckedChanged" OnClick="Check_Click(this)" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Hour3">
                    <EditItemTemplate>
                        <asp:CheckBox ID="chkColumn8" runat="server" OnClick="Check_Click(this)" />
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:CheckBox ID="chkHour8" runat="server" Checked='<%# bool.Parse( Eval("hour3").ToString()) %>' Enabled='<%# Eval("hour3").ToString().Equals("False") %>'
                            OnCheckedChanged="CheckBox9_CheckedChanged" OnClick="Check_Click(this)" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Hour4">
                    <EditItemTemplate>
                        <asp:CheckBox ID="chkColumn9" runat="server" OnClick="Check_Click(this)" />
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:CheckBox ID="chkHour9" runat="server" Checked='<%# bool.Parse( Eval("hour4").ToString()) %>' Enabled='<%# Eval("hour4").ToString().Equals("False") %>'
                            OnCheckedChanged="CheckBox10_CheckedChanged" OnClick="Check_Click(this)" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Hour5">
                    <EditItemTemplate>
                        <asp:CheckBox ID="chkColumn10" runat="server" OnClick="Check_Click(this)" />
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:CheckBox ID="chkHour10" runat="server" Checked='<%# bool.Parse( Eval("hour5").ToString()) %>' Enabled='<%# Eval("hour5").ToString().Equals("False") %>'
                            OnCheckedChanged="CheckBox11_CheckedChanged" OnClick="Check_Click(this)" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <SortedAscendingCellStyle BackColor="#FDF5AC" />
            <SortedAscendingHeaderStyle BackColor="#4D0000" />
            <SortedDescendingCellStyle BackColor="#FCF6C0" />
            <SortedDescendingHeaderStyle BackColor="#820000" />
        </asp:GridView>

        <br />
        <br />
        <asp:GridView ID="Gv3" runat="server" AutoGenerateColumns="False" OnRowDataBound="Gv1_RowDataBound" CellPadding="4" ForeColor="#333333" GridLines="None" CssClass="mGrid1">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="datedif" HeaderText="Day/Hour" SortExpression="datedif" />
                <asp:TemplateField HeaderText="Hour1">
                    <EditItemTemplate>
                        <asp:CheckBox ID="chkColumn11" runat="server" OnClick="Check_Click(this)" />
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:CheckBox ID="chkHour11" runat="server" Checked='<%# bool.Parse( Eval("hour1").ToString()) %>' Enabled='<%# Eval("hour1").ToString().Equals("False") %>'
                            OnCheckedChanged="CheckBox12_CheckedChanged" OnClick="Check_Click(this)" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Hour2">
                    <EditItemTemplate>
                        <asp:CheckBox ID="ChkColumn12" runat="server" OnClick="Check_Click(this)" />
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:CheckBox ID="chkHour12" runat="server" Checked='<%# bool.Parse( Eval("hour2").ToString()) %>' Enabled='<%# Eval("hour2").ToString().Equals("False") %>'
                            OnCheckedChanged="CheckBox13_CheckedChanged" OnClick="Check_Click(this)" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Hour3">
                    <EditItemTemplate>
                        <asp:CheckBox ID="chkColumn13" runat="server" OnClick="Check_Click(this)" />
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:CheckBox ID="chkHour13" runat="server" Checked='<%# bool.Parse( Eval("hour3").ToString()) %>' Enabled='<%# Eval("hour3").ToString().Equals("False") %>'
                            OnCheckedChanged="CheckBox14_CheckedChanged" OnClick="Check_Click(this)" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Hour4">
                    <EditItemTemplate>
                        <asp:CheckBox ID="chkColumn14" runat="server" OnClick="Check_Click(this)" />
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:CheckBox ID="chkHour14" runat="server" Checked='<%# bool.Parse( Eval("hour4").ToString()) %>' Enabled='<%# Eval("hour4").ToString().Equals("False") %>'
                            OnCheckedChanged="CheckBox15_CheckedChanged" OnClick="Check_Click(this)" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Hour5">
                    <EditItemTemplate>
                        <asp:CheckBox ID="chkColumn15" runat="server" OnClick="Check_Click(this)" />
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:CheckBox ID="chkHour15" runat="server" Checked='<%# bool.Parse( Eval("hour5").ToString()) %>' Enabled='<%# Eval("hour5").ToString().Equals("False") %>'
                            OnCheckedChanged="CheckBox16_CheckedChanged" OnClick="Check_Click(this)" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <SortedAscendingCellStyle BackColor="#FDF5AC" />
            <SortedAscendingHeaderStyle BackColor="#4D0000" />
            <SortedDescendingCellStyle BackColor="#FCF6C0" />
            <SortedDescendingHeaderStyle BackColor="#820000" />
        </asp:GridView>

        <br />
        <asp:GridView ID="Gv4" runat="server" AutoGenerateColumns="False" OnRowDataBound="Gv1_RowDataBound" CellPadding="4" ForeColor="#333333" GridLines="None" CssClass="mGrid1">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="datedif" HeaderText="Day/Hour" SortExpression="datedif" />
                <asp:TemplateField HeaderText="Hour1">
                    <EditItemTemplate>
                        <asp:CheckBox ID="chkColumn16" runat="server" OnClick="Check_Click(this)" />
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:CheckBox ID="chkHour16" runat="server" Checked='<%# bool.Parse( Eval("hour1").ToString()) %>' Enabled='<%# Eval("hour1").ToString().Equals("False") %>'
                            OnCheckedChanged="CheckBox17_CheckedChanged" OnClick="Check_Click(this)" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Hour2">
                    <EditItemTemplate>
                        <asp:CheckBox ID="ChkColumn17" runat="server" OnClick="Check_Click(this)" />
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:CheckBox ID="chkHour17" runat="server" Checked='<%# bool.Parse( Eval("hour2").ToString()) %>' Enabled='<%# Eval("hour2").ToString().Equals("False") %>'
                            OnCheckedChanged="CheckBox18_CheckedChanged" OnClick="Check_Click(this)" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Hour3">
                    <EditItemTemplate>
                        <asp:CheckBox ID="chkColumn18" runat="server" OnClick="Check_Click(this)" />
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:CheckBox ID="chkHour18" runat="server" Checked='<%# bool.Parse( Eval("hour3").ToString()) %>' Enabled='<%# Eval("hour3").ToString().Equals("False") %>'
                            OnCheckedChanged="CheckBox19_CheckedChanged" OnClick="Check_Click(this)" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Hour4">
                    <EditItemTemplate>
                        <asp:CheckBox ID="chkColumn19" runat="server" OnClick="Check_Click(this)" />
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:CheckBox ID="chkHour19" runat="server" Checked='<%# bool.Parse( Eval("hour4").ToString()) %>' Enabled='<%# Eval("hour4").ToString().Equals("False") %>'
                            OnCheckedChanged="CheckBox20_CheckedChanged" OnClick="Check_Click(this)" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Hour5">
                    <EditItemTemplate>
                        <asp:CheckBox ID="chkColumn20" runat="server" OnClick="Check_Click(this)" />
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:CheckBox ID="chkHour20" runat="server" Checked='<%# bool.Parse( Eval("hour5").ToString()) %>' Enabled='<%# Eval("hour5").ToString().Equals("False") %>'
                            OnCheckedChanged="CheckBox21_CheckedChanged" OnClick="Check_Click(this)" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <SortedAscendingCellStyle BackColor="#FDF5AC" />
            <SortedAscendingHeaderStyle BackColor="#4D0000" />
            <SortedDescendingCellStyle BackColor="#FCF6C0" />
            <SortedDescendingHeaderStyle BackColor="#820000" />
        </asp:GridView>


        <br />
        <asp:GridView ID="Gv5" runat="server" AutoGenerateColumns="False" OnRowDataBound="Gv1_RowDataBound" CellPadding="4" ForeColor="#333333" GridLines="None" CssClass="mGrid1">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="datedif" HeaderText="Day/Hour" SortExpression="datedif" />
                <asp:TemplateField HeaderText="Hour1">
                    <EditItemTemplate>
                        <asp:CheckBox ID="chkColumn21" runat="server" OnClick="Check_Click(this)" />
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:CheckBox ID="chkHour21" runat="server" Checked='<%# bool.Parse( Eval("hour1").ToString()) %>' Enabled='<%# Eval("hour1").ToString().Equals("False") %>'
                            OnCheckedChanged="CheckBox22_CheckedChanged" OnClick="Check_Click(this)" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Hour2">
                    <EditItemTemplate>
                        <asp:CheckBox ID="ChkColumn22" runat="server" OnClick="Check_Click(this)" />
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:CheckBox ID="chkHour22" runat="server" Checked='<%# bool.Parse( Eval("hour2").ToString()) %>' Enabled='<%# Eval("hour2").ToString().Equals("False") %>'
                            OnCheckedChanged="CheckBox23_CheckedChanged" OnClick="Check_Click(this)" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Hour3">
                    <EditItemTemplate>
                        <asp:CheckBox ID="chkColumn23" runat="server" OnClick="Check_Click(this)" />
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:CheckBox ID="chkHour23" runat="server" Checked='<%# bool.Parse( Eval("hour3").ToString()) %>' Enabled='<%# Eval("hour3").ToString().Equals("False") %>'
                            OnCheckedChanged="CheckBox24_CheckedChanged" OnClick="Check_Click(this)" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Hour4">
                    <EditItemTemplate>
                        <asp:CheckBox ID="chkColumn24" runat="server" OnClick="Check_Click(this)" />
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:CheckBox ID="chkHour24" runat="server" Checked='<%# bool.Parse( Eval("hour4").ToString()) %>' Enabled='<%# Eval("hour4").ToString().Equals("False") %>'
                            OnCheckedChanged="CheckBox25_CheckedChanged" OnClick="Check_Click(this)" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Hour5">
                    <EditItemTemplate>
                        <asp:CheckBox ID="chkColumn25" runat="server" OnClick="Check_Click(this)" />
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:CheckBox ID="chkHour25" runat="server" Checked='<%# bool.Parse( Eval("hour5").ToString()) %>' Enabled='<%# Eval("hour5").ToString().Equals("False") %>'
                            OnCheckedChanged="CheckBox26_CheckedChanged" OnClick="Check_Click(this)" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
            <SortedAscendingCellStyle BackColor="#FDF5AC" />
            <SortedAscendingHeaderStyle BackColor="#4D0000" />
            <SortedDescendingCellStyle BackColor="#FCF6C0" />
            <SortedDescendingHeaderStyle BackColor="#820000" />
        </asp:GridView>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [datedif] FROM [datelist] WHERE ([dayweek] = @dayweek)">
            <SelectParameters>
                <asp:CookieParameter CookieName="dayweek" DefaultValue="dayweek" Name="dayweek" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>


        <asp:Button ID="btnsubmit" runat="server" Text="submit" OnClick="btnsubmit_Click" CssClass="buttonsub" />

        <script type="text/javascript">
            $(function () {
                var isMouseDown = false;
                $("#our_table td").mousedown(function () {
                    isMouseDown = true;
                    $(this).toggleClass("highlighted");
                    if (event.target.type !== 'checkbox') {
                        $(':checkbox', this).trigger('click');
                        $(this).find(".cbx input").attr('checked', true);

                    }
                    return false; // prevent text selection
                })
           .mouseover(function () {
               if (isMouseDown) {
                   $(this).toggleClass("highlighted");
               }
           });

                $(document).mouseup(function () {
                    isMouseDown = false;
                });
            });
        </script>

        <asp:SqlDataSource ID="sbbatch" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT [batch] FROM [datelist]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="sdssubject" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT [subject] FROM [datelist]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="sbweek" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT [weekbatch] FROM [datelist] WHERE ([batch] = @batch)">
            <SelectParameters>
                <asp:ControlParameter ControlID="ddlbatch" Name="batch" PropertyName="SelectedValue" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <br />
    </asp:Content>