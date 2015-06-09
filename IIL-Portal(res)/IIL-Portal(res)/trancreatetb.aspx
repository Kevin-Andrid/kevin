<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="~/trancreatetb.aspx.cs" MasterPageFile="~/training.Master" Inherits="IIL_Portal_res_.tranattendance" %>

<asp:Content ID="body" ContentPlaceHolderID="bodytrain" runat="server">
    <link rel="stylesheet" href="bootstudentcss.css" type="text/css" />

    <asp:Content ID="Content1" ContentPlaceHolderID="bodytrain" runat="server">
    <link rel="stylesheet" href="bootstudentcss.css" type="text/css" />
                <div class="container">
                    <div class="pagehead">
                                <label>Create Student Timetable</label>
                            </div>
                  
                    <div class="row">
                        <div class="col-md-6 col-sm-12 col-lg-6 col-xs-12">
                            
                           
                            <div id="maincenter">
                    
                             <p>
                    <label>Batch
                    </label>
                         <asp:DropDownList ID="ddbatch" runat="server" CssClass="cd-dropdown1"></asp:DropDownList>
                 
                    </p>
                           <p>
                    <label>Campus
                    </label>
                          <asp:DropDownList ID="ddcamp" runat="server" CssClass="cd-dropdown1" AutoPostBack="true">
                              <asp:ListItem>CHN</asp:ListItem>
                              <asp:ListItem>COK</asp:ListItem>
                          </asp:DropDownList></p>
                   

</div>
                        </div>
                     <div class="col-md-6 col-sm-12 col-lg-6 col-xs-12"> 
                         <div id="centermain">
                                            <p>
                    <label>Week
                    </label>
                         <asp:DropDownList ID="ddweek" runat="server" CssClass="cd-dropdown1">
                             <asp:ListItem>Week One</asp:ListItem>
                             <asp:ListItem>Week Two</asp:ListItem>
                             <asp:ListItem>Week Three</asp:ListItem>
                             <asp:ListItem>Week Four</asp:ListItem>
                             <asp:ListItem>Week Five</asp:ListItem>
                             <asp:ListItem>Week Six</asp:ListItem>
                             <asp:ListItem>Week Seven</asp:ListItem>
                            <asp:ListItem>Week Eight</asp:ListItem>
                        </asp:DropDownList>
                    </p>
                         <p>
                    <label>From Date
                    </label>
                        <asp:TextBox ID="txtfromdate" runat="server" TextMode="Date" DataFormatString="{0:dd-MMM-yy}" CssClass="ebutt"></asp:TextBox>
                    </p>
                    <p>
                    <label>To Date
                    </label>
                        <asp:TextBox ID="txttodate" runat="server" TextMode="Date" DataFormatString="{0:dd-MMM-yy}" CssClass="ebutt"></asp:TextBox>
                    </p>
</div>
                    </div>
              
          </div>
                    <br />

            
                    <!------>
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="boottable">
                    <table id="Table2" class="etable" runat="server">
<tbody>
<tr>
<th>Day/Session</th>
<th>Session I</th>
<th>Session II</th>
<th>Session III</th>
<th>Session IV</th>
<th>Session V</th>
</tr>
<tr>
<th>Monday</th>
<td><asp:DropDownList ID="ddmons1" runat="server" CssClass="cd-dropdown">
    <asp:ListItem>IBM</asp:ListItem>
    <asp:ListItem>FOL</asp:ListItem>
    <asp:ListItem>IS</asp:ListItem>
    <asp:ListItem>CP</asp:ListItem>
    <asp:ListItem>WIM</asp:ListItem>
    <asp:ListItem>SFFPO</asp:ListItem>
    <asp:ListItem>TDM</asp:ListItem>
    <asp:ListItem>PA</asp:ListItem>
    <asp:ListItem>IV</asp:ListItem>
    <asp:ListItem>ASSIGNMENT</asp:ListItem>
    <asp:ListItem>HOLIDAY</asp:ListItem>
    </asp:DropDownList></td>
