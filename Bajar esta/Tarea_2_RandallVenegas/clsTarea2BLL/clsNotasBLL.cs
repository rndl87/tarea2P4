using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace clsTarea2BLL
{
    public class clsNotasBLL
    {
        public void calcularPromedioQuices(ref clsTarea2DAL.clsNotasDAL nDAL)
        {
            float resultado;
            bool conversionExitosa = float.TryParse(((nDAL.FNotaQuiz1 + nDAL.FNotaQuiz2 + nDAL.FNotaQuiz3) / 3).ToString(), out resultado);
            if (conversionExitosa)
            {
                nDAL.FPromedioQuices = resultado;
            }
            else
            {
                nDAL.FPromedioQuices = 0;
            }
        }
        public void calcularPromedioTareas(ref clsTarea2DAL.clsNotasDAL nDAL)
        {
            float resultado;
            bool conversionExitosa = float.TryParse(((nDAL.FNotaTarea1 + nDAL.FNotaTarea2 + nDAL.FNotaTarea3) / 3).ToString(), out resultado);
            if (conversionExitosa)
            {
                nDAL.FPromedioTareas = resultado;
            }
            else
            {
                nDAL.FPromedioTareas = 0;
            }
        }
        public void calcularNotaFinal(ref clsTarea2DAL.clsNotasDAL nDAL)
        {
            nDAL.FNotaFinal = nDAL.FPromedioQuices * nDAL.FPorcQuices/100 + 
                              nDAL.FPromedioTareas * nDAL.FPorcTareas/100 +
                              nDAL.FNotaParcial1 * nDAL.FPorcParc1/100    +
                              nDAL.FNotaParcial2 * nDAL.FPorcParc2/100    +
                              nDAL.FNotaParcial3 * nDAL.FPorcParc3 / 100 ;
        }
    }
}
