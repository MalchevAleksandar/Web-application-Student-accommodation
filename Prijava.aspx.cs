using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Prijava : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
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

    protected void btnPrijava_Click(object sender, EventArgs e)
    {
        string username = (string)Session["username"];
        if (hasRoomAplication(username)) {
            string m = "Неуспешна пријава! Го надминавте максималниот број на пријави!";
            ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + m + "');", true);
            return;
        }
        cenastd.cena servis = new cenastd.cena();
            int cena=0;

        
        string roomID = (string)Session["room_id"];
        string roomBlock = (string)Session["block"];
        string dormitory = (string)Session["dormitory"];

        if (dormitory.Equals("Goce"))

            cena = servis.Cena(1);
        else if (dormitory.Equals("Kuzman"))
            cena = servis.Cena(2);
        else if (dormitory.Equals("Pelagonija"))
            cena = servis.Cena(3);
        else if (dormitory.Equals("Stiv"))
            cena = servis.Cena(4);


        fillAplication(username, roomID, roomBlock, dormitory);
        changeRoomAvailability(dormitory, roomBlock, roomID);
        string msg = "Вашата пријава е успешно поднесена"+cena;
        ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('" + msg + "');", true);

    }

    private void fillAplication(string username, string roomID, string roomBlock, string dormotory) {
        SqlConnection konekcija = new SqlConnection();
        // konekcija.ConnectionString = "Data Source=localhost;"
        //   + "Initial Catalog=Dormitory; Integrated Security=True";
        konekcija.ConnectionString= "Data Source=malcev\\sqlexpress;Initial Catalog=Dormitory;Integrated Security=True";
        string sql = "INSERT INTO Application values('" + username + "','" + roomID + "','" + roomBlock + "','" + dormotory + "')";

        SqlCommand komanda = new SqlCommand(sql,konekcija);
       
        try {
            konekcija.Open();
            komanda.ExecuteNonQuery();
        }
        catch (Exception exc) { }
        finally { konekcija.Close(); }
    }

    private void changeRoomAvailability(string dormitory,string block,string roomID) {
        SqlConnection konekcija = new SqlConnection();
        // konekcija.ConnectionString = "Data Source=localhost;"
        //   + "Initial Catalog=Dormitory; Integrated Security=True";
        konekcija.ConnectionString = "Data Source=malcev\\sqlexpress;Initial Catalog=Dormitory;Integrated Security=True";
        string sql = "UPDATE Room  SET available=0 WHERE d_name=@d_name AND block=@block AND room_id=@room_id";
        
        SqlCommand komanda = new SqlCommand(sql, konekcija);
        komanda.Parameters.AddWithValue("@d_name", dormitory);
        komanda.Parameters.AddWithValue("@block", block);
        komanda.Parameters.AddWithValue("@room_id", roomID);

        try
        {
            konekcija.Open();
            komanda.ExecuteNonQuery();
        }
        catch (Exception exc) { }
        finally { konekcija.Close(); }
    }

    private bool hasRoomAplication(string username) {

        SqlConnection konekcija = new SqlConnection();
        // konekcija.ConnectionString = "Data Source=localhost;"
        //   + "Initial Catalog=Dormitory; Integrated Security=True";
        konekcija.ConnectionString = "Data Source = USER-PC3\\SQLEXPRESS; Initial Catalog = Dormitory; Integrated Security = True";
        string sql = "SELECT * FROM Application WHERE username=@username";

        SqlCommand komanda = new SqlCommand(sql, konekcija);
        komanda.Parameters.AddWithValue("@username", username);
        SqlDataAdapter adapter = new SqlDataAdapter(komanda);
        DataSet dataset = new DataSet();
        int rows = 0;

        try
        {
            konekcija.Open();
            rows=adapter.Fill(dataset);
        }
        catch (Exception exc) { }
        finally { konekcija.Close(); }

        if (rows > 0)
            return true;

        return false;
    }
}