<td><asp:DropDownList ID="ddmons2" runat="server" CssClass="cd-dropdown">
    <asp:ListItem>IBM</asp:ListItem>
    <asp:ListItem>FOL</asp:ListItem>
    <asp:ListItem>IS</asp:ListItem>
    <asp:ListItem>CP</asp:ListItem>
    <asp:ListItem>WIM</asp:ListItem>
    <asp:ListItem>SFFPO</asp:ListItem>
    <asp:ListItem>TDM</asp:ListItem>
    <asp:ListItem>PA</asp:ListItem>
    <asp:ListItem>IV</asp:ListItem>
    <asp:ListItem>ASSIGNMENT</asp:ListItem>
    <asp:ListItem>HOLIDAY</asp:ListItem>
    </asp:DropDownList></td>
<td><asp:DropDownList ID="ddmons3" runat="server" CssClass="cd-dropdown">
    <asp:ListItem>IBM</asp:ListItem>
    <asp:ListItem>FOL</asp:ListItem>
    <asp:ListItem>IS</asp:ListItem>
    <asp:ListItem>CP</asp:ListItem>
    <asp:ListItem>WIM</asp:ListItem>
    <asp:ListItem>SFFPO</asp:ListItem>
    <asp:ListItem>TDM</asp:ListItem>
    <asp:ListItem>PA</asp:ListItem>
    <asp:ListItem>IV</asp:ListItem>
    <asp:ListItem>ASSIGNMENT</asp:ListItem>
    <asp:ListItem>HOLIDAY</asp:ListItem>
    </asp:DropDownList></td>
<td><asp:DropDownList ID="ddmons4" runat="server" CssClass="cd-dropdown">
    <asp:ListItem>IBM</asp:ListItem>
    <asp:ListItem>FOL</asp:ListItem>
    <asp:ListItem>IS</asp:ListItem>
    <asp:ListItem>CP</asp:ListItem>
    <asp:ListItem>WIM</asp:ListItem>
    <asp:ListItem>SFFPO</asp:ListItem>
    <asp:ListItem>TDM</asp:ListItem>
    <asp:ListItem>PA</asp:ListItem>
    <asp:ListItem>IV</asp:ListItem>
    <asp:ListItem>ASSIGNMENT</asp:ListItem>
    <asp:ListItem>HOLIDAY</asp:ListItem>
    </asp:DropDownList></td>
<td><asp:DropDownList ID="ddmons5" runat="server" CssClass="cd-dropdown">
    <asp:ListItem>IBM</asp:ListItem>
    <asp:ListItem>FOL</asp:ListItem>
    <asp:ListItem>IS</asp:ListItem>
    <asp:ListItem>CP</asp:ListItem>
    <asp:ListItem>WIM</asp:ListItem>
    <asp:ListItem>SFFPO</asp:ListItem>
    <asp:ListItem>TDM</asp:ListItem>
    <asp:ListItem>PA</asp:ListItem>
    <asp:ListItem>IV</asp:ListItem>
    <asp:ListItem>ASSIGNMENT</asp:ListItem>
    <asp:ListItem>HOLIDAY</asp:ListItem>
    </asp:DropDownList></td>
</tr>
<tr>
<th>Tuesday</th>
<td><asp:DropDownList ID="ddtues1" runat="server" CssClass="cd-dropdown">
    <asp:ListItem>IBM</asp:ListItem>
    <asp:ListItem>FOL</asp:ListItem>
    <asp:ListItem>IS</asp:ListItem>
    <asp:ListItem>CP</asp:ListItem>
    <asp:ListItem>WIM</asp:ListItem>
    <asp:ListItem>SFFPO</asp:ListItem>
    <asp:ListItem>TDM</asp:ListItem>
    <asp:ListItem>PA</asp:ListItem>
    <asp:ListItem>IV</asp:ListItem>
    <asp:ListItem>ASSIGNMENT</asp:ListItem>
    <asp:ListItem>HOLIDAY</asp:ListItem>
    </asp:DropDownList></td>
