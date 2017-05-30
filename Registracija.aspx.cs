using System;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Registracija : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void register(object sender, EventArgs e)
    {
        //proveri dali vnesenoto korisnichko ime go nema vo bazata
        Boolean unique = true;
        String names;

        SqlConnection konekcija = new SqlConnection();
        // konekcija.ConnectionString = "Data Source=localhost;"
        //   + "Initial Catalog=Dormitory; Integrated Security=True";
        konekcija.ConnectionString = "Data Source=malcev\\sqlexpress;Initial Catalog=Dormitory;Integrated Security=True";
        SqlCommand komanda = new SqlCommand();
        SqlCommand proverka = new SqlCommand();

        komanda.Connection = konekcija;
        proverka.Connection = konekcija;

        komanda.CommandText = "INSERT INTO Student values " +
            "('" + String.Format("{0}", tbIme.Text) + "'," +
            "'" + String.Format("{0}", tbPrezime.Text) + "'," +
            "'" + String.Format("{0}",tbUsername.Text) + "'," +
            "'" + String.Format("{0}", tbEmail.Text) + "'," +
            "'" + String.Format("{0}", tbLozinka.Text) + "')";
        proverka.CommandText = "SELECT * FROM Student";

        try
        {
            konekcija.Open();
            SqlDataReader citac = proverka.ExecuteReader();
            while (citac.Read())
            {
                names = citac["username"].ToString();
                if (names.Equals(Request.Form["username"]))
                {
                    unique = false;
                    break;
                }
            }
        }
        finally
        {
            konekcija.Close();
        }

        if (unique)
        {
            try
            {
                konekcija.Open();
                komanda.ExecuteNonQuery();
            }
            finally
            {
                konekcija.Close();
            }
            Server.Transfer("Najava.aspx", true);
        }
        else
        {
            messages.Text = "Корисничкото име е во употреба. Ве молиме изберете друго";
        }
}
}