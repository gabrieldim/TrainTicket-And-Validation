using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LaboratoriskaVezhba2
{
    public partial class Zadacha1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if(!Page.IsPostBack)
            {
                ddlOd.Items.Add("Берлин");
                ddlOd.Items.Add("Белград");
                ddlOd.Items.Add("Скопје");
                ddlOd.Items.Add("Штип");
                ddlOd.Items.Add("Гостивар");
                ddlOd.Items.Add("Тетово");



                ddlDo.Items.Add("Атина");
                ddlDo.Items.Add("Хамбург");
                ddlDo.Items.Add("Охрид");
                ddlDo.Items.Add("Скопје");
                ddlDo.Items.Add("Готенбург");
                ddlDo.Items.Add("Белград");



                List<string> lista = new List<string>() {"Јануари","Февруари", "Март", "Април", "Мај", "Јуни", "Јули", "Август", "Септември", "Октомври", "Ноември", "Декември"};
                ddlMesec.DataSource = lista;
                ddlMesec.DataBind();

                for(int i=1;i<=31;i++)
                {
                    ddlDen.Items.Add(i.ToString());
                }

                int godina = DateTime.Now.Year;
               for(int i =0; i<5;i++)
                {
                    ddlGodina.Items.Add(godina.ToString());
                    godina++;
                }


                for(int i=0;i<=23;i++)
                {
                    if(i==0)
                    {
                        ddlVreme.Items.Add(i.ToString() + "0:00");

                    }
                    else { 
                    ddlVreme.Items.Add(i.ToString() + ":00");
                    }
                }
            }


           




        }

        protected void btnPodnesi_Click(object sender, EventArgs e)
        {
            lblPatnik.Text = "Pochituvan patniku: </br> " + txtIme.Text + " " + txtPrezime.Text;
            lblPoraka.Text = "Издадена Ви е карта за </br> " + LstSredstvo.SelectedValue;
            lblOd.Text = "Со почетна дестинација од </br>" + ddlOd.Text;
            lblDo.Text = "и крајна дестинација </br> " + ddlDo.Text;
            lblVreme.Text = "Времето на поаѓање е: " + ddlDen.Text+ "." + ddlMesec.Text + "." + ddlGodina.Text + " во " + ddlVreme.Text;

            StringBuilder br = new StringBuilder();

            foreach(ListItem item in cblPosluga.Items)
            {
                if(item.Selected)
                {
                    br.Append(item.Text);
                    br.Append(" ");
                }
            }
            

            lblZona.Text = "Вашето место за седење ќе биде во зоната " + rblZona.Text;
            lblKlasa.Text = " во " + rblKlasa.Text + " и во текот на патувањето ќе бидете послужени со ";
            lblPosluga.Text = br.ToString();
            
            if(LstSredstvo.SelectedItem.ToString() == "Авион") {    
         
            imgSlika.ImageUrl = "https://png.pngtree.com/png-clipart/20191120/original/pngtree-vector-flying-in-the-plane-png-png-image_5054014.jpg";
            }
            else
            {
                imgSlika.ImageUrl = "https://png.pngtree.com/png-clipart/20190516/original/pngtree-blue-high-speed-train-train-wind-element-railtraintransportationsimpletransportation-png-image_4023513.jpg";
            }


            lastLabel.Text = "Ви благодариме на довербата и Ви посакуваме среќен пат!";

        }
    }
}