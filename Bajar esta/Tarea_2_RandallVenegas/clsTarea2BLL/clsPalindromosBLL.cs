using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using clsTarea2DAL;

namespace clsTarea2BLL
{
    public class clsPalindromosBLL
    {
        public void calcularPalindromo(ref clsPalindromosDAL pDAL)
        {
            string str2 = new string(pDAL.sTexto.ToCharArray().Reverse().ToArray()); //Convierte el valor sTexto a un arreglo de caracteres para poder voltearlo y asignarle la cadena volteada a la variable str2
            if (pDAL.sTexto.Equals(str2, StringComparison.InvariantCultureIgnoreCase)) //Compara ingorando máyúsculas
            {
                pDAL.esPalindromo = true; //El texto es palíndromo
            }
            else
            {
                pDAL.esPalindromo = false;//El texto no es palíndromo
            }
        }
    }
}
