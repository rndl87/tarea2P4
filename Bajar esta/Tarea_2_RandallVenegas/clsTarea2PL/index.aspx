<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="clsTarea2PL.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="../css/bootstrap.css" />    
    <link rel="stylesheet" type="text/css" href="../css/general.css"/>
    <link rel="stylesheet" type="text/css" href="../css/index.css"/>  
    <title>Tarea 2</title>
</head>
<body>
    <div class="container">
        <div class="jumbotron">
            <form id="form1" runat="server">
            <div>
            <h1>Tarea 2 - Randall Venegas</h1>
            </div>
                <p>
                    <asp:Button ID="btnPalindromos" runat="server" PostBackUrl="~/palindromos.aspx" Text="Palíndromos" CssClass="btn btn-info"/>
                    <asp:Button ID="btnNotas" runat="server" PostBackUrl="~/notas.aspx" Text="Cálculo de notas" CssClass="btn btn-info" />
                </p>
            </form>
        </div>
    </div>
</body>
</html>
   
            