<td><asp:DropDownList ID="ddtues2" runat="server" CssClass="cd-dropdown">
    <asp:ListItem>IBM</asp:ListItem>
    <asp:ListItem>FOL</asp:ListItem>
    <asp:ListItem>IS</asp:ListItem>
    <asp:ListItem>CP</asp:ListItem>
    <asp:ListItem>WIM</asp:ListItem>
    <asp:ListItem>SFFPO</asp:ListItem>
    <asp:ListItem>TDM</asp:ListItem>
    <asp:ListItem>PA</asp:ListItem>
    <asp:ListItem>IV</asp:ListItem>
    <asp:ListItem>ASSIGNMENT</asp:ListItem>
    <asp:ListItem>HOLIDAY</asp:ListItem>
    </asp:DropDownList></td>
<td><asp:DropDownList ID="ddtues3" runat="server" CssClass="cd-dropdown">
    <asp:ListItem>IBM</asp:ListItem>
    <asp:ListItem>FOL</asp:ListItem>
    <asp:ListItem>IS</asp:ListItem>
    <asp:ListItem>CP</asp:ListItem>
    <asp:ListItem>WIM</asp:ListItem>
    <asp:ListItem>SFFPO</asp:ListItem>
    <asp:ListItem>TDM</asp:ListItem>
    <asp:ListItem>PA</asp:ListItem>
    <asp:ListItem>IV</asp:ListItem>
    <asp:ListItem>ASSIGNMENT</asp:ListItem>
    <asp:ListItem>HOLIDAY</asp:ListItem>
    </asp:DropDownList></td>
<td><asp:DropDownList ID="ddtues4" runat="server" CssClass="cd-dropdown">
    <asp:ListItem>IBM</asp:ListItem>
    <asp:ListItem>FOL</asp:ListItem>
    <asp:ListItem>IS</asp:ListItem>
    <asp:ListItem>CP</asp:ListItem>
    <asp:ListItem>WIM</asp:ListItem>
    <asp:ListItem>SFFPO</asp:ListItem>
    <asp:ListItem>TDM</asp:ListItem>
    <asp:ListItem>PA</asp:ListItem>
    <asp:ListItem>IV</asp:ListItem>
    <asp:ListItem>ASSIGNMENT</asp:ListItem>
    <asp:ListItem>HOLIDAY</asp:ListItem>
    </asp:DropDownList></td>
<td><asp:DropDownList ID="ddtues5" runat="server" CssClass="cd-dropdown">
    <asp:ListItem>IBM</asp:ListItem>
    <asp:ListItem>FOL</asp:ListItem>
    <asp:ListItem>IS</asp:ListItem>
    <asp:ListItem>CP</asp:ListItem>
    <asp:ListItem>WIM</asp:ListItem>
    <asp:ListItem>SFFPO</asp:ListItem>
    <asp:ListItem>TDM</asp:ListItem>
    <asp:ListItem>PA</asp:ListItem>
    <asp:ListItem>IV</asp:ListItem>
    <asp:ListItem>ASSIGNMENT</asp:ListItem>
    <asp:ListItem>HOLIDAY</asp:ListItem>
    </asp:DropDownList></td>
</tr>
<tr>
<th>Wednesday</th>
<td><asp:DropDownList ID="ddweds1" runat="server" CssClass="cd-dropdown">
    <asp:ListItem>IBM</asp:ListItem>
    <asp:ListItem>FOL</asp:ListItem>
    <asp:ListItem>IS</asp:ListItem>
    <asp:ListItem>CP</asp:ListItem>
    <asp:ListItem>WIM</asp:ListItem>
    <asp:ListItem>SFFPO</asp:ListItem>
    <asp:ListItem>TDM</asp:ListItem>
    <asp:ListItem>PA</asp:ListItem>
    <asp:ListItem>IV</asp:ListItem>
    <asp:ListItem>ASSIGNMENT</asp:ListItem>
    <asp:ListItem>HOLIDAY</asp:ListItem>
    </asp:DropDownList></td>
