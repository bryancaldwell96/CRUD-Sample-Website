<%@ Page Title="CRUD Assignment - Inactive Employees" Language="C#" MasterPageFile="~/Masters/Default.master" AutoEventWireup="true" CodeFile="InactiveEmployees.aspx.cs" Inherits="InactiveEmployees" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <h1>Inactive Employees</h1>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="intID" DataSourceID="dsEmployees">
        <Columns>
            <asp:BoundField DataField="intID" HeaderText="ID" ReadOnly="True" SortExpression="intID" />
            <asp:BoundField DataField="strFirstName" HeaderText="First Name" SortExpression="strFirstName" />
            <asp:BoundField DataField="strLastName" HeaderText="Last Name" SortExpression="strLastName" />
            <asp:BoundField DataField="strCity" HeaderText="City" SortExpression="strCity" />
            <asp:BoundField DataField="strState" HeaderText="State" SortExpression="strState" />
            <asp:BoundField DataField="strZip" HeaderText="Zip" SortExpression="strZip" />
            <asp:BoundField DataField="strPhoneNumber" HeaderText="Phone Number" SortExpression="strPhoneNumber" />
            <asp:BoundField DataField="strDepartment" HeaderText="Department" SortExpression="strDepartment" />
            <asp:BoundField DataField="strLevel" HeaderText="Level" SortExpression="strLevel" />
            <asp:BoundField DataField="dteDateOfHire" HeaderText="Date of Hire" SortExpression="dteDateOfHire" />
            <asp:BoundField DataField="dteDateOfTermination" HeaderText="Date of Termination" SortExpression="dteDateOfTermination" />
            <asp:BoundField DataField="strReasonForTermination" HeaderText="Reason for Termination" SortExpression="strReasonForTermination" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="dsEmployees" runat="server" ConnectionString="<%$ ConnectionStrings:CPDM_CaldwellBConnectionString %>" SelectCommand="SELECT [intID], [strFirstName], [strLastName], [strCity], [strState], [strZip], [strPhoneNumber], [strDepartment], [strLevel], [dteDateOfHire], [dteDateOfTermination], [strReasonForTermination] FROM [tblEmployees] WHERE ([blnActive] = @blnActive)">
        <SelectParameters>
            <asp:Parameter DefaultValue="false" Name="blnActive" Type="Boolean" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

