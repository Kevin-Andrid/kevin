<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="~/tranadminctt.aspx.cs" Inherits="IIL_Portal_res_.tranadminctt" MasterPageFile="~/trantimetable.Master" %>

<asp:Content ID="body" ContentPlaceHolderID="bodytrain" runat="server">
    <link rel="stylesheet" href="bootstudentcss.css" type="text/css" />

    <link rel="stylesheet" href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css" />
    <script src="http://code.jquery.com/jquery-1.9.1.js"></script>
    <script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
    <link href="css/fafaicon.css" rel="stylesheet" />

    <script type="text/javascript">
        $(function () {
            $('.txtmonth').datepicker({
                changeMonth: true,
                changeYear: true,
                showButtonPanel: true,
                dateFormat: 'MM yy',
                onClose: function (dateText, inst) {
                    var month = $("#ui-datepicker-div .ui-datepicker-month :selected").val();
                    var year = $("#ui-datepicker-div .ui-datepicker-year :selected").val();
                    $(this).datepicker('setDate', new Date(year, month, 1));
                }
            });
        });
    </script>
    <script type="text/javascript">
        $(function () {
            $('.txtfromdate').datepicker({
                beforeShowDay: function (date) {
                    var day = date.getDay();
                    return [(day != 0), ''];
                }
            });
        });
    </script>
    <script type="text/javascript">
        $(function () {
            $('.txttodate').datepicker({
                beforeShowDay: function (date) {
                    var day = date.getDay();
                    return [(day != 0), ''];
                }
            });
        });
    </script>

    <script>
        function myFunction(a) {

            alert(a);
        }
    </script>

    <script type = "text/javascript">
        function Confirm() {
            var confirm_value = document.createElement("INPUT");
            confirm_value.type = "hidden";
            confirm_value.name = "confirm_value";
            if (confirm("Do you want to block hour?")) {
                confirm_value.value = "Yes";
            } else {
                confirm_value.value = "NO";
            }
            document.forms[0].appendChild(confirm_value);
        }
    </script>
    <style>

    .modalBackground {
    background-color: Black;
    filter: alpha(opacity=00);
    opacity: 0.6;
}       
   .modalPopup {
  background-color: #fff;
  width: 395px;
  border-top: 25px solid #003259;
  border-bottom: 55px solid #003259;
  border-right: 25px solid #003259;
  border-left: 25px solid #003259;
  padding: 5px;
  color: #333;
  height: 110px;

            
        }

            .modalPopup .header {
                background-color:#fff;
                height: 30px;
                color: #333;
                line-height: 30px;
                text-align: center;
                font-family:'Segoe UI';
                font-size:15px;
                width: 500px;
                
            }

            .modalPopup .body {
                min-height: 100px;
                padding: 5px;
                line-height: 30px;
                text-align: center;
                font-weight: bold;
                height:50px;
                margin-top:23px;
            }

    
    </style>
    <div class="container">
        <div class="row">
            <div class="col-md-12 col-sm-12 col-lg-12 col-xs-12">
                <div class="pagehead">
                    <label>Admin Timetable Allocate</label>
                </div>
                
                <div class="maincenter">
                    <p>
                        <asp:Label id="lblsem" runat="server">Semester</asp:Label><br />
                        <asp:DropDownList ID="ddlsemester" runat="server" CssClass="cd-dropdown">
                            <asp:ListItem Value="0">Select Semester</asp:ListItem>
                            <asp:ListItem Value="1">Semester 1</asp:ListItem>
                            <asp:ListItem Value="2">Semester 2</asp:ListItem>
                            <asp:ListItem Value="3">Semester 3</asp:ListItem>
                            <asp:ListItem Value="4">Semester 4</asp:ListItem>
                            <asp:ListItem Value="5">Semester 5</asp:ListItem>
                            <asp:ListItem Value="6">Semester 6</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="ddlsemester" ErrorMessage="Select semester" Font-Size="Small" ForeColor="Red" InitialValue="0"></asp:RequiredFieldValidator>
                    </p>
                    <p>
                        <asp:Label id="lblbatch" runat="server">Batch</asp:Label><br />
                        <asp:DropDownList ID="ddlbatch" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlbatch_SelectedIndexChanged" CssClass="cd-dropdown" DataSourceID="SqlDataSource1" DataTextField="batch" DataValueField="batch" OnDataBound="ddlbatch_DataBound"></asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="ddlbatch" ErrorMessage="Select Batch"></asp:RequiredFieldValidator>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT [batch] FROM [assign]"></asp:SqlDataSource>
                    </p>
                    <p>
                        <label>Section</label><br />
                        <asp:DropDownList ID="ddlsection" CssClass="cd-dropdown" runat="server" OnDataBound="ddlsection_DataBound"></asp:DropDownList>
                    </p>
                    <p>
                        <asp:Label id="lblmonth" runat="server">Month & week</asp:Label>
                        <br />
                        <asp:TextBox cssclass="txtmonth" runat="server" ID="txtmonth">---------Month-------</asp:TextBox>
                        <asp:DropDownList ID="ddlweek" runat="server" CssClass="cd-dropdown">
                            <asp:ListItem Value="0">-----Week-----</asp:ListItem>
                            <asp:ListItem>Week 1</asp:ListItem>
                            <asp:ListItem>Week 2</asp:ListItem>
                            <asp:ListItem>Week 3</asp:ListItem>
                            <asp:ListItem>Week 4</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="weekvalidator" runat="server" ControlToValidate="ddlweek" ErrorMessage="Select Week" Font-Size="Small" ForeColor="Red" InitialValue="0"></asp:RequiredFieldValidator>
                    </p>
                    <p>
                        <asp:label id="lbldate" runat="server">From Date & To Date</asp:label><br />
                        <asp:TextBox ID="txtfromdate" runat="server" Enabled="True" OnTextChanged="From_TextChanged" cssclass="txtfromdate">---------From-------</asp:TextBox>
                        <asp:TextBox ID="txttodate" runat="server" Enabled="True" OnTextChanged="To_TextChanged" cssclass="txttodate">---------To-------</asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtfromdate" ErrorMessage="Select Dates"></asp:RequiredFieldValidator>
                </div>
            </div>
        </div>
        <div class="center">
            <asp:Button ID="btnsubmit" runat="server" Text="Submit" OnClick="btnsubmit_Click" CssClass="buttons" />
        </div>
        <div class="center" style="width: 81%">
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Create TimeTable" CssClass="buttons" />
        </div>
        <br />
        <div>
            <asp:Button ID="btnsubject" runat="server" Text="Subject" OnClick="btnsubject_Click"/>&nbsp
            <asp:Button ID="btnevent" runat="server" Text="Event" OnClick="btnevent_Click" /><br />
        </div><br />
        <div>
            <asp:DropDownList ID="ddlselectsubject" runat="server" AppendDataBoundItems="true" DataSourceID="sqlselectsubject" DataTextField="subject" DataValueField="subject"  AutoPostBack="true">
                <asp:listitem Value="">Please Select</asp:listitem>
            </asp:DropDownList>
            <asp:SqlDataSource ID="sqlselectsubject" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT [subject] FROM [subjectlist]"></asp:SqlDataSource>
            
            <asp:DropDownList ID="ddlselectevent" runat="server" OnSelectedIndexChanged="ddlselectevent_SelectedIndexChanged" AutoPostBack="true">
                <asp:ListItem Value="">Select Video</asp:ListItem>
                <asp:ListItem Value="video">Video 1</asp:ListItem>
                <asp:ListItem Value="video">Video 2</asp:ListItem>
                <asp:ListItem Value="video">Video 3</asp:ListItem>
            </asp:DropDownList>
        </div>
        <div class="gridcc">
            <asp:GridView ID="Gv3" runat="server" AutoGenerateColumns="False" CssClass="mGrid1" OnSelectedIndexChanged="Button1_Click" CellPadding="4" ForeColor="#333333" GridLines="None" >
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="datedif" HeaderText="Day/Hour" SortExpression="datedif" />
                    <asp:TemplateField HeaderText="Hour1">
                        <EditItemTemplate>
                            <asp:CheckBox ID="CheckBox1" runat="server" /> 
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:CheckBox ID="CheckBox1" runat="server" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Hour2">
                        <EditItemTemplate>
                            <asp:CheckBox ID="CheckBox2" runat="server" /><i class="fa fa-book" style="color:black"></i>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:CheckBox ID="CheckBox2" runat="server" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Hour3">
                        <EditItemTemplate>
                            <asp:CheckBox ID="CheckBox3" runat="server" />
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:CheckBox ID="CheckBox3" runat="server" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Hour4">
                        <EditItemTemplate>
                            <asp:CheckBox ID="CheckBox4" runat="server" />
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:CheckBox ID="CheckBox4" runat="server" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Hour5">
                        <EditItemTemplate>
                            <asp:CheckBox ID="CheckBox5" runat="server" />
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:CheckBox ID="CheckBox5" runat="server" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
        </div>
        <br />
        <div class="center">
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Submit" CssClass="buttons" />
        </div>
    </div>
    <br />
    <br />
    <br />
    <br />

      <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    
        <pop:modalpopupextender ID="mp1" runat="server" PopupControlID="eventdetails" TargetControlID="popuphidden"
            BackgroundCssClass="modalBackground">
        </pop:modalpopupextender>
    <asp:HiddenField ID="popuphidden" runat="server" />
     <asp:Panel ID="eventdetails" runat="server" CssClass="modalPopup" align="center" Style="display: none">
            
            <div class="mbody">
                <label>Do you want to block hours?</label><br /><br />
                <asp:Button ID="btnyes" runat="server" Text="Yes" OnClick="btnyes_Click" />
                <asp:Button ID="btnno" runat="server" Text="No" OnClick="btnno_Click" />
            </div>
         </asp:Panel>

</asp:Content>
