using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PMPMLpage
{
	public partial class Pmpml : System.Web.UI.MasterPage
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			lblCount.Text = Application["NoOfVisitors"].ToString();
			lblToday.Text = Application["OnlineUsers"].ToString();
		}
	}
}