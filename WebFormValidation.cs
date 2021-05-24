using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LaboratoriskaVezhba2
{
    public partial class Zadacha2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Kopche_Click(object sender, EventArgs e)
        {
            int god = Convert.ToInt32(Iskustvo.Text);

            if(god>=5)
            {
                Uspeh.Visible = true;
                Neuspeh.Visible = false;
            }
            else
            {
                Uspeh.Visible = false;
                Neuspeh.Visible = true;

            }


        }
    }
}