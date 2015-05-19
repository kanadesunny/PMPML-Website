﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace PMPMLpage
{
	public class Global : System.Web.HttpApplication
	{

		protected void Application_Start(object sender, EventArgs e)
		{
			Application["NoOfVisitors"] = 0;
			Application["OnlineUsers"] = 0;
		}

		protected void Session_Start(object sender, EventArgs e)
		{
			// Code that runs when a new session is started
			Application.Lock();
			Application["NoOfVisitors"] = (int)Application["NoOfVisitors"] + 1;
			Application["OnlineUsers"] = (int)Application["OnlineUsers"] + 1;
			Application.UnLock();
		}

		protected void Application_BeginRequest(object sender, EventArgs e)
		{

		}

		protected void Application_AuthenticateRequest(object sender, EventArgs e)
		{

		}

		protected void Application_Error(object sender, EventArgs e)
		{

		}

		protected void Session_End(object sender, EventArgs e)
		{
			Application.Lock();
			Application["OnlineUsers"] = (int)Application["OnlineUsers"] - 1;
			Application.UnLock();
		}

		protected void Application_End(object sender, EventArgs e)
		{

		}
	}
}