<td><asp:DropDownList ID="ddweds2" runat="server" CssClass="cd-dropdown">
    <asp:ListItem>IBM</asp:ListItem>
    <asp:ListItem>FOL</asp:ListItem>
    <asp:ListItem>IS</asp:ListItem>
    <asp:ListItem>CP</asp:ListItem>
    <asp:ListItem>WIM</asp:ListItem>
    <asp:ListItem>SFFPO</asp:ListItem>
    <asp:ListItem>TDM</asp:ListItem>
    <asp:ListItem>PA</asp:ListItem>
    <asp:ListItem>IV</asp:ListItem>
    <asp:ListItem>ASSIGNMENT</asp:ListItem>
    <asp:ListItem>HOLIDAY</asp:ListItem>
    </asp:DropDownList></td>
<td><asp:DropDownList ID="ddweds3" runat="server" CssClass="cd-dropdown">
    <asp:ListItem>IBM</asp:ListItem>
    <asp:ListItem>FOL</asp:ListItem>
    <asp:ListItem>IS</asp:ListItem>
    <asp:ListItem>CP</asp:ListItem>
    <asp:ListItem>WIM</asp:ListItem>
    <asp:ListItem>SFFPO</asp:ListItem>
    <asp:ListItem>TDM</asp:ListItem>
    <asp:ListItem>PA</asp:ListItem>
    <asp:ListItem>IV</asp:ListItem>
    <asp:ListItem>ASSIGNMENT</asp:ListItem>
    <asp:ListItem>HOLIDAY</asp:ListItem>
    </asp:DropDownList></td>
<td><asp:DropDownList ID="ddweds4" runat="server" CssClass="cd-dropdown">
    <asp:ListItem>IBM</asp:ListItem>
    <asp:ListItem>FOL</asp:ListItem>
    <asp:ListItem>IS</asp:ListItem>
    <asp:ListItem>CP</asp:ListItem>
    <asp:ListItem>WIM</asp:ListItem>
    <asp:ListItem>SFFPO</asp:ListItem>
    <asp:ListItem>TDM</asp:ListItem>
    <asp:ListItem>PA</asp:ListItem>
    <asp:ListItem>IV</asp:ListItem>
    <asp:ListItem>ASSIGNMENT</asp:ListItem>
    <asp:ListItem>HOLIDAY</asp:ListItem>
    </asp:DropDownList></td>
<td><asp:DropDownList ID="ddweds5" runat="server" CssClass="cd-dropdown">
    <asp:ListItem>IBM</asp:ListItem>
    <asp:ListItem>FOL</asp:ListItem>
    <asp:ListItem>IS</asp:ListItem>
    <asp:ListItem>CP</asp:ListItem>
    <asp:ListItem>WIM</asp:ListItem>
    <asp:ListItem>SFFPO</asp:ListItem>
    <asp:ListItem>TDM</asp:ListItem>
    <asp:ListItem>PA</asp:ListItem>
    <asp:ListItem>IV</asp:ListItem>
    <asp:ListItem>ASSIGNMENT</asp:ListItem>
    <asp:ListItem>HOLIDAY</asp:ListItem>
    </asp:DropDownList></td>
</tr>
<tr>
<th>Thursday</th>
<td><asp:DropDownList ID="ddthus1" runat="server" CssClass="cd-dropdown">
    <asp:ListItem>IBM</asp:ListItem>
    <asp:ListItem>FOL</asp:ListItem>
    <asp:ListItem>IS</asp:ListItem>
    <asp:ListItem>CP</asp:ListItem>
    <asp:ListItem>WIM</asp:ListItem>
    <asp:ListItem>SFFPO</asp:ListItem>
    <asp:ListItem>TDM</asp:ListItem>
    <asp:ListItem>PA</asp:ListItem>
    <asp:ListItem>IV</asp:ListItem>
    <asp:ListItem>ASSIGNMENT</asp:ListItem>
    <asp:ListItem>HOLIDAY</asp:ListItem>
    </asp:DropDownList></td>
