using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;

/// <summary>
/// Summary description for cena
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
// [System.Web.Script.Services.ScriptService]
public class cena : System.Web.Services.WebService
{

    public cena()
    {

        //Uncomment the following line if using designed components 
        //InitializeComponent(); 
    }

    [WebMethod(Description = "Ovoj metod vraka cena na soba")]
    public int Cena(int cena)
    {
        if (cena == 1)
            return 3445;
        else if (cena == 2)
            return 2295;
        else if (cena == 3)
            return 3295;
        else if (cena == 4)
            return 3190;
        else return 0;
    }

}
