<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="palindromos.aspx.cs" Inherits="clsTarea2PL.palindromos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
    <link rel="stylesheet" type="text/css" href="../css/bootstrap.css"/>  
    <link rel="stylesheet" type="text/css" href="../css/general.css"/>  
    <link rel="stylesheet" type="text/css" href="../css/palindromos.css"/>  
    <title>Palíndromos</title>
</head>
<body>
    <div class="container form-inline form-group">
        <form id="form1" runat="server" class="jumbotron">                
            <h1>
                <asp:ImageButton ID="imgBtnVolver" runat="server" Height="28px" ImageUrl="~/img/atras.png" Width="27px" PostBackUrl="~/index.aspx" />
                Palíndromos
            </h1>       
            <img src="img/img.jpg" alt="Palíndromos"/>
            <em>
                Velásquez, F.(2017). ¡Palíndromos! ¿Palin... qué? [Ilustración]. Recuperado de <a href=
                "https://ikita.com.mx/v3/es/blog-ikita/Entrada/palindromos">https://ikita.com.mx/v3/es/
                blog-ikita/Entrada/palindromos</a>
            </em>    
            
            <p>
                En el griego es donde nos encontramos el origen etimológico de la palabra palíndromo. 
                Tenemos que exponer que se trata de un término que se halla conformado por la suma de 
                dos elementos de dicha lengua:
            </p>
                <ul>
                    <li>“Palin”, que puede traducirse como “de nuevo”.</li>
                    <li>El sustantivo “dromos”, que es equivalente a “pista de carrera”.</li>
                </ul>
            <p>
                Un palíndromo es un término o una expresión que puede leerse tanto de izquierda a derecha 
                como de derecha a izquierda (es decir, expresa lo mismo al ser leído de manera tradicional 
                o al revés). Se trata del equivalente a lo que, respecto a los números, se conoce como capicúa.
                <br/>
                <em>
                    Pérez, J. Merino, M. (2013). Definicion.de: Definición de palíndromo. Recuperado de 
                    <a href="https://definicion.de/palindromo/">https://definicion.de/palindromo/</a>
                </em>  
            </p> 
                <h2>Calculadora de palíndromos</h2>
                <p>
                    Ingrese una palabra o frase de al menos 3 letras. Evite utilizar números y/o caracteres 
                    especiales.
                </p>
                <asp:ScriptManager ID="script1" runat="server"></asp:ScriptManager>
                <asp:UpdatePanel ID="panel1" runat="server">
                    <ContentTemplate> 
                        <asp:TextBox ID="txtFrase" runat="server" CssClass="form-control"></asp:TextBox>
                        <asp:Button ID="btnCalcular" runat="server" Text="Calcular" OnClick="btnCalcular_Click" CssClass="form-control btn btn-info" TabIndex="1" />
                        <asp:Label ID="lblMsg" runat="server"></asp:Label>
                    </ContentTemplate>                     
                </asp:UpdatePanel>
        </form>
    </div>        
</body>
</html>
