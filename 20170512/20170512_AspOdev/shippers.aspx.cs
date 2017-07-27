using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _20170512_AspOdev
{
    public partial class shippers : System.Web.UI.Page
    {
        //connection ile baglantı kuruyoruz
        SqlConnection baglan = new SqlConnection("Server=.;DataBase=NORTHWND;Integrated Security=true");
        protected void Page_Load(object sender, EventArgs e)
        {
            /*command ile sorgu yazdık baglantı kapalımı diye kontrol ettik kapalıysa açtık rd değişkeni ile komutu okumasını söyledik
             eğer veri döndürüyorsa text değerini value değerini atadık sonrada okutmayı ve bagalntıyı kapattık*/
            if (!IsPostBack)
            {
                SqlCommand komut = new SqlCommand("Select ShipperID, CompanyName From Shippers", baglan);
                if (baglan.State == ConnectionState.Closed)
                {
                    baglan.Open();
                }
                SqlDataReader rd = komut.ExecuteReader();

                if (rd.HasRows)
                {
                    lstship.DataSource = rd;
                    lstship.DataTextField = "CompanyName";
                    lstship.DataValueField = "ShipperID";
                    lstship.DataBind();
                }
                rd.Close();
                baglan.Close();

            }
        }

        protected void lstship_SelectedIndexChanged(object sender, EventArgs e)
        {
            //listboxdan seçilen ögeyi textboxa atadk
            txtship.Text = lstship.SelectedItem.ToString();
        }

        protected void btnship_Click(object sender, EventArgs e)
        {
            /*comand ile update işlemi sorgusunu yazdık parametreleri olarak idnin valusunu listboxdan nameni textboxdan alsın dedik baglantı 
            kapalıysa açmasını söyledik tryın içerisine komutu veri döndürmesini ve mesaj yazdırmasını textboxa boş atamasını söyledik
            yoksa catchle throw fırlatsın finallyle ilede baglantıyı kapatsın*/

            SqlCommand komut = new SqlCommand("Update Shippers set CompanyName=@CompanyName Where ShipperID=@ShipperID", baglan);

            komut.Parameters.AddWithValue("@ShipperID", lstship.SelectedItem.Value);
            komut.Parameters.AddWithValue("@CompanyName", txtship.Text);

            if (baglan.State == ConnectionState.Closed)
            {
                baglan.Open();
            }

            try
            {
                komut.ExecuteNonQuery();
                Response.Write("Güncellendi!");
                txtship.Text = null;
            }
            catch (Exception)
            {
                throw new Exception("Güncelleme Başarısız");
            }
            finally
            {
                baglan.Close();

            }
        }
    }
}