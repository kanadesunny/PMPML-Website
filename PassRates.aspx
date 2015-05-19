<%@ Page Title="Pass Rates" Language="C#" MasterPageFile="~/Pmpml.Master" AutoEventWireup="true" CodeBehind="PassRates.aspx.cs" Inherits="PMPMLpage.PassRates" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
	<div class="col-xs-12 col-sm-6 col-md-8 col-lg-8">
		<div class="row">
			<div class="mainContainerRepeatBox othercontent">
                 <h4>Pass Rate's And Concessions</h4>
				<table class="table">
					<tbody>
						<table class="table">
							<tbody>
								<tr>
									<td><strong>Employee Monthly Pass Rates (With Surcharge for 22 days)</strong></td>
								</tr>
								<table class="table">
									<tbody>
										<tr>
											<td width="74" height="24" align="center" bgcolor="#EEEEEE" class="Year border_top_left border_bottom_right">Stage</td>
											<td width="167" height="24" align="center" bgcolor="#EEEEEE" class="Year border_top_left border_bottom_right">Km.</td>
											<td width="105" height="24" align="center" bgcolor="#EEEEEE" class="Year border_bottom_right border_top">Ticket Rates (Rs.)</td>
											<td width="157" height="24" align="center" bgcolor="#EEEEEE" class="Year border_bottom_right border_top">Pass Rates (22 days) (Rs.)</td>
										</tr>
										<tr>
											<td width="74" height="0" align="center" valign="top" class="Year1 border_left">1</td>
											<td width="167" height="0" align="center" valign="top" class="Year1">0</td>
											<td width="105" height="0" align="center" valign="top" class="Year1">0</td>
											<td width="157" height="0" align="center" valign="top" class="Year1">0</td>
										</tr>
										<tr>
											<td width="74" height="0" align="center" valign="top" class="Year1 border_left">2</td>
											<td width="167" height="0" align="center" valign="top" class="Year1">2</td>
											<td width="105" height="0" align="center" valign="top" class="Year1">5</td>
											<td width="157" height="0" align="center" valign="top" class="Year1">220</td>
										</tr>
										<tr>
											<td width="74" height="0" align="center" valign="top" class="Year1 border_left">3</td>
											<td width="167" height="0" align="center" valign="top" class="Year1">4</td>
											<td width="105" height="0" align="center" valign="top" class="Year1">10</td>
											<td width="157" height="0" align="center" valign="top" class="Year1">440</td>
										</tr>
										<tr>
											<td width="74" height="0" align="center" valign="top" class="Year1 border_left">4</td>
											<td width="167" height="0" align="center" valign="top" class="Year1">6</td>
											<td width="105" height="0" align="center" valign="top" class="Year1">10</td>
											<td width="157" height="0" align="center" valign="top" class="Year1">440</td>
										</tr>
										<tr>
											<td width="74" height="0" align="center" valign="top" class="Year1 border_left">5</td>
											<td width="167" height="0" align="center" valign="top" class="Year1">8</td>
											<td width="105" height="0" align="center" valign="top" class="Year1">15</td>
											<td width="157" height="0" align="center" valign="top" class="Year1">660</td>
										</tr>
										<tr>
											<td width="74" height="0" align="center" valign="top" class="Year1 border_left">6</td>
											<td width="167" height="0" align="center" valign="top" class="Year1">10</td>
											<td width="105" height="0" align="center" valign="top" class="Year1">15</td>
											<td width="157" height="0" align="center" valign="top" class="Year1">660</td>
										</tr>
										<tr>
											<td width="74" height="0" align="center" valign="top" class="Year1 border_left">7</td>
											<td width="167" height="0" align="center" valign="top" class="Year1">12</td>
											<td width="105" height="0" align="center" valign="top" class="Year1">20</td>
											<td width="157" height="0" align="center" valign="top" class="Year1">880</td>
										</tr>
										<tr>
											<td width="74" height="0" align="center" valign="top" class="Year1 border_left">8</td>
											<td width="167" height="0" align="center" valign="top" class="Year1">14</td>
											<td width="105" height="0" align="center" valign="top" class="Year1">20</td>
											<td width="157" height="0" align="center" valign="top" class="Year1">880</td>
										</tr>
										<tr>
											<td width="74" height="0" align="center" valign="top" class="Year1 border_left">9</td>
											<td width="167" height="0" align="center" valign="top" class="Year1">16</td>
											<td width="105" height="0" align="center" valign="top" class="Year1">25</td>
											<td width="157" height="0" align="center" valign="top" class="Year1">1100</td>
										</tr>
										<tr>
											<td width="74" height="0" align="center" valign="top" class="Year1 border_left">10</td>
											<td width="167" height="0" align="center" valign="top" class="Year1">18</td>
											<td width="105" height="0" align="center" valign="top" class="Year1">25</td>
											<td width="157" height="0" align="center" valign="top" class="Year1">1100</td>
										</tr>
										<tr>
											<td width="74" height="0" align="center" valign="top" class="Year1 border_left">11</td>
											<td width="167" height="0" align="center" valign="top" class="Year1">20</td>
											<td width="105" height="0" align="center" valign="top" class="Year1">25</td>
											<td width="157" height="0" align="center" valign="top" class="Year1">1100</td>
										</tr>
										<tr>
											<td width="74" height="0" align="center" valign="top" class="Year1 border_left">12</td>
											<td width="167" height="0" align="center" valign="top" class="Year1">22</td>
											<td width="105" height="0" align="center" valign="top" class="Year1">30</td>
											<td width="157" height="0" align="center" valign="top" class="Year1">1320</td>
										</tr>
										<tr>
											<td width="74" height="0" align="center" valign="top" class="Year1 border_left">13</td>
											<td width="167" height="0" align="center" valign="top" class="Year1">24</td>
											<td width="105" height="0" align="center" valign="top" class="Year1">30</td>
											<td width="157" height="0" align="center" valign="top" class="Year1">1320</td>
										</tr>
										<tr>
											<td width="74" height="0" align="center" valign="top" class="Year1 border_left">14</td>
											<td width="167" height="0" align="center" valign="top" class="Year1">26</td>
											<td width="105" height="0" align="center" valign="top" class="Year1">30</td>
											<td width="157" height="0" align="center" valign="top" class="Year1">1320</td>
										</tr>
										<tr>
											<td width="74" height="0" align="center" valign="top" class="Year1 border_left">15</td>
											<td width="167" height="0" align="center" valign="top" class="Year1">28</td>
											<td width="105" height="0" align="center" valign="top" class="Year1">35</td>
											<td width="157" height="0" align="center" valign="top" class="Year1">1540</td>
										</tr>
										<tr>
											<td width="74" height="0" align="center" valign="top" class="Year1 border_left">16</td>
											<td width="167" height="0" align="center" valign="top" class="Year1">30</td>
											<td width="105" height="0" align="center" valign="top" class="Year1">35</td>
											<td width="157" height="0" align="center" valign="top" class="Year1">1540</td>
										</tr>
										<tr>
											<td width="74" height="0" align="center" valign="top" class="Year1 border_left">17</td>
											<td width="167" height="0" align="center" valign="top" class="Year1">32</td>
											<td width="105" height="0" align="center" valign="top" class="Year1">35</td>
											<td width="157" height="0" align="center" valign="top" class="Year1">1540</td>
										</tr>
									</tbody>
								</table>
								<table class="table">
									<tbody>
										<tr>
											<td align="left" class="Year border_bottom_right border_top_left"><strong>Pass (50% concession) </strong></td>
										</tr>
										<table class="table">
											<tbody>
												<tr>
													<td width="74" height="24" align="center" bgcolor="#EEEEEE" class="Year border_top_left border_bottom_right">Stage</td>
													<td width="167" height="24" align="center" bgcolor="#EEEEEE" class="Year border_top_left border_bottom_right">Km.</td>
													<td width="105" height="24" align="center" bgcolor="#EEEEEE" class="Year border_bottom_right border_top">Ticket Rates (Rs.)</td>
													<td width="157" height="24" align="center" bgcolor="#EEEEEE" class="Year border_bottom_right border_top">Pass Rates (Rs.)</td>
												</tr>
												<tr>
													<td width="74" height="0" align="center" valign="top" class="Year1 border_left">1</td>
													<td width="167" height="0" align="center" valign="top" class="Year1">0</td>
													<td width="105" height="0" align="center" valign="top" class="Year1">0</td>
													<td width="157" height="0" align="center" valign="top" class="Year1">0</td>
												</tr>
												<tr>
													<td width="74" height="0" align="center" valign="top" class="Year1 border_left">2</td>
													<td width="167" height="0" align="center" valign="top" class="Year1">2</td>
													<td width="105" height="0" align="center" valign="top" class="Year1">5</td>
													<td width="157" height="0" align="center" valign="top" class="Year1">150</td>
												</tr>
												<tr>
													<td width="74" height="0" align="center" valign="top" class="Year1 border_left">3</td>
													<td width="167" height="0" align="center" valign="top" class="Year1">4</td>
													<td width="105" height="0" align="center" valign="top" class="Year1">10</td>
													<td width="157" height="0" align="center" valign="top" class="Year1">300</td>
												</tr>
												<tr>
													<td width="74" height="0" align="center" valign="top" class="Year1 border_left">4</td>
													<td width="167" height="0" align="center" valign="top" class="Year1">6</td>
													<td width="105" height="0" align="center" valign="top" class="Year1">10</td>
													<td width="157" height="0" align="center" valign="top" class="Year1">300</td>
												</tr>
												<tr>
													<td width="74" height="0" align="center" valign="top" class="Year1 border_left">5</td>
													<td width="167" height="0" align="center" valign="top" class="Year1">8</td>
													<td width="105" height="0" align="center" valign="top" class="Year1">15</td>
													<td width="157" height="0" align="center" valign="top" class="Year1">450</td>
												</tr>
												<tr>
													<td width="74" height="0" align="center" valign="top" class="Year1 border_left">6</td>
													<td width="167" height="0" align="center" valign="top" class="Year1">10</td>
													<td width="105" height="0" align="center" valign="top" class="Year1">15</td>
													<td width="157" height="0" align="center" valign="top" class="Year1">450</td>
												</tr>
												<tr>
													<td width="74" height="0" align="center" valign="top" class="Year1 border_left">7</td>
													<td width="167" height="0" align="center" valign="top" class="Year1">12</td>
													<td width="105" height="0" align="center" valign="top" class="Year1">20</td>
													<td width="157" height="0" align="center" valign="top" class="Year1">600</td>
												</tr>
												<tr>
													<td width="74" height="0" align="center" valign="top" class="Year1 border_left">8</td>
													<td width="167" height="0" align="center" valign="top" class="Year1">14</td>
													<td width="105" height="0" align="center" valign="top" class="Year1">20</td>
													<td width="157" height="0" align="center" valign="top" class="Year1">600</td>
												</tr>
												<tr>
													<td width="74" height="0" align="center" valign="top" class="Year1 border_left">9</td>
													<td width="167" height="0" align="center" valign="top" class="Year1">16</td>
													<td width="105" height="0" align="center" valign="top" class="Year1">25</td>
													<td width="157" height="0" align="center" valign="top" class="Year1">750</td>
												</tr>
												<tr>
													<td width="74" height="0" align="center" valign="top" class="Year1 border_left">10</td>
													<td width="167" height="0" align="center" valign="top" class="Year1">18</td>
													<td width="105" height="0" align="center" valign="top" class="Year1">25</td>
													<td width="157" height="0" align="center" valign="top" class="Year1">750</td>
												</tr>
												<tr>
													<td width="74" height="0" align="center" valign="top" class="Year1 border_left">11</td>
													<td width="167" height="0" align="center" valign="top" class="Year1">20</td>
													<td width="105" height="0" align="center" valign="top" class="Year1">25</td>
													<td width="157" height="0" align="center" valign="top" class="Year1">750</td>
												</tr>
											</tbody>
										</table>
										<table class="table">
											<tbody>
												<tr>
													<td align="left" class="Year border_bottom_right border_top_left">
														<strong>General Pass, Identity Card and Student pass, ETC </strong>
													</td>
												</tr>
												<table class="table">
													<tbody>
														<tr>
															<td width="74" height="24" align="center" bgcolor="#EEEEEE" class="Year border_top_left border_bottom_right">Sr. No.</td>
															<td width="74" height="24" align="center" bgcolor="#EEEEEE" class="Year border_top_left border_bottom_right">Type of Bus</td>
															<td width="74" height="24" align="center" bgcolor="#EEEEEE" class="Year border_top_left border_bottom_right">Cost (Rs.)</td>
														</tr>
														<tr>
															<td align="center" valign="top" class="Year1 border_left"><strong>1</strong></td>
															<td align="center" valign="top" class="Year1 border_left"><strong>Daily Pass (All Routes)</strong></td>
															<td align="center" valign="top" class="Year1 border_left"></td>
														</tr>
														<tr>
															<td align="center" valign="top" class="Year1 border_left">a)</td>
															<td align="center" valign="top" class="Year1 border_left">Within Municipal Limits</td>
															<td align="center" valign="top" class="Year1 border_left">70</td>
														</tr>
														<tr>
															<td align="center" valign="top" class="Year1 border_left">b)</td>
															<td align="center" valign="top" class="Year1 border_left">Outside Municipal Limits</td>
															<td align="center" valign="top" class="Year1 border_left">70</td>
														</tr>
														<tr>
															<td align="center" valign="top" class="Year1 border_left">c)</td>
															<td align="center" valign="top" class="Year1 border_left">Senior Citizen Daily Ticket</td>
															<td align="center" valign="top" class="Year1">40</td>
														</tr>
														<tr>
															<td align="center" valign="top" class="Year1 border_left">d)</td>
															<td align="center" valign="top" class="Year1 border_left">Weekly Pass (All routes)</td>
															<td align="center" valign="top" class="Year1">350</td>
														</tr>
														<tr>
															<td align="center" valign="top" class="Year1 border_left"><strong>2</strong> </td>
															<td align="center" valign="top" class="Year1 border_left"><strong>Monthly Pass</strong> </td>
															<td align="center" valign="top" class="Year1"></td>
														</tr>
														<tr>
															<td align="center" valign="top" class="Year1 border_left">a)</td>
															<td align="center" valign="top" class="Year1 border_left">General Students (50%) Concessional Monthly Route</td>
															<td align="center" valign="top" class="Year1 border_left">As per Ticket Rates</td>
														</tr>
														<tr>
															<td align="center" valign="top" class="Year1 border_left">b)</td>
															<td align="center" valign="top" class="Year1 border_left">Passenger Monthly Pass (22 days)</td>
															<td align="center" valign="top" class="Year1 border_left">As per Ticket Rates</td>
														</tr>
														<tr>
															<td align="center" valign="top" class="Year1 border_left"><strong>3</strong></td>
															<td align="center" valign="top" class="Year1 border_left"><strong>Monthly Pass (All routes)</strong></td>
															<td align="center" valign="top" class="Year1 border_left"></td>
														</tr>
														<tr>
															<td align="center" valign="top" class="Year1 border_left">a)</td>
															<td align="center" valign="top" class="Year1 border_left">Students Monthly Pass (Within Municipal limits)</td>
															<td align="center" valign="top" class="Year1 border_left">600</td>
														</tr>
														<tr>
															<td align="center" valign="top" class="Year1 border_left">b)</td>
															<td align="center" valign="top" class="Year1 border_left">Students Monthly Pass (Outside Municipal limits)</td>
															<td align="center" valign="top" class="Year1 border_left">750</td>
														</tr>
														<tr>
															<td align="center" valign="top" class="Year1 border_left">c)</td>
															<td align="center" valign="top" class="Year1 border_left">Senior Citizen Pass (Monthly)</td>
															<td align="center" valign="top" class="Year1 border_left">450</td>
														</tr>
														<tr>
															<td align="center" valign="top" class="Year1 border_left">d)</td>
															<td align="center" valign="top" class="Year1 border_left">Municipal Employees Pass (Monthly)</td>
															<td align="center" valign="top" class="Year1 border_left">700</td>
														</tr>
														<tr>
															<td align="center" valign="top" class="Year1 border_left">e)</td>
															<td align="center" valign="top" class="Year1 border_left">Both Municipal Limits (All routes)</td>
															<td align="center" valign="top" class="Year1 border_left">1200</td>
														</tr>
														<tr>
															<td align="center" valign="top" class="Year1 border_left">f)</td>
															<td align="center" valign="top" class="Year1 border_left">Outside both Municipal limits (All routes)</td>
															<td align="center" valign="top" class="Year1 border_left">1500</td>
														</tr>
														<tr>
															<td align="center" valign="top" class="Year1 border_left"><strong>4</strong></td>
															<td align="center" valign="top" class="Year1 border_left"><strong>Identity Cards for ‘A’ and ‘B’ category mentioned above</strong></td>
															<td align="center" valign="top" class="Year1 border_left">20</td>
														</tr>
														<tr>
															<td align="center" valign="top" class="Year1 border_left"><strong>5</strong></td>
															<td align="center" valign="top" class="Year1 border_left"><strong>Student pass Application form</strong></td>
															<td align="center" valign="top" class="Year1 border_left">5</td>
														</tr>
														<tr>
															<td align="center" valign="top" class="Year1 border_left"><strong>6</strong></td>
															<td align="center" valign="top" class="Year1 border_left"><strong>Student Identity Card</strong></td>
															<td align="center" valign="top" class="Year1 border_left">20</td>
														</tr>
														<tr>
															<td align="center" valign="top" class="Year1 border_left"><strong>7</strong></td>
															<td align="center" valign="top" class="Year1 border_left"><strong>Senior Citizen Form</strong></td>
															<td align="center" valign="top" class="Year1 border_left">5</td>
														</tr>
														<tr>
															<td align="center" valign="top" class="Year1 border_left"><strong>8</strong></td>
															<td align="center" valign="top" class="Year1 border_left"><strong>Senior Citizen Identity Card</strong></td>
															<td align="center" valign="top" class="Year1 border_left">20</td>
														</tr>
														<tr>
															<td align="center" class="Year1 border_left"><strong>9</strong></td>
															<td align="center" class="Year1 border_left"><strong>Pune Darshan Bus (Aaram / AC)</strong></td>
															<td align="center" class="Year1 border_left">500</td>
														</tr>
													</tbody>
												</table>
											</tbody>
										</table>
									</tbody>
								</table>
							</tbody>
						</table>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</asp:Content>
