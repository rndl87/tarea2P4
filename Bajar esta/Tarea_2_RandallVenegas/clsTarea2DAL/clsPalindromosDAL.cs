using System;

namespace clsTarea2DAL
{
    public class clsPalindromosDAL
    {
        #region VARIABLES PRIVADAS
        private String _sTexto;
        private Boolean _esPalindromo;
        #endregion
        #region CONSTRUCTORES
        public string sTexto
        {
            get
            {
                return _sTexto;
            }
            set
            {
                _sTexto = value;
            }
        }
        public Boolean esPalindromo
        {
            get
            {
                return _esPalindromo;
            }
            set
            {
                _esPalindromo = value;
            }
        }
        #endregion
    }
}
