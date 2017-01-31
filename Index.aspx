<%@ Page Title="CRUD Assignment - Home" Language="C#" MasterPageFile="~/Masters/Default.master" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="Index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <h1>All Active and Inactive Employees</h1>
    <asp:Label ID="lblGrid" runat="server" Text="This grid shows all employee records. To add, edit or delete records, click the editing mode button."></asp:Label>
    <asp:Label ID="lblDetails" runat="server" Text="Editing mode allows you to edit, add, and delete records. To switch back to Grid View, click Show Grid View." Visible="False"></asp:Label>
    <br />

    <asp:GridView ID="gvEmployees" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="intID" DataSourceID="DsEmployeeRoster">
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
        <EmptyDataTemplate>
            There are no records to display.
        </EmptyDataTemplate>
    </asp:GridView>
    <asp:SqlDataSource ID="DsEmployeeRoster" runat="server" ConnectionString="<%$ ConnectionStrings:CPDM_CaldwellBConnectionString %>" DeleteCommand="DELETE FROM [tblEmployees] WHERE [intID] = @original_intID AND [strFirstName] = @original_strFirstName AND [strLastName] = @original_strLastName AND [strCity] = @original_strCity AND [strState] = @original_strState AND [strZip] = @original_strZip AND [strPhoneNumber] = @original_strPhoneNumber AND [strDepartment] = @original_strDepartment AND [strLevel] = @original_strLevel AND [blnActive] = @original_blnActive AND [dteDateOfHire] = @original_dteDateOfHire AND (([dteDateOfTermination] = @original_dteDateOfTermination) OR ([dteDateOfTermination] IS NULL AND @original_dteDateOfTermination IS NULL)) AND (([strReasonForTermination] = @original_strReasonForTermination) OR ([strReasonForTermination] IS NULL AND @original_strReasonForTermination IS NULL))" InsertCommand="INSERT INTO [tblEmployees] ([intID], [strFirstName], [strLastName], [strCity], [strState], [strZip], [strPhoneNumber], [strDepartment], [strLevel], [blnActive], [dteDateOfHire], [dteDateOfTermination], [strReasonForTermination]) VALUES (@intID, @strFirstName, @strLastName, @strCity, @strState, @strZip, @strPhoneNumber, @strDepartment, @strLevel, @blnActive, @dteDateOfHire, @dteDateOfTermination, @strReasonForTermination)" SelectCommand="SELECT * FROM [tblEmployees] ORDER BY [intID]" UpdateCommand="UPDATE [tblEmployees] SET [strFirstName] = @strFirstName, [strLastName] = @strLastName, [strCity] = @strCity, [strState] = @strState, [strZip] = @strZip, [strPhoneNumber] = @strPhoneNumber, [strDepartment] = @strDepartment, [strLevel] = @strLevel, [blnActive] = @blnActive, [dteDateOfHire] = @dteDateOfHire, [dteDateOfTermination] = @dteDateOfTermination, [strReasonForTermination] = @strReasonForTermination WHERE [intID] = @original_intID AND [strFirstName] = @original_strFirstName AND [strLastName] = @original_strLastName AND [strCity] = @original_strCity AND [strState] = @original_strState AND [strZip] = @original_strZip AND [strPhoneNumber] = @original_strPhoneNumber AND [strDepartment] = @original_strDepartment AND [strLevel] = @original_strLevel AND [blnActive] = @original_blnActive AND [dteDateOfHire] = @original_dteDateOfHire AND (([dteDateOfTermination] = @original_dteDateOfTermination) OR ([dteDateOfTermination] IS NULL AND @original_dteDateOfTermination IS NULL)) AND (([strReasonForTermination] = @original_strReasonForTermination) OR ([strReasonForTermination] IS NULL AND @original_strReasonForTermination IS NULL))" ConflictDetection="CompareAllValues" OldValuesParameterFormatString="original_{0}">
        <DeleteParameters>
            <asp:Parameter Name="original_intID" Type="Int32" />
            <asp:Parameter Name="original_strFirstName" Type="String" />
            <asp:Parameter Name="original_strLastName" Type="String" />
            <asp:Parameter Name="original_strCity" Type="String" />
            <asp:Parameter Name="original_strState" Type="String" />
            <asp:Parameter Name="original_strZip" Type="String" />
            <asp:Parameter Name="original_strPhoneNumber" Type="String" />
            <asp:Parameter Name="original_strDepartment" Type="String" />
            <asp:Parameter Name="original_strLevel" Type="String" />
            <asp:Parameter Name="original_blnActive" Type="Boolean" />
            <asp:Parameter DbType="Date" Name="original_dteDateOfHire" />
            <asp:Parameter DbType="Date" Name="original_dteDateOfTermination" />
            <asp:Parameter Name="original_strReasonForTermination" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="intID" Type="Int32" />
            <asp:Parameter Name="strFirstName" Type="String" />
            <asp:Parameter Name="strLastName" Type="String" />
            <asp:Parameter Name="strCity" Type="String" />
            <asp:Parameter Name="strState" Type="String" />
            <asp:Parameter Name="strZip" Type="String" />
            <asp:Parameter Name="strPhoneNumber" Type="String" />
            <asp:Parameter Name="strDepartment" Type="String" />
            <asp:Parameter Name="strLevel" Type="String" />
            <asp:Parameter Name="blnActive" Type="Boolean" />
            <asp:Parameter DbType="Date" Name="dteDateOfHire" />
            <asp:Parameter DbType="Date" Name="dteDateOfTermination" />
            <asp:Parameter Name="strReasonForTermination" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="strFirstName" Type="String" />
            <asp:Parameter Name="strLastName" Type="String" />
            <asp:Parameter Name="strCity" Type="String" />
            <asp:Parameter Name="strState" Type="String" />
            <asp:Parameter Name="strZip" Type="String" />
            <asp:Parameter Name="strPhoneNumber" Type="String" />
            <asp:Parameter Name="strDepartment" Type="String" />
            <asp:Parameter Name="strLevel" Type="String" />
            <asp:Parameter Name="blnActive" Type="Boolean" />
            <asp:Parameter DbType="Date" Name="dteDateOfHire" />
            <asp:Parameter DbType="Date" Name="dteDateOfTermination" />
            <asp:Parameter Name="strReasonForTermination" Type="String" />
            <asp:Parameter Name="original_intID" Type="Int32" />
            <asp:Parameter Name="original_strFirstName" Type="String" />
            <asp:Parameter Name="original_strLastName" Type="String" />
            <asp:Parameter Name="original_strCity" Type="String" />
            <asp:Parameter Name="original_strState" Type="String" />
            <asp:Parameter Name="original_strZip" Type="String" />
            <asp:Parameter Name="original_strPhoneNumber" Type="String" />
            <asp:Parameter Name="original_strDepartment" Type="String" />
            <asp:Parameter Name="original_strLevel" Type="String" />
            <asp:Parameter Name="original_blnActive" Type="Boolean" />
            <asp:Parameter DbType="Date" Name="original_dteDateOfHire" />
            <asp:Parameter DbType="Date" Name="original_dteDateOfTermination" />
            <asp:Parameter Name="original_strReasonForTermination" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>

    <br />
    <asp:DetailsView ID="dvEmployees" runat="server" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="intID" DataSourceID="DsEmployeeRoster" Height="50px" Visible="False" Width="400px">
        <EmptyDataTemplate>
            There are no records to display.
        </EmptyDataTemplate>
        <Fields>
            <asp:BoundField DataField="intID" HeaderText="ID" ReadOnly="True" SortExpression="intID" />
            <asp:BoundField DataField="strFirstName" HeaderText="First Name" SortExpression="strFirstName" />
            <asp:BoundField DataField="strLastName" HeaderText="Last Name" SortExpression="strLastName" />
            <asp:BoundField DataField="strCity" HeaderText="City" SortExpression="strCity" />
            <asp:TemplateField HeaderText="State" SortExpression="strState">
                <EditItemTemplate>
                    <asp:DropDownList ID="ddlState" runat="server" SelectedValue='<%# Bind("strState") %>' DataValueField="strState" DataTextField="strState" DataSourceID="dsStates">
                    </asp:DropDownList>                
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:DropDownList ID="ddlState" runat="server" SelectedValue='<%# Bind("strState") %>' DataValueField="strState" DataTextField="strState" DataSourceID="dsStates">
                    </asp:DropDownList>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("strState") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="strZip" HeaderText="Zip" SortExpression="strZip" />
            <asp:BoundField DataField="strPhoneNumber" HeaderText="Phone Number" SortExpression="strPhoneNumber" />
            <asp:TemplateField HeaderText="Department" SortExpression="strDepartment">
                <EditItemTemplate>
                    <asp:DropDownList ID="ddlDepartment" runat="server" SelectedValue='<%# Bind("strDepartment") %>' DataValueField="strDepartment" DataTextField="strDepartment" DataSourceID="dsDepartments">
                    </asp:DropDownList> 
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:DropDownList ID="ddlDepartment" runat="server" SelectedValue='<%# Bind("strDepartment") %>' DataValueField="strDepartment" DataTextField="strDepartment" DataSourceID="dsDepartments">
                    </asp:DropDownList> 
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("strDepartment") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Level" SortExpression="strLevel">
                <EditItemTemplate>
                    <asp:DropDownList ID="ddlLevel" runat="server" SelectedValue='<%# Bind("strLevel") %>' DataValueField="strLevel" DataTextField="strLevel" DataSourceID="dsLevels">
                    </asp:DropDownList>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:DropDownList ID="ddlLevel" runat="server" SelectedValue='<%# Bind("strLevel") %>' DataValueField="strLevel" DataTextField="strLevel" DataSourceID="dsLevels">
                    </asp:DropDownList>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("strLevel") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:CheckBoxField DataField="blnActive" HeaderText="Active (Y/N)" SortExpression="blnActive" />
            <asp:BoundField DataField="dteDateOfHire" HeaderText="Date of Hire" SortExpression="dteDateOfHire" />
            <asp:BoundField DataField="dteDateOfTermination" HeaderText="Date of Termination" NullDisplayText="N/A" SortExpression="dteDateOfTermination" />
            <asp:BoundField DataField="strReasonForTermination" HeaderText="Reason for Termination" NullDisplayText="N/A" SortExpression="strReasonForTermination" />
            <asp:CommandField ButtonType="Button" ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
        </Fields>
        <HeaderTemplate>
            Employees:
        </HeaderTemplate>
    </asp:DetailsView>

    <asp:SqlDataSource ID="dsLevels" runat="server" ConnectionString="<%$ ConnectionStrings:CPDM_CaldwellBConnectionString %>" SelectCommand="SELECT [strLevel] FROM [tblLevels] ORDER BY [intID]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="dsStates" runat="server" ConnectionString="<%$ ConnectionStrings:CPDM_CaldwellBConnectionString %>" SelectCommand="SELECT [strState] FROM [tblStates] ORDER BY [strState]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="dsDepartments" runat="server" ConnectionString="<%$ ConnectionStrings:CPDM_CaldwellBConnectionString %>" SelectCommand="SELECT [strDepartment] FROM [tblDepartments] ORDER BY [strDepartment]"></asp:SqlDataSource>
    <br />
    <br />
    <asp:Button ID="btnDisplayGrid" runat="server" AccessKey="G" Height="30px" OnClick="btnDisplayGrid_Click" PostBackUrl="~/Index.aspx" Text="Show Grid View" Visible="False" Width="150px" />
    <asp:Button ID="btnDisplayDetails" runat="server" AccessKey="D" Height="30px" OnClick="btnDisplayDetails_Click" Text="Editing Mode" Width="150px" />
    <br />

    <br />
    <asp:Button ID="btnActive" runat="server" Text="Active Employees" Width="200px" PostBackUrl="~/ActiveEmployees.aspx" AccessKey="A" TabIndex="2" />
    <asp:Button ID="btnInactive" runat="server" Text="Inactive Employees" Width="200px" PostBackUrl="~/InactiveEmployees.aspx" AccessKey="I" TabIndex="3" />

    <br />
    <asp:Button ID="btnHireDate" runat="server" Text="Date of Hire Search" Width="200px" PostBackUrl="~/HiredEmployees.aspx" AccessKey="H" TabIndex="4" />
    <asp:Button ID="btnTerminated" runat="server" Text="Terminated Employee Search" Width="200px" PostBackUrl="~/TerminatedEmployees.aspx" AccessKey="T" TabIndex="5" />

    

</asp:Content>

