<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserRegistration.aspx.cs" Inherits="WebAppServerControlsDemo.UserRegistration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            Select a View to edit/ViewDetails:
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                <asp:ListItem>Personal</asp:ListItem>
                <asp:ListItem>Educational</asp:ListItem>
                <asp:ListItem>Bank</asp:ListItem>
            </asp:DropDownList>
&nbsp;
            <br />
            <br />
            <br />


        </div>
            <asp:MultiView ID="userDataView" runat="server">
                <asp:View ID="PersonalDetails" runat="server">Enter your Personal Details here<br /> Enter Name :
                    <asp:TextBox ID="txtfname" runat="server" MaxLength="30" Width="282px"></asp:TextBox>
                    <br />
                    Enter Address:
                    <asp:TextBox ID="txtAddress" runat="server" Height="63px" TextMode="MultiLine" Width="263px"></asp:TextBox>
                    <br />
                    Enter Mobileno:
                    <asp:TextBox ID="txtMobileNo" runat="server" MaxLength="10" TextMode="Number"></asp:TextBox>
                    <br />
                    <p>Upload your Resume and Photo:</p>
                    <asp:FileUpload ID="fileuploadResumeAndPhoto" runat="server" AllowMultiple="True" />
                    &nbsp;
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
                    <br />
                    <br />
                    <br />
                    <br />
                </asp:View>
                <asp:View ID="BankDetails" runat="server">Enter your Bank Details here<br /> Select&nbsp; Bank Name from the list:&nbsp;
                    <asp:ListBox ID="ListBox1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ListBox1_SelectedIndexChanged">
                        <asp:ListItem>Kotak</asp:ListItem>
                        <asp:ListItem>SBI</asp:ListItem>
                        <asp:ListItem>HDFC</asp:ListItem>
                        <asp:ListItem>Axis</asp:ListItem>
                    </asp:ListBox>
                    <br />
                    <br />
                    Your selected Bank:
                    <asp:TextBox ID="txtBankName" runat="server" Width="157px"></asp:TextBox>
                    <br />
                    <br />
                    Is Cheque Book available:&nbsp;
                    <asp:RadioButton ID="rdobtnYes" runat="server" AutoPostBack="True" GroupName="chequeBook" Text="Yes" />
                    &nbsp;&nbsp;
                    <asp:RadioButton ID="rdobtnNo" runat="server" AutoPostBack="True" GroupName="chequeBook" Text="No" />
                    <br />
                    <asp:Label ID="lblchquefac" runat="server" Text="Label"></asp:Label>
                    <br />
                    <br />
                    Select Course u want to pay the fees for:
                    <asp:CheckBox ID="CheckBox1" runat="server" Text=".NET" />
                    &nbsp;&nbsp;
                    <asp:CheckBox ID="CheckBox2" runat="server" Text="JAVA" />
                    &nbsp;
                    <asp:CheckBox ID="CheckBox3" runat="server" Text="Artificial Intelligence" />
                    &nbsp;&nbsp;
                    <br />
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Button" />
                    &nbsp;&nbsp;
                    <asp:Label ID="lblCourseSelected" runat="server" Text="Label"></asp:Label>
                    <br />
                </asp:View>
                <asp:View ID="EducationalDetails" runat="server">Enter your Educational Details here<br /> Enter Your Name on the Certificate:
                    <asp:TextBox ID="txtcertName" runat="server"></asp:TextBox>
                    &nbsp;&nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" BorderColor="#66FF33" BorderStyle="Dotted" ControlToValidate="txtcertName" ErrorMessage="Its is compulsory field" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                    <br />
                    Enter your Age:
                    <asp:TextBox ID="txtage" runat="server" TextMode="Number"></asp:TextBox>
                    &nbsp;
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtage" ErrorMessage="Age is a required field"></asp:RequiredFieldValidator>
                    &nbsp;<asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtage" ErrorMessage="Not in Valid Range" MaximumValue="50" MinimumValue="18" Type="Integer"></asp:RangeValidator>
                    <br />
                    Enter Email:
                    <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
                    &nbsp;
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtemail" ErrorMessage="enter valid email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    <br />
                    Enter Password:
                    <asp:TextBox ID="txtfirstpwd" runat="server"></asp:TextBox>
&nbsp;
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtfirstpwd" ControlToValidate="txtconfirmpwd" ErrorMessage="Passwords donot match"></asp:CompareValidator>
                    <br />
                    Re-enter to confirm:
                    <asp:TextBox ID="txtconfirmpwd" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/Welcome.aspx">LinkButton</asp:LinkButton>
                    <br />
                    <br />
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" DisplayMode="SingleParagraph" ShowMessageBox="True" />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                </asp:View>
            </asp:MultiView>


    </form>
</body>
</html>
