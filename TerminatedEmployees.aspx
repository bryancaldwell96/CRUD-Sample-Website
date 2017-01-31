<%@ Page Title="CRUD Assignment - Terminated Employees Search" Language="C#" MasterPageFile="~/Masters/Default.master" AutoEventWireup="true" CodeFile="TerminatedEmployees.aspx.cs" Inherits="Terminated_Employee" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        
    <h1>Terminated Employees Search</h1>
    <asp:Label ID="lblStartDate" runat="server" Text="Termination Start Date:"></asp:Label>
    <asp:Calendar ID="calStartDate" runat="server" BackColor="White" BorderColor="Black" BorderStyle="Solid" CellSpacing="1" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="250px" NextPrevFormat="ShortMonth" SelectedDate="2005-01-01" VisibleDate="2005-01-01" Width="330px">
        <DayHeaderStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" Height="8pt" />
        <DayStyle BackColor="#CCCCCC" />
        <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="White" />
        <OtherMonthDayStyle ForeColor="#999999" />
        <SelectedDayStyle BackColor="#333399" ForeColor="White" />
        <TitleStyle BackColor="#333399" BorderStyle="Solid" Font-Bold="True" Font-Size="12pt" ForeColor="White" Height="12pt" />
        <TodayDayStyle BackColor="#999999" ForeColor="White" />
    </asp:Calendar>
    <br />
    <asp:Label ID="lblEndDate" runat="server" Text="Termination End Date:"></asp:Label>
    <asp:Calendar ID="calEndDate" runat="server" BackColor="White" BorderColor="Black" BorderStyle="Solid" CellSpacing="1" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="250px" NextPrevFormat="ShortMonth" Width="330px">
        <DayHeaderStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" Height="8pt" />
        <DayStyle BackColor="#CCCCCC" />
        <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="White" />
        <OtherMonthDayStyle ForeColor="#999999" />
        <SelectedDayStyle BackColor="#333399" ForeColor="White" />
        <TitleStyle BackColor="#333399" BorderStyle="Solid" Font-Bold="True" Font-Size="12pt" ForeColor="White" Height="12pt" />
        <TodayDayStyle BackColor="#999999" ForeColor="White" />
    </asp:Calendar>
    <br />
    <asp:Label ID="lblReason" runat="server" Text="Reason for Termination:"></asp:Label>
    <asp:DropDownList ID="ddlReason" runat="server" AutoPostBack="True">
        <asp:ListItem>Retired</asp:ListItem>
        <asp:ListItem>Resigned</asp:ListItem>
        <asp:ListItem>Terminated</asp:ListItem>
    </asp:DropDownList>
    <br />
    <asp:Label ID="lblEmploymentLevel" runat="server" Text="Level of Employment:"></asp:Label>
    <asp:DropDownList ID="ddlLevel" runat="server" AutoPostBack="True">
        <asp:ListItem>Software Developer</asp:ListItem>
        <asp:ListItem>Administrative Staff</asp:ListItem>
        <asp:ListItem>Management</asp:ListItem>
        <asp:ListItem>Senior Management</asp:ListItem>
    </asp:DropDownList>
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="intID" DataSourceID="dsEmployees">
        <Columns>
            <asp:BoundField DataField="intID" HeaderText="ID" ReadOnly="True" SortExpression="intID" />
            <asp:BoundField DataField="strFirstName" HeaderText="First Name" SortExpression="strFirstName" />
            <asp:BoundField DataField="strLastName" HeaderText="Last Name" SortExpression="strLastName" />
            <asp:BoundField DataField="strCity" HeaderText="City" SortExpression="strCity" />
            <asp:BoundField DataField="strState" HeaderText="State" SortExpression="strState" />
            <asp:BoundField DataField="strZip" HeaderText="Zip" SortExpression="strZip" />
            <asp:BoundField DataField="strDepartment" HeaderText="Department" SortExpression="strDepartment" />
            <asp:BoundField DataField="strPhoneNumber" HeaderText="Phone Number" SortExpression="strPhoneNumber" />
            <asp:BoundField DataField="strLevel" HeaderText="Level" SortExpression="strLevel" />
            <asp:BoundField DataField="dteDateOfHire" HeaderText="Date of Hire" SortExpression="dteDateOfHire" />
            <asp:BoundField DataField="dteDateOfTermination" HeaderText="Date of Termination" SortExpression="dteDateOfTermination" />
            <asp:BoundField DataField="strReasonForTermination" HeaderText="Reason for Termination" SortExpression="strReasonForTermination" />
        </Columns>
        <EmptyDataTemplate>
            There are no records to display.
        </EmptyDataTemplate>
    </asp:GridView>
    <asp:SqlDataSource ID="dsEmployees" runat="server" ConnectionString="<%$ ConnectionStrings:CPDM_CaldwellBConnectionString %>" SelectCommand="SELECT [intID], [strFirstName], [strLastName], [strCity], [strState], [strZip], [strDepartment], [strPhoneNumber], [strLevel], [dteDateOfHire], [dteDateOfTermination], [strReasonForTermination] FROM [tblEmployees] WHERE (([dteDateOfTermination] &gt;= @dteDateOfTermination) AND ([dteDateOfTermination] &lt;= @dteDateOfTermination2) AND ([strReasonForTermination] = @strReasonForTermination) AND ([strLevel] = @strLevel)) ORDER BY [intID]">
        <SelectParameters>
            <asp:ControlParameter ControlID="calStartDate" DbType="Date" Name="dteDateOfTermination" PropertyName="SelectedDate" />
            <asp:ControlParameter ControlID="calEndDate" DbType="Date" Name="dteDateOfTermination2" PropertyName="SelectedDate" />
            <asp:ControlParameter ControlID="ddlReason" Name="strReasonForTermination" PropertyName="SelectedValue" Type="String" />
            <asp:ControlParameter ControlID="ddlLevel" Name="strLevel" PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>

