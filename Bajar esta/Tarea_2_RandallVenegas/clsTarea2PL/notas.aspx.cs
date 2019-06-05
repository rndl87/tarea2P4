using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace clsTarea2PL
{
    public partial class notas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {           
        }

        protected void btnVerNota_Click1(object sender, EventArgs e)
        {
            limpiarCeldasVacias();
            if (!validarPorcEval())
            {
                string script = "alert(\"La suma de los porcentajes de evaluación debe ser igual a 100\");";
                ScriptManager.RegisterStartupScript(this, GetType(),
                    "ServerControlScript", script, true);
            }
            else
            {                
                clsTarea2BLL.clsNotasBLL nBLL = new clsTarea2BLL.clsNotasBLL();
                clsTarea2DAL.clsNotasDAL nDAL = new clsTarea2DAL.clsNotasDAL();

                nDAL.FPorcTareas = float.Parse(txtPorcTareas.Text);
                nDAL.FPorcQuices = float.Parse(txtPorcQuices.Text);
                nDAL.FPorcParc1 = float.Parse(txtPorcParcial1.Text);
                nDAL.FPorcParc2 = float.Parse(txtPorcParcial2.Text);
                nDAL.FPorcParc3 = float.Parse(txtPorcParcial3.Text);

                float[] test = new float[5];
                if (
                    float.TryParse(txtQuiz1.Text, out test[0]) && 
                    float.TryParse(txtQuiz2.Text, out test[1]) &&
                    float.TryParse(txtQuiz3.Text, out test[2]))
                {
                    nDAL.FNotaQuiz1 = test[0];
                    nDAL.FNotaQuiz2 = test[1];
                    nDAL.FNotaQuiz3 = test[2];
                    nBLL.calcularPromedioQuices(ref nDAL);
                    txtNotaQuiz.Text = nDAL.FPromedioQuices.ToString("0.00");                    
                }

                if (
                    float.TryParse(txtTarea1.Text, out test[0]) &&
                    float.TryParse(txtTarea2.Text, out test[1]) &&
                    float.TryParse(txtTarea3.Text, out test[2]))
                {
                    nDAL.FNotaTarea1 = test[0];
                    nDAL.FNotaTarea2 = test[1];
                    nDAL.FNotaTarea3 = test[2];
                    nBLL.calcularPromedioTareas(ref nDAL);
                    txtNotaTareas.Text = nDAL.FPromedioTareas.ToString("0.00");
                }

                if (
                    float.TryParse(txtNotaQuiz.Text, out test[0])   &&
                    float.TryParse(txtNotaTareas.Text, out test[1]) &&
                    float.TryParse(txtNotaParc1.Text, out test[2])  &&
                    float.TryParse(txtNotaParc2.Text, out test[3])  &&
                    float.TryParse(txtNotaParc3.Text, out test[4]))
                {                    
                    nDAL.FNotaParcial1 = test[2];
                    nDAL.FNotaParcial2 = test[3];
                    nDAL.FNotaParcial3 = test[4];
                    nBLL.calcularNotaFinal(ref nDAL);
                    txtNotaFinal.Text = nDAL.FNotaFinal.ToString("0.00");
                }


            }
        }

        protected void limpiarCeldasVacias()
        {
            //Arreglo de textboxes que se validarán
            TextBox[] textBoxes = {
                txtPorcTareas, txtPorcQuices, txtPorcParcial1, txtPorcParcial2,
                txtPorcParcial3, txtQuiz1, txtQuiz2, txtQuiz3, txtTarea1,
                txtTarea2, txtTarea3, txtNotaParc1, txtNotaParc2, txtNotaParc3
            };
            //Si un textbox no tiene texto o solo tiene espacios se le asignará el valor 0
            foreach (var txtBox in textBoxes)
            {
                if (txtBox.Text.Replace(" ", "") == "")
                {
                    txtBox.Text = "0";
                }
            }                      
        }

        protected Boolean validarPorcEval() {
            TextBox[] textBoxes = {
                txtPorcParcial1,
                txtPorcParcial2,
                txtPorcParcial3,
                txtPorcQuices,
                txtPorcTareas,
            };
            sbyte suma = new sbyte();
            suma = 0;
            foreach (var txtBox in textBoxes)
            {
                suma += sbyte.Parse(txtBox.Text);
            }
            if (suma!=100)
            {
                return false; //Valores incorrectos
            }
            else
            {
                return true; //Valores correctos
            }
        }
    }

}