<td><asp:DropDownList ID="ddthus2" runat="server" CssClass="cd-dropdown">
    <asp:ListItem>IBM</asp:ListItem>
    <asp:ListItem>FOL</asp:ListItem>
    <asp:ListItem>IS</asp:ListItem>
    <asp:ListItem>CP</asp:ListItem>
    <asp:ListItem>WIM</asp:ListItem>
    <asp:ListItem>SFFPO</asp:ListItem>
    <asp:ListItem>TDM</asp:ListItem>
    <asp:ListItem>PA</asp:ListItem>
    <asp:ListItem>IV</asp:ListItem>
    <asp:ListItem>ASSIGNMENT</asp:ListItem>
    <asp:ListItem>HOLIDAY</asp:ListItem>
    </asp:DropDownList></td>
<td><asp:DropDownList ID="ddthus3" runat="server" CssClass="cd-dropdown">
    <asp:ListItem>IBM</asp:ListItem>
    <asp:ListItem>FOL</asp:ListItem>
    <asp:ListItem>IS</asp:ListItem>
    <asp:ListItem>CP</asp:ListItem>
    <asp:ListItem>WIM</asp:ListItem>
    <asp:ListItem>SFFPO</asp:ListItem>
    <asp:ListItem>TDM</asp:ListItem>
    <asp:ListItem>PA</asp:ListItem>
    <asp:ListItem>IV</asp:ListItem>
    <asp:ListItem>ASSIGNMENT</asp:ListItem>
    <asp:ListItem>HOLIDAY</asp:ListItem>
    </asp:DropDownList></td>
<td><asp:DropDownList ID="ddthus4" runat="server" CssClass="cd-dropdown">
    <asp:ListItem>IBM</asp:ListItem>
    <asp:ListItem>FOL</asp:ListItem>
    <asp:ListItem>IS</asp:ListItem>
    <asp:ListItem>CP</asp:ListItem>
    <asp:ListItem>WIM</asp:ListItem>
    <asp:ListItem>SFFPO</asp:ListItem>
    <asp:ListItem>TDM</asp:ListItem>
    <asp:ListItem>PA</asp:ListItem>
    <asp:ListItem>IV</asp:ListItem>
    <asp:ListItem>ASSIGNMENT</asp:ListItem>
    <asp:ListItem>HOLIDAY</asp:ListItem>
    </asp:DropDownList></td>
<td><asp:DropDownList ID="ddthus5" runat="server" CssClass="cd-dropdown">
    <asp:ListItem>IBM</asp:ListItem>
    <asp:ListItem>FOL</asp:ListItem>
    <asp:ListItem>IS</asp:ListItem>
    <asp:ListItem>CP</asp:ListItem>
    <asp:ListItem>WIM</asp:ListItem>
    <asp:ListItem>SFFPO</asp:ListItem>
    <asp:ListItem>TDM</asp:ListItem>
    <asp:ListItem>PA</asp:ListItem>
    <asp:ListItem>IV</asp:ListItem>
    <asp:ListItem>ASSIGNMENT</asp:ListItem>
    <asp:ListItem>HOLIDAY</asp:ListItem>
    </asp:DropDownList></td>
</tr>
    <tr>
<th>Friday</th>
<td><asp:DropDownList ID="ddfris1" runat="server" CssClass="cd-dropdown">
    <asp:ListItem>IBM</asp:ListItem>
    <asp:ListItem>FOL</asp:ListItem>
    <asp:ListItem>IS</asp:ListItem>
    <asp:ListItem>CP</asp:ListItem>
    <asp:ListItem>WIM</asp:ListItem>
    <asp:ListItem>SFFPO</asp:ListItem>
    <asp:ListItem>TDM</asp:ListItem>
    <asp:ListItem>PA</asp:ListItem>
    <asp:ListItem>IV</asp:ListItem>
    <asp:ListItem>ASSIGNMENT</asp:ListItem>
    <asp:ListItem>HOLIDAY</asp:ListItem>
    </asp:DropDownList></td>
