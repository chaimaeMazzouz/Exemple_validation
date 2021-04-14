<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="validation.aspx.cs" Inherits="Exemple_validation.validation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 1103px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Nom" Width="250px"></asp:Label>
            <asp:TextBox ID="TextBox4" runat="server" Width="450px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox4" ErrorMessage="Champ obligatoire" ForeColor="#FF3300">*</asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Age" Width="250px"></asp:Label>
            <asp:TextBox ID="TextBox5" runat="server" Width="450px"></asp:TextBox>
            <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox5" ErrorMessage="Age entre 0 et 100" ForeColor="Red" MaximumValue="100" MinimumValue="0" Type="Integer">*</asp:RangeValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox5" ErrorMessage="Champ obligatoire" ForeColor="#FF3300">*</asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Text="Date Naissance" Width="250px"></asp:Label>
            <asp:TextBox ID="TextBox6" runat="server" Width="450px"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator3" runat="server" ControlToValidate="TextBox6" ErrorMessage="Date requise" ForeColor="#FF3300" Operator="DataTypeCheck" Type="Date">*</asp:CompareValidator>
            <br />
            <br />
            <asp:Label ID="Label4" runat="server" Text="Email" Width="250px"></asp:Label>
            <asp:TextBox ID="TextBox7" runat="server" Width="450px"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox7" ErrorMessage="Format Email incorrect" ForeColor="#FF3300" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
            <br />
            <br />
            <hr class="auto-style1" />
            <br />
            <asp:Label ID="Label5" runat="server" Text="Mot de passe" Width="250px"></asp:Label>
            <asp:TextBox ID="TextBox8" runat="server" TextMode="Password" Width="450px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox8" ErrorMessage="Champ obligatoire" ForeColor="#FF3300">*</asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Label ID="Label6" runat="server" Text="Confirmer mot de passe" Width="250px"></asp:Label>
            <asp:TextBox ID="TextBox9" runat="server" TextMode="Password" Width="450px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox9" ErrorMessage="Champ obligatoire" ForeColor="#FF3300">*</asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator" runat="server" ControlToCompare="TextBox9" ControlToValidate="TextBox8" ErrorMessage="Confirmation ne correspond pas" ForeColor="Red">*</asp:CompareValidator>
            <br />
            <br />
            <asp:Label ID="Label7" runat="server" Text="Tapez 14" Width="250px"></asp:Label>
            <asp:TextBox ID="TextBox10" runat="server" Width="450px"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator4" runat="server" ControlToValidate="TextBox10" ErrorMessage="Vous devez taper 14" ForeColor="Red" Type="Integer" ValueToCompare="14">*</asp:CompareValidator>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="Valider" />
            <br />
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="#FF3300" HeaderText="Résumé des erreurs" />
            <br />
        </div>
    </form>
</body>
</html>
