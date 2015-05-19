<%@ Page Title="Home" Language="C#" MasterPageFile="~/Pmpml.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="PMPMLpage.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
	<script type="text/javascript">
		$(function () {
			$("#<%=txtFrom.ClientID%>").autocomplete({
				source: function (request, response) {
					$.ajax({
						url: "Home.aspx/GetBusStops",
						data: "{ 'search':'" + request.term + "'}",
						dataType: "json",
						type: "POST",
						contentType: "application/json; charset=utf-8",
						success: function (data) {
							response($.map(data.d, function (item) {
								return { value: item }
							}))
						},
						error: function (XMLHttpRequest, textStatus, errorThrown) {
							alert(textStatus);
						}
					});
				}
			});

			$("#<%=txtTo.ClientID%>").autocomplete({
				source: function (request, response) {
					$.ajax({
						url: "Home.aspx/GetBusStops",
						data: "{ 'search':'" + request.term + "'}",
						dataType: "json",
						type: "POST",
						contentType: "application/json; charset=utf-8",
						success: function (data) {
							response($.map(data.d, function (item) {
								return { value: item }
							}))
						},
						error: function (XMLHttpRequest, textStatus, errorThrown) {
							alert(textStatus);
						}
					});
				}
			});
		});
	</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
	<div class="col-xs-12 col-sm-6 col-md-8 col-lg-8">
		<div class="row">
			<div class="col-lg-12">
				<div class="mainContainerRepeatBox featurebox planyourjourney">
					<h4>Plan Your Journey 
					</h4>
					<input type="text" id="txtFrom" class="" placeholder="From" runat="server" />
					<div class="clearfix"></div>
					<input id="txtTo" type="text" class="" placeholder="To" runat="server" />
					<div class="clearfix"></div>
					<asp:Button ID="btnSearchRoute" runat="server" OnClick="btnSearchRoute_Click" Text="Plan my journey" CssClass="btn btn-primary" />
					<br />
					<br />
					<div id="SearchResult" class="">
						<span id="spanSearchResultMessage" runat="server"></span>
						<asp:GridView ID="grdResult" runat="server"></asp:GridView>
					</div>
				</div>
			</div>
		</div>


		<div class="row">
			<div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
				<div class="mainContainerRepeatBox featurebox newarrival comingsoon">
					<br />
					<img src="content/img/Routes-&-Timetable-icon.png" alt="" height="80" />
					<span class="txt1">You can view routes map and Timetable</span><span class="txt2">Routes &amp; Timetable</span>
					<%--<button type="button" class="btn btn-primary pull-right">Click here <span class="glyphicon glyphicon-chevron-right"></span></button>--%>
				</div>
			</div>
			<div class="col-xs-12 col-sm-12 col-md-6 col-lg-6">
				<div class="mainContainerRepeatBox featurebox newarrival comingsoon">
					<br />
					<img src="content/img/android.png" alt="" height="80" />
					<span class="txt1">Download</span><span class="txt2">Android App</span><br />
					<%--<button type="button" class="btn btn-primary pull-right">Click here <span class="glyphicon glyphicon-chevron-right"></span></button>--%>
				</div>
			</div>
			<%--	<div class="col-lg-4">
				<div class="mainContainerRepeatBox featurebox newarrival">
					<h4>
						<img src="content/img/help-line.png" height="50" alt="" style="position: relative;" />
						Helpline No.</h4>
					<span class="">(020) - 245 03355</span>
				</div>
			</div>
			<div class="col-lg-4">
				<div class="mainContainerRepeatBox featurebox newarrival">
					<h4>Routes &amp; Timetable</h4>
					<p>You can view routes map and Timetable</p>
					<button type="button" class="btn btn-primary pull-right">Click here <span class="glyphicon glyphicon-chevron-right"></span></button>
				</div>
			</div>
			<div class="col-lg-4">
				<div class="mainContainerRepeatBox featurebox newarrival">
					<h4>
						<img src="content/img/android.png" height="50" alt="" style="position: relative;" /></h4>
					<p>Download our Android App</p>
					<button type="button" class="btn btn-primary pull-right">Click here <span class="glyphicon glyphicon-chevron-right"></span></button>
				</div>
			</div>--%>
		</div>
		<div class="row">
			<div class="col-xs-6 col-sm-12 col-md-6 col-lg-3">
				<img src="content/img/image01.png" alt="" />
			</div>
			<div class="col-xs-6 col-sm-12 col-md-6 col-lg-3">
				<img src="content/img/image02.png" alt="" />
			</div>
			<div class="col-xs-6 col-sm-12 col-md-6 col-lg-3">
				<img src="content/img/image03.png" alt="" />
			</div>
			<div class="col-xs-6 col-sm-12 col-md-6 col-lg-3">
				<img src="content/img/image04.png" alt="" />
			</div>
		</div>
		<div class="mainContainerRepeatBox">
			<h4>Daily News and Updates</h4>
			<ul class="dailynewslist">
				<li><a href="http://72.78.249.126/sakaaltimesbeta/20131203/5177930132216310239.htm" target="_blank">PMPML needs a Chief like Dr Pardeshi!</a></li>
				<li><a href="http://indianexpress.com/article/cities/pune/pmos-call-to-pardeshi-sinks-hearts-of-pmpml-commuters/" target="_blank">PMO's call to Pardeshi sinks hearts of PMPML commuters</a></li>
				<li><a href="http://www.dnaindia.com/topic/pmpml" target="_blank">PMPML</a></li>
				<li><a href="http://timesofindia.indiatimes.com/city/pune/Shrikar-Pardeshi-given-additional-charge-of-PMPML/articleshow/45500532.cms" target="_blank">Shrikar Pardeshi given additional charge of PMPML</a></li>
				<li><a href="http://www.sakaaltimes.com/TagSearch.aspx?TagName=Dr%20Shrikar%20Pardeshi" target="_blank">Dr Shrikar Pardeshi </a></li>
				<li><a href="http://timesofindia.indiatimes.com/topic/Shrikar-Pardeshi" target="_blank">Pimpri Chinchwad Municipal Corporation sets aside Rs 120cr for PMPML</a></li>
				<li><a href="http://www.mid-day.com/search/dr-shrikar-pardeshi_all" target="_blank">NGOs meet PMPML over ticket rate</a></li>
				<li><a href="https://www.youtube.com/watch?v=IW-Gn6bQTE0" target="_blank">Shrikar Pardeshi plans PMPML’s overhaul </a></li>
				<li><a href="http://thegoldensparrow.com/news/pmpml-chief-gets-cracking-with-initiatives/" target="_blank">PMPML chief gets cracking with initiative</a></li>
				<li><a href="http://newsbun.com/article/cities/pune/for-every-bus-parked-at-pmpml-depots-another-stands-outside" target="_blank">For every bus parked at PMPML depots another stands outside</a></li>
				<li><a href="http://www.punemirror.in/pune/civic/PMPML-launches-40-buses-9-new-routes/articleshow/46808826.cms" target="_blank">PMPML launches 40 buses 9 new routes </a></li>
				<li><a href="http://timesofindia.indiatimes.com/city/pune/PMPML-collects-over-Rs-8cr-for-repair-works/articleshow/46694443.cms" target="_blank">PMPML collects over Rs 8cr for repair works</a></li>
				<li><a href="http://timesofindia.indiatimes.com/city/pune/PMPML-waits-for-octroi-land-to-park-buses/articleshow/46616528.cms" target="_blank">PMPML waits for octroi land to park buses </a></li>
				<li><a href="http://www.punemirror.in/pune/civic/PMPML-gets-its-game-on/articleshow/46762278.cms" target="_blank">PMPML gets its game on</a></li>

			</ul>
			<%--<a href="#" class="btn btn-link pull-right">View all news...</a>--%>
		</div>
	</div>
</asp:Content>
