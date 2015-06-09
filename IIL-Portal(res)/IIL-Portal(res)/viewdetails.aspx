<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="viewdetails.aspx.cs" Inherits="IIL_Portal_res_.viewdetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="bootstudentcss.css" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <!--<div>
         <asp:Label ID="lblsrno" runat="server" Text="Label"></asp:Label>
      
         <asp:Label ID="lblcourse" runat="server" Text="Label"></asp:Label>
         <asp:Label ID="lblcampus" runat="server" Text="Label"></asp:Label><br />
         
          <asp:Label ID="lblintop" runat="server" Text="Label"></asp:Label>
          <asp:Label ID="lblsname" runat="server" Text="Label"></asp:Label>
           <asp:Label ID="lblgender" runat="server" Text="Label"></asp:Label>
           <asp:Label ID="lblsdob" runat="server" Text="Label"></asp:Label>
           <asp:Label ID="lblsnative" runat="server" Text="Label"></asp:Label>

    </div>-->
         <table id="Table1" class="etable1">
           
        <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1"   >

     

            <ItemTemplate>
                
             <tr >  
            <th>Register No</th>
             <td> <%# Eval("sregno") %>
            </td></tr>

                <tr>
            <th>
                 Student Name</th>
               <td> <%# Eval("sname") %>
            </td>
                    </tr>
                <tr>
            <th>
                 Course</th>
               <td> <%# Eval("course") %>
            </td></tr>
                <tr>
                 <th>
                 Campus</th>
               <td> <%# Eval("campus") %>
            </td></tr>
                <tr>
                 <th>
                 Internship Option</th>
               <td> <%# Eval("intpopn") %>
            </td></tr>
                <tr>
                 <th>
                 Gender</th>
               <td> <%# Eval("sgender") %>
            </td></tr>
                <tr>
                 <th>
                 DOB</th>
               <td> <%# Eval("sdob") %>
            </td></tr>
                <tr>
                 <th>
                 Native</th>
               <td> <%# Eval("snative") %>
            </td></tr>
                <tr>
                 <th>
                 Address1</th>
               <td> <%# Eval("sadds1") %>
            </td></tr>
                <tr>
                 <th>
                 Address1</label></th>
               <td> <%# Eval("sadds2") %>
            </td></tr>
                <tr>
                 <th>
                 City</th>
               <td> <%# Eval("scity") %>
            </td></tr>
                <tr>
                 <th>
               State</th>
               <td> <%# Eval("sstate") %>
            </td></tr>
                <tr>
                 <th>
                Pincode</th>
               <td> <%# Eval("spincode") %>
            </td></tr>
                <tr>
                 <th>
                 Father Name</th>
               <td> <%# Eval("sfname") %>
            </td></tr>
                <tr>
                 <th>
                 Mother Name</th>
               <td> <%# Eval("sadds2") %>
            </td></tr>
                <tr>
                 <th>
                 Personal Contact</th>
               <td> <%# Eval("splscont") %>
            </td></tr>
                <tr>
                 <th>
                 Parent Contact</th>
               <td> <%# Eval("sparcont") %>
            </td></tr>
                <tr>
                 <th>
                 Personal Email</th>
               <td> <%# Eval("splsemail") %>
            </td></tr>
                <tr>
                 <th>
                 <label>IIL Email</label></th>
               <td> <%# Eval("sinsemail") %>
            </td></tr>
                <tr>
                 <th>
                 Language Known 1</th>
               <td> <%# Eval("slangknow1") %>
            </td></tr>
                <tr>
                 <th>
                 LK 1(Read)</th>
               <td> <%# Eval("slangknow1rd") %>
            </td></tr>
                <tr>
                 <th>
                 LK 1(Write)</th>
               <td> <%# Eval("slangknow1wrt") %>
            </td></tr>
                 <tr>
                 <th>
                 LK 1(Speak)</th>
               <td> <%# Eval("slangknow1spk") %>
            </td></tr>
               
                <tr>
                 <th>
                 Language Known 2</th>
               <td> <%# Eval("slangknow2") %>
            </td></tr>
                <tr>
                 <th>
                 LK 2(Read)</th>
               <td> <%# Eval("slangknow2rd") %>
            </td></tr>
                <tr>
                 <th>
                 LK 2(Write)</th>
               <td> <%# Eval("slangknow2wrt") %>
            </td></tr>
                 <tr>
                 <th>
               LK 2(Speak)</th>
               <td> <%# Eval("slangknow2spk") %>
            </td></tr>
                
                 <th>
                 Language Known 3</th>
               <td> <%# Eval("slangknow3") %>
            </td></th>
                <tr>
                 <th>
                LK 3(Read)</th>
               <td> <%# Eval("slangknow3rd") %>
            </td></tr>
                <tr>
                 <th>
                 LK 3(Write)</th>
               <td> <%# Eval("slangknow3wrt") %>
            </td></tr>
                 <tr>
                 <th>
                 LK 3(Speak)</th>
               <td> <%# Eval("slangknow3spk") %>
            </td></tr>
                <tr>
                 <th>
                 Mother Tongue</th>
               <td> <%# Eval("smothertng") %>
            </td></tr>
                <tr>
                 <th>
                 Internship Location</th>
               <td> <%# Eval("sinternsploc") %>
            </td></tr>
                <tr>
                 <th>
                 Resume</th>
               <td> <%# Eval("supresume") %>
            </td></tr>
                <tr>
                 <th>
                Passport Photo</th>
               <td> <%# Eval("suppassportphoto") %>
            </td></tr>
                <tr>
                 <th>
                 Passport Photo Scan Copy</th>
               <td> <%# Eval("suppassportsc") %>
            </td></tr>
                <tr>
                 <th>
                 Boiler Suit</th>
               <td> <%# Eval("sboilerss") %>
            </td></tr>
                <tr>
                 <th>
                 Shoe size</th>
               <td> <%# Eval("sshoesize") %>
            </td></tr>
                 <tr>
                 <th>
                 SSLC Mark Sheet</th>
               <td> <%# Eval("tsslcms") %>
            </td></tr>
                 <tr>
                 <th>
                 HSLC Mark Sheet</th>
               <td> <%# Eval("thslcms") %>
            </td></tr>
                 <tr>
                 <th>
                 VI Sem UG Mark Sheet</th>
               <td> <%# Eval("tugms") %>
            </td></tr>
                <tr>
                 <th>
                 Transfer Certificate</th>
               <td> <%# Eval("ttc") %>
            </td></tr>
                <tr>
                 <th>
                Migration Certificate</th>
               <td> <%# Eval("tmc") %>
            </td></tr>
                 <tr>
                 <th>
                 Provisional Certificate</th>
               <td> <%# Eval("tpc") %>
            </td></tr>
                <tr>
                 <th>Degree Certificate
                 </th>
               <td> <%# Eval("tdc") %>
            </td></tr>

                

                 
        </ItemTemplate>
            
    </asp:ListView>
        </table>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [studdetails] WHERE ([sregno] = @sregno)">
      <SelectParameters>
                    <asp:QueryStringParameter DefaultValue="0" Name="sregno" QueryStringField="sregno" Type="string" />
                        
                </SelectParameters>

</asp:SqlDataSource>
        <br />
        <br />

        <table id="Table2" class="etable1">
             <tr>
                 <th colspan="7" style="text-align:center">Academic Certificates</th>
             </tr>
            <tr>
                <th>SSLC Mark Sheet</th>
                <th>HSLC Mark Sheet</th>
                <th>6 Sem UG Mark Sheet / Consolidated Mark Sheet / Year Wise Mark Sheet</th>
                <th>Transfer Certificate</th>
                 <th>Migration Certificate</th>
                <th>Provisional Certificate</th>
                <th>Degree Certificate</th>
            </tr>
            <tr>
                 <td><asp:CheckBox ID="sslc" runat="server" /></td>
                 <td><asp:CheckBox ID="hslc" runat="server" /></td>
                 <td><asp:CheckBox ID="ug" runat="server" /></td>
                 <td><asp:CheckBox ID="tc" runat="server" /></td>
                <td><asp:CheckBox ID="mc" runat="server" /></td>
                 <td><asp:CheckBox ID="pc" runat="server" /></td>
                 <td><asp:CheckBox ID="dc" runat="server" /></td>
            </tr>

        </table>
        <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
         

        

    </form>
</body>
</html>
