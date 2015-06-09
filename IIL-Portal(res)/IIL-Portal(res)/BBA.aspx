<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BBA.aspx.cs" Inherits="IIL_Portal_res_.BBA" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
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
            <td> <label>Register No</label></td>
             <td>   <%# Eval("sregno") %>
            </td></tr>
                <tr>
            <td>
                 <label>Student Name</label></td>
               <td> <%# Eval("sname") %>
            </td>
                    </tr>
                <tr>
            <td>
                 <label>Course</label></td>
               <td> <%# Eval("course") %>
            </td></tr>
                <tr>
                 <td>
                 <label>Campus</label></td>
               <td> <%# Eval("campus") %>
            </td></tr>
                <tr>
                 <td>
                 <label>Internship Option</label></td>
               <td> <%# Eval("intpopn") %>
            </td></tr>
                <tr>
                 <td>
                 <label>Gender</label></td>
               <td> <%# Eval("sgender") %>
            </td></tr>
                <tr>
                 <td>
                 <label>DOB</label></td>
               <td> <%# Eval("sdob") %>
            </td></tr>
                <tr>
                 <td>
                 <label>Native</label></td>
               <td> <%# Eval("snative") %>
            </td></tr>
                <tr>
                 <td>
                 <label>Address1</label></td>
               <td> <%# Eval("sadds1") %>
            </td></tr>
                <tr>
                 <td>
                 <label>Address1</label></td>
               <td> <%# Eval("sadds2") %>
            </td></tr>
                <tr>
                 <td>
                 <label>City</label></td>
               <td> <%# Eval("scity") %>
            </td></tr>
                <tr>
                 <td>
                 <label>State</label></td>
               <td> <%# Eval("sstate") %>
            </td></tr>
                <tr>
                 <td>
                 <label>Pincode</label></td>
               <td> <%# Eval("spincode") %>
            </td></tr>
                <tr>
                 <td>
                 <label>Father Name</label></td>
               <td> <%# Eval("sfname") %>
            </td></tr>
                <tr>
                 <td>
                 <label>Mother Name</label></td>
               <td> <%# Eval("sadds2") %>
            </td></tr>
                <tr>
                 <td>
                 <label>Personal Contact</label></td>
               <td> <%# Eval("splscont") %>
            </td></tr>
                <tr>
                 <td>
                 <label>Parent Contact</label></td>
               <td> <%# Eval("sparcont") %>
            </td></tr>
                <tr>
                 <td>
                 <label>Personal Email</label></td>
               <td> <%# Eval("splsemail") %>
            </td></tr>
                <tr>
                 <td>
                 <label>IIL Email</label></td>
               <td> <%# Eval("sinsemail") %>
            </td></tr>
                <tr>
                 <td>
                 <label>Language Known 1</label></td>
               <td> <%# Eval("slangknow1") %>
            </td></tr>
                <tr>
                 <td>
                 <label>LK 1(Read)</label></td>
               <td> <%# Eval("slangknow1rd") %>
            </td></tr>
                <tr>
                 <td>
                 <label>LK 1(Write)</label></td>
               <td> <%# Eval("slangknow1wrt") %>
            </td></tr>
                 <tr>
                 <td>
                 <label>LK 1(Speak)</label></td>
               <td> <%# Eval("slangknow1spk") %>
            </td></tr>
               
                <tr>
                 <td>
                 <label>Language Known 2</label></td>
               <td> <%# Eval("slangknow2") %>
            </td></tr>
                <tr>
                 <td>
                 <label>LK 2(Read)</label></td>
               <td> <%# Eval("slangknow2rd") %>
            </td></tr>
                <tr>
                 <td>
                 <label>LK 2(Write)</label></td>
               <td> <%# Eval("slangknow2wrt") %>
            </td></tr>
                 <tr>
                 <td>
                 <label>LK 2(Speak)</label></td>
               <td> <%# Eval("slangknow2spk") %>
            </td></tr>
                <tr>
                 <td>
                 <label>Language Known 3</label></td>
               <td> <%# Eval("slangknow3") %>
            </td></tr>
                <tr>
                 <td>
                 <label>LK 3(Read)</label></td>
               <td> <%# Eval("slangknow3rd") %>
            </td></tr>
                <tr>
                 <td>
                 <label>LK 3(Write)</label></td>
               <td> <%# Eval("slangknow3wrt") %>
            </td></tr>
                 <tr>
                 <td>
                 <label>LK 3(Speak)</label></td>
               <td> <%# Eval("slangknow3spk") %>
            </td></tr>
                <tr>
                 <td>
                 <label>Mother Tongue</label></td>
               <td> <%# Eval("smothertng") %>
            </td></tr>
                <tr>
                 <td>
                 <label>Internship Location</label></td>
               <td> <%# Eval("sinternsploc") %>
            </td></tr>
                <tr>
                 <td>
                 <label>Resume</label></td>
               <td> <%# Eval("supresume") %>
            </td></tr>
                <tr>
                 <td>
                 <label>Passport Photo</label></td>
               <td> <%# Eval("suppassportphoto") %>
            </td></tr>
                <tr>
                 <td>
                 <label>Passport Photo Scan Copy</label></td>
               <td> <%# Eval("suppassportsc") %>
            </td></tr>
                <tr>
                 <td>
                 <label>Boiler Suit</label></td>
               <td> <%# Eval("sboilerss") %>
            </td></tr>
                <tr>
                 <td>
                 <label>Shoe size</label></td>
               <td> <%# Eval("sshoesize") %>
            </td></tr>
                <tr>
                 <td>
                 <label>SSLC Mark Sheet</label></td>
               <td> <%# Eval("tsslcms") %>
            </td></tr>
                 <tr>
                 <td>
                 HSLC Mark Sheet</td>
               <td> <%# Eval("thslcms") %>
            </td></tr>
                 
                <tr>
                 <td>
                 Transfer Certificate</td>
               <td> <%# Eval("ttc") %>
            </td></tr>
                 <tr>
                 <td>
                 Migration Certificate</td>
               <td> <%# Eval("tmc") %>
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
                 <th colspan="4" style="text-align:center">Academic Certificates</th>
             </tr>
            <tr>
                <th>SSLC Mark Sheet</th>
                <th>HSLC Mark Sheet</th>
                
                <th>Transfer Certificate</th>
                 <th>Migration Certificate</th>
                
            </tr>
            <tr>
                 <td><asp:CheckBox ID="sslc" runat="server" /></td>
                 <td><asp:CheckBox ID="hslc" runat="server" /></td>
                 
                 <td><asp:CheckBox ID="tc" runat="server" /></td>
                <td><asp:CheckBox ID="mc" runat="server" /></td>
                 
            </tr>

        </table>
        
        <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />

    </form>
</body>
</html>

