using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Najava : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void logIn (object sender, EventArgs e)
    {
        String dbPassword = "";
        SqlConnection konekcija = new SqlConnection();
      //  konekcija.ConnectionString = "Data Source=localhost;"
        //    + "Initial Catalog=Dormitory; Integrated Security=True";
        konekcija.ConnectionString= konekcija.ConnectionString = "Data Source=malcev\\sqlexpress;Initial Catalog=Dormitory;Integrated Security=True";
        SqlCommand komanda = new SqlCommand();
        komanda.Connection = konekcija;

        //username i password vneseni od korisnikot
        String theUsername = String.Format("{0}", username.Text);
        String thePassword = String.Format("{0}", password.Text);

        komanda.CommandText = "select * FROM Student WHERE username='"
            + theUsername.ToString() + "'";
        try
        {
            konekcija.Open();
            SqlDataReader citac = komanda.ExecuteReader();
            if (citac.Read())
            {
                dbPassword = citac["password"].ToString();
                citac.Close();
            }
        }
        catch
        {
            error.Text = "Грешка при поврзување со податочната база.";
        }
        finally
        {
            konekcija.Close();
        }

        if (dbPassword.Equals(""))
        {
            error.Text = "Корисничкото име не постои.";
        }
        else if (dbPassword.Equals(thePassword))
        {
            Session["username"] = theUsername;
            Response.Redirect("Home.aspx");
        }
        else if (!dbPassword.Equals(thePassword))
        {
            error.Text = "Внесовте погрешна лозинка. Обидете се повторно.";
        }
    }
}