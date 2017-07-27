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
    public partial class employees : System.Web.UI.Page
    { //global alanda connection işlemini yaptık her scope içerisine çağırabilmek için

        SqlConnection baglan = new SqlConnection("Server=.;DataBase=NORTHWND;Integrated Security=true");        //bağlanacağımız sql serverın adını belirledik
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)        //sayfa geri dönüş değerinde değilse
            {
                SqlCommand komut = new SqlCommand("Select EmployeeID, FirstName From Employees", baglan);       //sql sorgumuzu yazdığımız cümle connection bağlan oluşmuştur baglan ile çağırıyoruz
                if (baglan.State == ConnectionState.Closed)     //eğer baglantı şu anda kapalıysa
                {
                    baglan.Open();      //connection ile oluşturduğumuz bağlantıyı açtık
                }
                SqlDataReader rd = komut.ExecuteReader();       // komut ile oluşturduğumuz sorguyu okutmak için rd değişkenine atıyoruz. Amaç veri okuması gerçekleştirmek

                if (rd.HasRows)     //veri döndürüyorsa

                {
                    lstemp.DataSource = rd;      //okunacak data yolu atadığımız rd 
                    lstemp.DataTextField = "Firstname";     //okunacak textin adı 
                    lstemp.DataValueField = "EmployeeID";        //okunacak value değerinin adı 
                    lstemp.DataBind();
                }
                rd.Close();       //dataadapteri kapa
                baglan.Close();      //connectionla bağlandığımız bağlantıyı kapa

            }
        }

        protected void lstemp_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtemp.Text = lstemp.SelectedItem.ToString();       //listboxın üzerinde herhangi bir veriye tıklandığında textboxa atadık
        }

        protected void btnemp_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("Update Employees set FirstName=@FirstName Where EmployeeID=@EmployeeID", baglan);    //butona bastığımızda command komutu ile sorgumuzun içerisindeki işlemi yap

            komut.Parameters.AddWithValue("@EmployeeID", lstemp.SelectedItem.Value);    //listboxdan seçilen verinin ID değerini tut 
            komut.Parameters.AddWithValue("@FirstName", txtemp.Text);        //textboxda adını değiştir

            if (baglan.State == ConnectionState.Closed)      //eğer baglantı kapalıysa
            {
                baglan.Open();       //baglantıyı aç 
            }

            try
            {
                komut.ExecuteNonQuery();        //komut değerinin etkilediği kayıt sayısını döndürür 
                Response.Write("Güncellendi!");    //mesaj yaz 
                txtemp.Text = null;     //textboxı boşalt
            }
            catch (Exception)
            {
                throw new Exception("Güncelleme Başarısız");
                //işlem hatalıysa throw fırlat
            }
            finally
            {
                baglan.Close();     // bağlantıyı kapat

            }
        }
    }
}