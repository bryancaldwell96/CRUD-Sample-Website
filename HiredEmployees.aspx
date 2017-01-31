<%@ Page Title="CRUD Assignment - Hired Employees Search" Language="C#" MasterPageFile="~/Masters/Default.master" AutoEventWireup="true" CodeFile="HiredEmployees.aspx.cs" Inherits="HiredEmployees" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <p>Select a date to start your search from below.</p>

    <asp:Label ID="lblHireDateStart" runat="server" Text="Hire Date Start:"></asp:Label>
    <asp:Calendar ID="calHireDateStart" runat="server" BackColor="White" BorderColor="Black" BorderStyle="Solid" CellSpacing="1" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="250px" NextPrevFormat="ShortMonth" SelectedDate="2010-01-01" VisibleDate="2010-01-01" Width="330px">
        <DayHeaderStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" Height="8pt" />
        <DayStyle BackColor="#CCCCCC" />
        <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="White" />
        <OtherMonthDayStyle ForeColor="#999999" />
        <SelectedDayStyle BackColor="#333399" ForeColor="White" />
        <TitleStyle BackColor="#333399" BorderStyle="Solid" Font-Bold="True" Font-Size="12pt" ForeColor="White" Height="12pt" />
        <TodayDayStyle BackColor="#999999" ForeColor="White" />
    </asp:Calendar>

    <p>Select an ending date here.</p>

        <asp:Label ID="lblHireDateEnd" runat="server" Text="Hire Date End:"></asp:Label>
    <br />
    <asp:Calendar ID="calHireDateEnd" runat="server" BackColor="White" BorderColor="Black" BorderStyle="Solid" CellSpacing="1" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="250px" NextPrevFormat="ShortMonth" Width="330px">
        <DayHeaderStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" Height="8pt" />
        <DayStyle BackColor="#CCCCCC" />
        <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="White" />
        <OtherMonthDayStyle ForeColor="#999999" />
        <SelectedDayStyle BackColor="#333399" ForeColor="White" />
        <TitleStyle BackColor="#333399" BorderStyle="Solid" Font-Bold="True" Font-Size="12pt" ForeColor="White" Height="12pt" />
        <TodayDayStyle BackColor="#999999" ForeColor="White" />
    </asp:Calendar>

    <p>When your dates have been selected, everyone who has been hired after the start date and before the end date will be displayed.</p>

    <asp:GridView ID="gvEmployees" runat="server" AutoGenerateColumns="False" DataKeyNames="intID" DataSourceID="dsEmployees" AllowPaging="True">
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
            <asp:CheckBoxField DataField="blnActive" HeaderText="Active" SortExpression="blnActive" />
            <asp:BoundField DataField="dteDateOfHire" HeaderText="Date of Hire" SortExpression="dteDateOfHire" />
            <asp:BoundField DataField="dteDateOfTermination" HeaderText="Date of Termination" SortExpression="dteDateOfTermination" />
            <asp:BoundField DataField="strReasonForTermination" HeaderText="Reason for Termination" SortExpression="strReasonForTermination" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="dsEmployees" runat="server" ConnectionString="<%$ ConnectionStrings:CPDM_CaldwellBConnectionString %>" SelectCommand="SELECT * FROM [tblEmployees] WHERE (([dteDateOfHire] &gt;= @dteDateOfHire) AND ([dteDateOfHire] &lt;= @dteDateOfHire2)) ORDER BY [intID]">
        <SelectParameters>
            <asp:ControlParameter ControlID="calHireDateStart" DbType="Date" Name="dteDateOfHire" PropertyName="SelectedDate" />
            <asp:ControlParameter ControlID="calHireDateEnd" DbType="Date" Name="dteDateOfHire2" PropertyName="SelectedDate" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

