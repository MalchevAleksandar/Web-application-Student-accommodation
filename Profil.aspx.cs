using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Profil : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        String name="", surname="", username="", email="", password="";
        SqlConnection konekcija = new SqlConnection();
        konekcija.ConnectionString = "Data Source=malcev\\sqlexpress;Initial Catalog=Dormitory;Integrated Security=True";
        SqlCommand komanda = new SqlCommand();
        komanda.Connection = konekcija;

        komanda.CommandText = "select * FROM Student WHERE username='"
           + Session["username"] + "'";

        try
        {
            konekcija.Open();
            SqlDataReader citac = komanda.ExecuteReader();
            if (citac.Read())
            {
                name = citac["name"].ToString();
                surname = citac["surname"].ToString();
                username = citac["username"].ToString();
                email = citac["email"].ToString();
             //   for (int i=0; i< citac["password"].ToString().Length; i++)
              //  {
                    password = citac["password"].ToString();
              //  }
                citac.Close();
            }
        }
        catch
        {
           
        }
        finally
        {
            konekcija.Close();
        }

        nameLabel.Text = name;
        surnameLabel.Text = surname;
        emailLabel.Text = email;
        passwordLabel.Text = password;
        usernameLabel.Text = username;
    }

    protected void change1_Click(object sender, EventArgs e)
    {
        SqlConnection konekcija = new SqlConnection();
        konekcija.ConnectionString = "Data Source=malcev\\sqlexpress;Initial Catalog=Dormitory;Integrated Security=True";
        SqlCommand komanda = new SqlCommand();
        komanda.Connection = konekcija;

        komanda.CommandText = "UPDATE Student SET name='"
           + TextBox1.Text + "' WHERE username='" + usernameLabel.Text + "'";

        try
        {
            konekcija.Open();
            komanda.ExecuteNonQuery();
            Response.Redirect("Profil.aspx");
        }
        finally
        {
            konekcija.Close();
        }
    }

    protected void change2_Click(object sender, EventArgs e)
    {
        SqlConnection konekcija = new SqlConnection();
        konekcija.ConnectionString = "Data Source=malcev\\sqlexpress;Initial Catalog=Dormitory;Integrated Security=True";
        SqlCommand komanda = new SqlCommand();
        komanda.Connection = konekcija;

        komanda.CommandText = "UPDATE Student SET surname='"
           + TextBox2.Text + "' WHERE username='" + usernameLabel.Text + "'";

        try
        {
            konekcija.Open();
            komanda.ExecuteNonQuery();
            Response.Redirect("Profil.aspx");
        }
        finally
        {
            konekcija.Close();
        }
    }

    protected void change3_Click(object sender, EventArgs e)
    {
        SqlConnection konekcija = new SqlConnection();
        konekcija.ConnectionString = "Data Source=malcev\\sqlexpress;Initial Catalog=Dormitory;Integrated Security=True";
        SqlCommand komanda = new SqlCommand();
        komanda.Connection = konekcija;

        komanda.CommandText = "UPDATE Student SET username='"
           + TextBox3.Text + "' WHERE username='" + usernameLabel.Text + "'";

        try
        {
            konekcija.Open();
            Session["username"] = (String)TextBox3.Text;
            komanda.ExecuteNonQuery();
            Response.Redirect("Profil.aspx");
        }
        finally
        {
            konekcija.Close();
        }
    }

    protected void change4_Click(object sender, EventArgs e)
    {
        SqlConnection konekcija = new SqlConnection();
        konekcija.ConnectionString = "Data Source=localhost;"
            + "Initial Catalog=Dormitory; Integrated Security=True";
        SqlCommand komanda = new SqlCommand();
        komanda.Connection = konekcija;

        komanda.CommandText = "UPDATE Student SET password='"
           + TextBox4.Text + "' WHERE username='" + usernameLabel.Text + "'";

        try
        {
            konekcija.Open();
            komanda.ExecuteNonQuery();
            Response.Redirect("Profil.aspx");
        }
        finally
        {
            konekcija.Close();
        }
    }

    protected void change5_Click(object sender, EventArgs e)
    {
        SqlConnection konekcija = new SqlConnection();
        konekcija.ConnectionString = "Data Source=localhost;"
            + "Initial Catalog=Dormitory; Integrated Security=True";
        SqlCommand komanda = new SqlCommand();
        komanda.Connection = konekcija;

        komanda.CommandText = "UPDATE Student SET email='"
           + TextBox5.Text + "' WHERE username='" + usernameLabel.Text + "'";

        try
        {
            konekcija.Open();
            komanda.ExecuteNonQuery();
            Response.Redirect("Profil.aspx");
        }
        finally
        {
            konekcija.Close();
        }
    }
}