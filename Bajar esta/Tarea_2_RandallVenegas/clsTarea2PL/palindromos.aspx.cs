using System;
using System.Web.UI;
using System.Text;

namespace clsTarea2PL
{    
    public partial class palindromos : System.Web.UI.Page
    {
        //Este evento generará un javascript que será aplicado a la aplicación//
        //cada vez que la página se cargue o haga un PostBack parcial         //
        protected void Page_Load(object sender, EventArgs e)
        {
                StringBuilder sb = new StringBuilder(); //Almacena el script
                sb.Append("var inputBox = document.getElementById('txtFrase');");
                sb.Append("var submitButton = document.getElementById('btnCalcular');");
                sb.Append("inputBox.addEventListener('keydown', function(e) {");
                sb.Append("var keyCode = (e.keyCode ? e.keyCode : e.which);");
                sb.Append("if ((keyCode < 65 || keyCode > 90) && keyCode != 8 && keyCode != 9 && keyCode != 16 && keyCode != 32 && keyCode != 35");
                sb.Append("&& keyCode != 36 && keyCode != 37 && keyCode != 39 && keyCode != 46 && keyCode != 116 &&");                
                sb.Append("keyCode != 116 && keyCode != 192)");
                sb.Append("{e.preventDefault();}");
                sb.Append("else{document.getElementById('lblMsg').innerHTML = '';}})");
                //Registra el script//
                ScriptManager.RegisterStartupScript(this, GetType(), "script", sb.ToString(), true);                           
        }

        

        protected void btnCalcular_Click(object sender, EventArgs e)
        {
            string frase = txtFrase.Text;
            frase=frase.Replace(" ", string.Empty);
            if (frase.Length>2)
            {
                //Creación de objetos DAL y BLL
                clsTarea2DAL.clsPalindromosDAL pDAL = new clsTarea2DAL.clsPalindromosDAL();
                clsTarea2BLL.clsPalindromosBLL pBLL = new clsTarea2BLL.clsPalindromosBLL();

                pDAL.sTexto = frase; //Se asigna texto sin espacios
                                
                pBLL.calcularPalindromo(ref pDAL); //Se invoca al procedimiento en el BLL
                if (pDAL.esPalindromo)             //Verifica palíndromo y muestra resultado
                {
                    this.lblMsg.CssClass = "esPalindromo";
                    this.lblMsg.Text = "Es palíndromo";
                }
                else
                {
                    this.lblMsg.CssClass = "noEsPalindromo";
                    this.lblMsg.Text = "No es palíndromo";
                }
                
            }
            else
            {
                this.lblMsg.CssClass = "error";
                lblMsg.Text = "Ingrese al menos 3 caracteres.";
            }
            frase = string.Empty; //Limpia la variable
        }

        protected void txtFrase_TextChanged(object sender, EventArgs e)
        {

        }
    }


}