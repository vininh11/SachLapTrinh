﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SachLapTrinh.Data_Access_Layer.DAL;

namespace SachLapTrinh.Presentation_Layer
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            BookDAL bookDAL = new BookDAL();
            
        }
    }
}