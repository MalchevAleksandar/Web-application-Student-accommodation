using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Smestuvanje : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string dormitory = Request.QueryString["dormitory"];

    //    cenastd.cena servis = new cenastd.cena();
    //    int cena = servis.Cena(1);

   //     ser.Text = cena.ToString();


        Session["dormitory"] = dormitory;
        if (dormitory != null) {
            loadAvailableRooms(dormitory);
        }

        if (Session["username"] != null)
        {
            username.Text = (String)Session["username"];
            logInOutButton.Text = "Одјави се";

        }
        else
        {
            logInOutButton.Text = "Најави се";
        }
    }

    protected void logEvent(object sender, EventArgs e)
    {
        if (logInOutButton.Text.Equals("Одјави се"))
        {
            Session["username"] = null;
            Response.Redirect("Home.aspx");
        }
        else
        {
            Response.Redirect("Najava.aspx");
        }
    }

    protected void btnAvailableRooms_Click(object sender, EventArgs e)
    {
        string id=null;
        string dormitory=null;
        Button btn = sender as Button;
        if(btn!=null)
            id= btn.ID;
        if (id.Equals("btnGoce"))
            dormitory = "Goce";
        else if (id.Equals("btnKuzman"))
            dormitory = "Kuzman";
        else if (id.Equals("btnPelagonija"))
            dormitory = "Pelagonija";
        else if (id.Equals("btnStiv"))
            dormitory = "Stiv";
        Session["dormitory"] = dormitory;
        string url = "Smestuvanje.aspx?dormitory=" + dormitory;
        Response.Redirect(url);

     

    }

    private void B_Click(object sender, EventArgs e)
    {

       cenastd.cena servis = new cenastd.cena();
        int cena = servis.Cena(1);

        string username = (string)Session["username"];
        if (username == null)
        {
            string msg = "За да аплицирате за избраната соба мора да се најавите!!!";
            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + msg + "');", true);
            return;
        }
        Button b = sender as Button;
        string [] room = b.Text.Split(' ');
        string roomNumber = room[0];
        string roomBlock = room[1];
        Session["room_id"] = roomNumber;
        Session["block"] = roomBlock;
        Response.Redirect("Prijava.aspx");
    }

    private void loadAvailableRooms(string dormitory) {
        SqlConnection konekcija = new SqlConnection();
        // konekcija.ConnectionString = "Data Source=localhost;"
        //   + "Initial Catalog=Dormitory; Integrated Security=True";
        konekcija.ConnectionString = "Data Source=malcev\\sqlexpress;Initial Catalog=Dormitory;Integrated Security=True";
        String sql = "SELECT room_id,block FROM Room WHERE d_name=@d_name and available=1";
        SqlCommand komanda = new SqlCommand(sql, konekcija);
        komanda.Parameters.AddWithValue("@d_name", dormitory);
        SqlDataReader citac;

        try
        {
            konekcija.Open();
            citac = komanda.ExecuteReader();
            while (citac.Read())
            {
                string roomNumber = citac["room_id"].ToString();
                string block = citac["block"].ToString();
                Button b = new Button();
                b.Text = roomNumber + " " + block;
                b.CssClass = "btn-room";
                b.Click += new EventHandler(B_Click);

                forma.Controls.Add(b);

            }
        }
        catch (Exception exc)
        {

        }
        finally {
            konekcija.Close();
        }

    }
}