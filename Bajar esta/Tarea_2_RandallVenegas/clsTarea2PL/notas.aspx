<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="notas.aspx.cs" Inherits="clsTarea2PL.notas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
    <link rel="stylesheet" type="text/css" href="../css/bootstrap.css" />    
    <link rel="stylesheet" type="text/css" href="../css/general.css"/>  
    <link rel="stylesheet" type="text/css" href="../css/notas.css"/>
    <title>Notas</title>
</head>
<body>
    <div class="container">     
        <form id="form1" runat="server"> 
            <asp:ScriptManager ID="script1" runat="server"></asp:ScriptManager>
            <div class="jumbotron">
                    <h1>
                        <asp:ImageButton ID="imgBtnVolver" runat="server" Height="28px" ImageUrl="~/img/atras.png" Width="27px" PostBackUrl="~/index.aspx" />
                        Cálculo de notas
                    </h1>                 
            <div class="row">                
                <div id="divPorcNotas" class="col-xs-6 col-md-4">
                    <h2>Porc. de evaluación</h2>        
                    <asp:Label ID="lblTareas" runat="server" AssociatedControlID="txtPorcTareas" Text="Tareas">
                        <asp:TextBox ID="txtPorcTareas" runat="server" MaxLength="5"></asp:TextBox>                        
                    </asp:Label>   
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1"
                            ControlToValidate="txtPorcTareas" runat="server"
                            ErrorMessage="Sólo se admiten números entre 0 y 100"
                            ValidationExpression="^(?:100(?:\.00?)?|\d?\d(?:\.\d\d?)?)$" 
                            SetFocusOnError="True" 
                            CssClass="valerror" 
                            Display="Dynamic">
                        </asp:RegularExpressionValidator>                                     
                    <asp:Label ID="lblQuices" runat="server" AssociatedControlID="txtPorcQuices" Text="Quices">
                        <asp:TextBox ID="txtPorcQuices" runat="server"></asp:TextBox>
                    </asp:Label>     
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2"
                            ControlToValidate="txtPorcQuices" runat="server"
                            ErrorMessage="Sólo se admiten números entre 0 y 100"
                            ValidationExpression="^(?:100(?:\.00?)?|\d?\d(?:\.\d\d?)?)$" 
                            SetFocusOnError="True" 
                            CssClass="valerror" 
                            Display="Dynamic">
                        </asp:RegularExpressionValidator>                
                    <asp:Label ID="lblParcial1" runat="server" AssociatedControlID="txtPorcParcial1" Text="Parcial 1">
                        <asp:TextBox ID="txtPorcParcial1" runat="server"></asp:TextBox>
                    </asp:Label>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3"
                            ControlToValidate="txtPorcParcial1" runat="server"
                            ErrorMessage="Sólo se admiten números entre 0 y 100"
                            ValidationExpression="^(?:100(?:\.00?)?|\d?\d(?:\.\d\d?)?)$" 
                            SetFocusOnError="True" 
                            CssClass="valerror" 
                            Display="Dynamic">
                        </asp:RegularExpressionValidator> 
                    <asp:Label ID="lblParcial2" runat="server" AssociatedControlID="txtPorcParcial2" Text="Parcial 2">
                        <asp:TextBox ID="txtPorcParcial2" runat="server"></asp:TextBox>
                    </asp:Label>                    
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4"
                            ControlToValidate="txtPorcParcial2" runat="server"
                            ErrorMessage="Sólo se admiten números entre 0 y 100"
                            ValidationExpression="^(?:100(?:\.00?)?|\d?\d(?:\.\d\d?)?)$" 
                            SetFocusOnError="True" 
                            CssClass="valerror" 
                            Display="Dynamic">
                        </asp:RegularExpressionValidator> 
                    <asp:Label ID="lblParcial3" runat="server" AssociatedControlID="txtPorcParcial3" Text="Parcial 3">
                        <asp:TextBox ID="txtPorcParcial3" runat="server"></asp:TextBox>
                    </asp:Label>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator5"
                            ControlToValidate="txtPorcParcial3" runat="server"
                            ErrorMessage="Sólo se admiten números entre 0 y 100"
                            ValidationExpression="^(?:100(?:\.00?)?|\d?\d(?:\.\d\d?)?)$" 
                            SetFocusOnError="True" 
                            CssClass="valerror" 
                            Display="Dynamic">
                        </asp:RegularExpressionValidator> 
                </div>                    
                <div id="divNotasQuices" class="col-xs-6 col-md-4">
                    <h2>Notas quices <br /></h2>                         
                    <asp:Label ID="lblQuiz1" runat="server" AssociatedControlID="txtQuiz1" Text="Quiz 1">
                        <asp:TextBox ID="txtQuiz1" runat="server"></asp:TextBox>
                    </asp:Label>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator6"
                            ControlToValidate="txtQuiz1" runat="server"
                            ErrorMessage="Sólo se admiten números entre 0 y 100"
                            ValidationExpression="^(?:100(?:\.00?)?|\d?\d(?:\.\d\d?)?)$" 
                            SetFocusOnError="True" 
                            CssClass="valerror" 
                            Display="Dynamic">
                        </asp:RegularExpressionValidator> 
                    <asp:Label ID="lblQuiz2" runat="server" AssociatedControlID="txtQuiz2" Text="Quiz 2">
                        <asp:TextBox ID="txtQuiz2" runat="server" ></asp:TextBox>
                    </asp:Label>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator7"
                            ControlToValidate="txtQuiz2" runat="server"
                            ErrorMessage="Sólo se admiten números entre 0 y 100"
                            ValidationExpression="^(?:100(?:\.00?)?|\d?\d(?:\.\d\d?)?)$" 
                            SetFocusOnError="True" 
                            CssClass="valerror" 
                            Display="Dynamic">
                        </asp:RegularExpressionValidator> 
                    <asp:Label ID="lblQuiz3" runat="server" AssociatedControlID="txtQuiz3" Text="Quiz 3">
                        <asp:TextBox ID="txtQuiz3" runat="server" ></asp:TextBox>
                    </asp:Label>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator8"
                            ControlToValidate="txtQuiz3" runat="server"
                            ErrorMessage="Sólo se admiten números entre 0 y 100"
                            ValidationExpression="^(?:100(?:\.00?)?|\d?\d(?:\.\d\d?)?)$" 
                            SetFocusOnError="True" 
                            CssClass="valerror" 
                            Display="Dynamic">
                        </asp:RegularExpressionValidator> 
                    <asp:Label ID="lblNotaQuiz" runat="server" AssociatedControlID="txtNotaQuiz" Text="Nota Quices">
                        <asp:TextBox ID="txtNotaQuiz" runat="server" Enabled="False"></asp:TextBox>
                    </asp:Label>
                </div>     
                <div id="divNotasTareas" class="col-xs-6 col-md-4">
                    <h2>Notas tareas<br /></h2>                     
                    <asp:Label ID="lblTarea1" runat="server" AssociatedControlID="txtTarea1" Text="Tarea 1">
                        <asp:TextBox ID="txtTarea1" runat="server" ></asp:TextBox>
                    </asp:Label>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator9"
                            ControlToValidate="txtTarea1" runat="server"
                            ErrorMessage="Sólo se admiten números entre 0 y 100"
                            ValidationExpression="^(?:100(?:\.00?)?|\d?\d(?:\.\d\d?)?)$" 
                            SetFocusOnError="True" 
                            CssClass="valerror" 
                            Display="Dynamic">
                        </asp:RegularExpressionValidator> 
                    <asp:Label ID="lblTarea2" runat="server" AssociatedControlID="txtTarea2" Text="Tarea 2">
                        <asp:TextBox ID="txtTarea2" runat="server" ></asp:TextBox>
                    </asp:Label>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator10"
                            ControlToValidate="txtTarea2" runat="server"
                            ErrorMessage="Sólo se admiten números entre 0 y 100"
                            ValidationExpression="^(?:100(?:\.00?)?|\d?\d(?:\.\d\d?)?)$" 
                            SetFocusOnError="True" 
                            CssClass="valerror" 
                            Display="Dynamic">
                        </asp:RegularExpressionValidator> 
                    <asp:Label ID="lblTarea3" runat="server" AssociatedControlID="txtTarea3" Text="Tarea 3">
                        <asp:TextBox ID="txtTarea3" runat="server" ></asp:TextBox>
                    </asp:Label>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator11"
                            ControlToValidate="txtTarea3" runat="server"
                            ErrorMessage="Sólo se admiten números entre 0 y 100"
                            ValidationExpression="^(?:100(?:\.00?)?|\d?\d(?:\.\d\d?)?)$" 
                            SetFocusOnError="True" 
                            CssClass="valerror" 
                            Display="Dynamic">
                        </asp:RegularExpressionValidator> 
                    <asp:Label ID="lblTarea4" runat="server" AssociatedControlID="txtNotaTareas" Text="Nota tareas">
                        <asp:TextBox ID="txtNotaTareas" runat="server" Enabled="False"></asp:TextBox>
                    </asp:Label>
                </div>
                <div id="divNotasParciales" class="col-xs-6 col-md-4">
                    <h2>Notas parciales</h2> 
                    <asp:Label ID="lblNotaParcial1" runat="server" AssociatedControlID="txtNotaParc1" Text="Parcial 1">
                        <asp:TextBox ID="txtNotaParc1" runat="server" ></asp:TextBox>
                    </asp:Label>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator13"
                            ControlToValidate="txtNotaParc1" runat="server"
                            ErrorMessage="Sólo se admiten números entre 0 y 100"
                            ValidationExpression="^(?:100(?:\.00?)?|\d?\d(?:\.\d\d?)?)$" 
                            SetFocusOnError="True" 
                            CssClass="valerror" 
                            Display="Dynamic">
                    </asp:RegularExpressionValidator> 
                    <asp:Label ID="lblNotaParcial2" runat="server" AssociatedControlID="txtNotaParc2" Text="Parcial 2">
                        <asp:TextBox ID="txtNotaParc2" runat="server" ></asp:TextBox>
                    </asp:Label>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator14"
                            ControlToValidate="txtNotaParc2" runat="server"
                            ErrorMessage="Sólo se admiten números entre 0 y 100"
                            ValidationExpression="^(?:100(?:\.00?)?|\d?\d(?:\.\d\d?)?)$" 
                            SetFocusOnError="True" 
                            CssClass="valerror" 
                            Display="Dynamic">
                    </asp:RegularExpressionValidator> 
                    <asp:Label ID="lblNotaParcial3" runat="server" AssociatedControlID="txtNotaParc3" Text="Parcial 3">
                        <asp:TextBox ID="txtNotaParc3" runat="server" ></asp:TextBox>
                    </asp:Label>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator15"
                            ControlToValidate="txtNotaParc3" runat="server"
                            ErrorMessage="Sólo se admiten números entre 0 y 100"
                            ValidationExpression="^(?:100(?:\.00?)?|\d?\d(?:\.\d\d?)?)$" 
                            SetFocusOnError="True" 
                            CssClass="valerror" 
                            Display="Dynamic">
                    </asp:RegularExpressionValidator> 

                </div>
                <div id="divResultado" class="col-xs-6">
                    <h2>Resultado final</h2> 
                    <asp:Label ID="lblNotaFinal" runat="server" AssociatedControlID="txtNotaFinal" Text="Nota final">
                        <asp:TextBox ID="txtNotaFinal" runat="server" Enabled="False"></asp:TextBox>                        
                    </asp:Label>                   
                    <asp:Button ID="btnVerNota" runat="server" Text="Ver Nota" CssClass="btn-success" OnClick="btnVerNota_Click1"/>

                </div>  
            </div>
            </div>

        </form>
    
    </div>
            
</body>
</html>