<td><asp:DropDownList ID="ddfris2" runat="server" CssClass="cd-dropdown">
    <asp:ListItem>IBM</asp:ListItem>
    <asp:ListItem>FOL</asp:ListItem>
    <asp:ListItem>IS</asp:ListItem>
    <asp:ListItem>CP</asp:ListItem>
    <asp:ListItem>WIM</asp:ListItem>
    <asp:ListItem>SFFPO</asp:ListItem>
    <asp:ListItem>TDM</asp:ListItem>
    <asp:ListItem>PA</asp:ListItem>
    <asp:ListItem>IV</asp:ListItem>
    <asp:ListItem>ASSIGNMENT</asp:ListItem>
    <asp:ListItem>HOLIDAY</asp:ListItem>
    </asp:DropDownList></td>
<td><asp:DropDownList ID="ddfris3" runat="server" CssClass="cd-dropdown">
    <asp:ListItem>IBM</asp:ListItem>
    <asp:ListItem>FOL</asp:ListItem>
    <asp:ListItem>IS</asp:ListItem>
    <asp:ListItem>CP</asp:ListItem>
    <asp:ListItem>WIM</asp:ListItem>
    <asp:ListItem>SFFPO</asp:ListItem>
    <asp:ListItem>TDM</asp:ListItem>
    <asp:ListItem>PA</asp:ListItem>
    <asp:ListItem>IV</asp:ListItem>
    <asp:ListItem>ASSIGNMENT</asp:ListItem>
    <asp:ListItem>HOLIDAY</asp:ListItem>
    </asp:DropDownList></td>
<td><asp:DropDownList ID="ddfris4" runat="server" CssClass="cd-dropdown">
    <asp:ListItem>IBM</asp:ListItem>
    <asp:ListItem>FOL</asp:ListItem>
    <asp:ListItem>IS</asp:ListItem>
    <asp:ListItem>CP</asp:ListItem>
    <asp:ListItem>WIM</asp:ListItem>
    <asp:ListItem>SFFPO</asp:ListItem>
    <asp:ListItem>TDM</asp:ListItem>
    <asp:ListItem>PA</asp:ListItem>
    <asp:ListItem>IV</asp:ListItem>
    <asp:ListItem>ASSIGNMENT</asp:ListItem>
    <asp:ListItem>HOLIDAY</asp:ListItem>
    </asp:DropDownList></td>
<td><asp:DropDownList ID="ddfris5" runat="server" CssClass="cd-dropdown">
    <asp:ListItem>IBM</asp:ListItem>
    <asp:ListItem>FOL</asp:ListItem>
    <asp:ListItem>IS</asp:ListItem>
    <asp:ListItem>CP</asp:ListItem>
    <asp:ListItem>WIM</asp:ListItem>
    <asp:ListItem>SFFPO</asp:ListItem>
    <asp:ListItem>TDM</asp:ListItem>
    <asp:ListItem>PA</asp:ListItem>
    <asp:ListItem>IV</asp:ListItem>
    <asp:ListItem>ASSIGNMENT</asp:ListItem>
    <asp:ListItem>HOLIDAY</asp:ListItem>
    </asp:DropDownList></td>
</tr>
    <tr>
