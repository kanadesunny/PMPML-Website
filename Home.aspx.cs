using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Diagnostics;
using System.Data;
using System.Web.Services;
using System.Web.Script.Services;
using System.Web.UI.HtmlControls;

namespace PMPMLpage
{
	public partial class Home : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			if (!IsPostBack)
			{
				LoadBusStops();
				//LoadBusRoutes();
			}
		}

		[WebMethod]
		[ScriptMethod(ResponseFormat = ResponseFormat.Json)]
		public static List<string> GetBusStops(string search)
		{
			List<string> lstResult = new List<string>();
			List<string> lstAllBusSTops = new List<string>();
			string[] lines = System.IO.File.ReadAllLines(System.Web.Hosting.HostingEnvironment.MapPath("~/App_Data/FinalListOfPuneBusStops.txt"));
			if (lines != null) lstAllBusSTops = lines.ToList<string>();
			if (lstAllBusSTops != null)
				lstResult = lstAllBusSTops.FindAll(el => el.ToUpper().StartsWith(search.ToUpper()));
			return lstResult;
		}

		private List<string> AllBusStops()
		{
			List<string> lstAllBusSTops = new List<string>();
			string[] lines = System.IO.File.ReadAllLines(Server.MapPath("~/App_Data/PuneBuseStops.txt"));
			if (lines != null) lstAllBusSTops = lines.ToList<string>();
			return lstAllBusSTops;
		}

		private void LoadBusStops()
		{
			try
			{
				string[] lines = System.IO.File.ReadAllLines(Server.MapPath("~/App_Data/FinalListOfPuneBusStops.txt"));
				if (lines != null)
					CreateDataSoure(lines);
			}
			catch (Exception ex)
			{
				System.Diagnostics.Trace.WriteLine(ex);
			}
		}

		private void CreateDataSoure(string[] lines)
		{
			if (lines != null)
			{
				DataTable dt = new DataTable();

				dt.Columns.Add(new DataColumn("Key", typeof(String)));
				dt.Columns.Add(new DataColumn("Value", typeof(String)));
				foreach (string sLine in lines)
				{
					DataRow dr = dt.NewRow();
					dr[0] = sLine;
					dr[1] = sLine;
					dt.Rows.Add(dr);
				}
				DataView dv = new DataView(dt);

				//ddlBusStopsFrom.DataSource = dv;
				//ddlBusStopsFrom.DataTextField = "Key";
				//ddlBusStopsFrom.DataValueField = "Value";
				//ddlBusStopsFrom.DataBind();
				//ddlBusStopsFrom.SelectedIndex = 0;



				//ddlBusStopsTo.DataSource = dv;
				//ddlBusStopsTo.DataTextField = "Key";
				//ddlBusStopsTo.DataValueField = "Value";
				//ddlBusStopsTo.DataBind();
				//ddlBusStopsTo.SelectedIndex = 0;
			}
		}

		private void LoadBusRoutes()
		{
			try
			{
				string[] lines = System.IO.File.ReadAllLines(Server.MapPath("~/App_Data/AllRoutes.txt"));
				if (lines != null)
				{
					Dictionary<string, string> lsAllRoutes = new Dictionary<string, string>();
					foreach (string sLine in lines)
					{
						string[] asRoute = sLine.Split('|');
						string sKey = asRoute[0] + "|" + asRoute[1];
						string sValue = asRoute[3] + "|" + asRoute[4];
						if (!lsAllRoutes.ContainsKey(sKey))
							lsAllRoutes.Add(sKey, sValue);
					}
					Session["AllRoutes"] = lsAllRoutes;
				}
			}
			catch (Exception ex)
			{
				System.Diagnostics.Trace.WriteLine(ex);
			}
		}

		protected void btnSearchRoute_Click(object sender, EventArgs e)
		{
			try
			{
				DataTable dtSearchRoutesInfo = new DataTable();
				List<string> lstRoutes = new List<string>();
				string sFrom = txtFrom.Value;
				string sTo = txtTo.Value;
				if (sFrom.Length > 0 && sTo.Length > 0)
				{
					string[] asRoutesWithBusStops = System.IO.File.ReadAllLines(Server.MapPath("~/App_Data/FinalListOfRoutesWithBusStops.txt"));
					DataTable dt = new DataTable();
					if (asRoutesWithBusStops != null)
					{

						dt.Columns.Add(new DataColumn("Key", typeof(String)));
						dt.Columns.Add(new DataColumn("Value", typeof(String)));
						foreach (string sBusStop in asRoutesWithBusStops)
						{
							string[] asBusStops = sBusStop.Split(',');
							DataRow dr = dt.NewRow();
							dr[0] = asBusStops[0];
							dr[1] = asBusStops[1];
							dt.Rows.Add(dr);
						}
						
						if(dt != null && dt.Rows!= null && dt.Rows.Count > 0)
						{
							string sFromFilter = "Value ='" + sFrom + "'";
							DataRow[] adrFrom = dt.Select(sFromFilter);
							
							string sToFilter = "Value ='" + sTo + "'";
							DataRow[] adrTo = dt.Select(sToFilter);

							foreach(DataRow dr in adrFrom)
							{
								string sFilter = "Key ='" + dr["Key"] + "'";
								foreach (DataRow drTo in adrTo)
								{
									if(string.Compare(dr["Key"].ToString(), drTo["Key"].ToString(), true) == 0)
									{
										if(!lstRoutes.Contains(dr["Key"].ToString()))
										{
											lstRoutes.Add(dr["Key"].ToString());
										}
									}
								}
							}					
						}
					}

					if(lstRoutes != null && lstRoutes.Count > 0)
					{
						string[] asAllRoutesInfo = System.IO.File.ReadAllLines(Server.MapPath("~/App_Data/FinalRoutesInfo.txt"));
						DataTable dtAllRoutesInfo = new DataTable();
						if (asAllRoutesInfo != null)
						{

							dtAllRoutesInfo.Columns.Add(new DataColumn("RouteNo", typeof(String)));
							dtAllRoutesInfo.Columns.Add(new DataColumn("Route", typeof(String)));
							dtAllRoutesInfo.Columns.Add(new DataColumn("FromTimings", typeof(String)));
							dtAllRoutesInfo.Columns.Add(new DataColumn("BToATimings", typeof(String)));
							foreach (string sBusStop in asAllRoutesInfo)
							{
								string[] asBusStops = sBusStop.Split(',');
								DataRow dr = dtAllRoutesInfo.NewRow();
								dr[0] = asBusStops[0];
								dr[1] = asBusStops[1];
								dr[2] = asBusStops[2];
								dr[3] = asBusStops[3];
								dtAllRoutesInfo.Rows.Add(dr);
							}
						}

							
							if (dtAllRoutesInfo != null)
							{

								dtSearchRoutesInfo.Columns.Add(new DataColumn("Route No", typeof(String)));
								dtSearchRoutesInfo.Columns.Add(new DataColumn("Route", typeof(String)));
								dtSearchRoutesInfo.Columns.Add(new DataColumn(sFrom + " to " + sTo, typeof(String)));
								dtSearchRoutesInfo.Columns.Add(new DataColumn(sTo + " to " + sFrom, typeof(String)));
								foreach(string sRouteNo in lstRoutes)
								{
									string sFilter = "RouteNo ='" + sRouteNo + "'";
									DataRow[] drRoutes = dtAllRoutesInfo.Select(sFilter);
									DataRow drRoute = null;
									if (drRoutes != null && drRoutes.Count() > 0)
									{
										drRoute = drRoutes[0];
										if (drRoute != null)
										{
											DataRow dr = dtSearchRoutesInfo.NewRow();
											dr[0] = drRoute[0];
											dr[1] = drRoute[1];
											dr[2] = drRoute[2];
											dr[3] = drRoute[3];
											dtSearchRoutesInfo.Rows.Add(dr);
										}
									}
								}
							}
					}
					bool bSearchFound = false;
					if (dtSearchRoutesInfo != null && dtSearchRoutesInfo.Rows != null && dtSearchRoutesInfo.Rows.Count > 0)
					{
						bSearchFound = true;
						DataView dv = new DataView(dtSearchRoutesInfo);
						spanSearchResultMessage.InnerText = dtSearchRoutesInfo.Rows.Count +  " routes found";
						grdResult.DataSource = dv;
						grdResult.DataBind();
					}

					if (!bSearchFound)
					{
						spanSearchResultMessage.InnerText = "Route not found";
						//TODO : No results found
						grdResult.DataSource = null;
						grdResult.DataBind();
					}
				}
			}
			catch (Exception ex)
			{
				System.Diagnostics.Trace.WriteLine(ex);
			}
		}

		private void CreateSearchResult(string sTimeTable)
		{
			if (sTimeTable.Length > 0)
			{
				DataTable dt = new DataTable();

				dt.Columns.Add(new DataColumn("Morning", typeof(String)));
				dt.Columns.Add(new DataColumn("Afternoon", typeof(String)));
				dt.Columns.Add(new DataColumn("Evening", typeof(String)));
				string[] lines = sTimeTable.Split('|');
				string[] asTimes = lines[0].Split(' ');
				int iCountMorning = 0;
				int iCountAfternoon = 0;
				int iCountEvening = 0;
				foreach (string sLine in asTimes)
				{

					string[] asTime = sLine.Split(':');
					int iHour = 0;
					int.TryParse(asTime[0], out iHour);
					if (iHour > 0 && iHour < 12)
					{
						DataRow dr = dt.NewRow();
						dr[0] = sLine;
						dt.Rows.Add(dr);
						iCountMorning++;
					}
					else if (iHour > 12 && iHour < 17)
					{
						if (iCountMorning > iCountAfternoon)
							dt.Rows[iCountAfternoon][1] = sLine;
						else
						{
							DataRow dr = dt.NewRow();
							dr[1] = sLine;
							dt.Rows.Add(dr);
						}
						iCountAfternoon++;
					}
					else if (iHour > 17 && iHour < 24)
					{
						int iToCompare = 0;
						if (iCountMorning > iCountAfternoon) iToCompare = iCountMorning;
						else iToCompare = iCountAfternoon;
						if (iToCompare > iCountEvening)
							dt.Rows[iCountEvening][2] = sLine;
						else
						{
							DataRow dr = dt.NewRow();
							dr[2] = sLine;
							dt.Rows.Add(dr);
						}
						iCountEvening++;
					}
				}
				DataView dv = new DataView(dt);
				grdResult.DataSource = dv;
				grdResult.DataBind();
			}
		}
	}
}