<th>Saturday</th>
<td><asp:DropDownList ID="ddsats1" runat="server" CssClass="cd-dropdown">
    <asp:ListItem>IBM</asp:ListItem>
    <asp:ListItem>FOL</asp:ListItem>
    <asp:ListItem>IS</asp:ListItem>
    <asp:ListItem>CP</asp:ListItem>
    <asp:ListItem>WIM</asp:ListItem>
    <asp:ListItem>SFFPO</asp:ListItem>
    <asp:ListItem>TDM</asp:ListItem>
    <asp:ListItem>PA</asp:ListItem>
    <asp:ListItem>IV</asp:ListItem>
    <asp:ListItem>ASSIGNMENT</asp:ListItem>
    <asp:ListItem>HOLIDAY</asp:ListItem>
    </asp:DropDownList></td>
<td><asp:DropDownList ID="ddsats2" runat="server" CssClass="cd-dropdown">
    <asp:ListItem>IBM</asp:ListItem>
    <asp:ListItem>FOL</asp:ListItem>
    <asp:ListItem>IS</asp:ListItem>
    <asp:ListItem>CP</asp:ListItem>
    <asp:ListItem>WIM</asp:ListItem>
    <asp:ListItem>SFFPO</asp:ListItem>
    <asp:ListItem>TDM</asp:ListItem>
    <asp:ListItem>PA</asp:ListItem>
    <asp:ListItem>IV</asp:ListItem>
    <asp:ListItem>ASSIGNMENT</asp:ListItem>
    <asp:ListItem>HOLIDAY</asp:ListItem>
    </asp:DropDownList></td>
<td><asp:DropDownList ID="ddsats3" runat="server" CssClass="cd-dropdown">
    <asp:ListItem>IBM</asp:ListItem>
    <asp:ListItem>FOL</asp:ListItem>
    <asp:ListItem>IS</asp:ListItem>
    <asp:ListItem>CP</asp:ListItem>
    <asp:ListItem>WIM</asp:ListItem>
    <asp:ListItem>SFFPO</asp:ListItem>
    <asp:ListItem>TDM</asp:ListItem>
    <asp:ListItem>PA</asp:ListItem>
    <asp:ListItem>IV</asp:ListItem>
    <asp:ListItem>ASSIGNMENT</asp:ListItem>
    <asp:ListItem>HOLIDAY</asp:ListItem>
    </asp:DropDownList></td>
<td><asp:DropDownList ID="ddsats4" runat="server" CssClass="cd-dropdown">
    <asp:ListItem>IBM</asp:ListItem>
    <asp:ListItem>FOL</asp:ListItem>
    <asp:ListItem>IS</asp:ListItem>
    <asp:ListItem>CP</asp:ListItem>
    <asp:ListItem>WIM</asp:ListItem>
    <asp:ListItem>SFFPO</asp:ListItem>
    <asp:ListItem>TDM</asp:ListItem>
    <asp:ListItem>PA</asp:ListItem>
    <asp:ListItem>IV</asp:ListItem>
    <asp:ListItem>ASSIGNMENT</asp:ListItem>
    <asp:ListItem>HOLIDAY</asp:ListItem>
    </asp:DropDownList></td>
<td><asp:DropDownList ID="ddsats5" runat="server" CssClass="cd-dropdown">
    <asp:ListItem>IBM</asp:ListItem>
    <asp:ListItem>FOL</asp:ListItem>
    <asp:ListItem>IS</asp:ListItem>
    <asp:ListItem>CP</asp:ListItem>
    <asp:ListItem>WIM</asp:ListItem>
    <asp:ListItem>SFFPO</asp:ListItem>
    <asp:ListItem>TDM</asp:ListItem>
    <asp:ListItem>PA</asp:ListItem>
    <asp:ListItem>IV</asp:ListItem>
    <asp:ListItem>ASSIGNMENT</asp:ListItem>
    <asp:ListItem>HOLIDAY</asp:ListItem>
    </asp:DropDownList></td>
</tr>
</tbody>
</table>
                        <div class="center">
                              <p> <asp:Button ID="btnins" runat="server" Text="Create Timetable"  CssClass="buttons" Style="margin-left:35%"  /></p>

    </div>
                      
                  
                        </div>

                            </div>
                        </div>
                    </div>
 
              </div>     
    <br />
                    

 


    </asp:Content>