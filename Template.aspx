<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Template.aspx.vb" Inherits="Template" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.8/jquery.min.js"></script>
    <link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/themes/smoothness/jquery-ui.css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/jquery-ui.min.js"></script> 
    <link href="Style/Style.css" rel="stylesheet" />
    <script src="Js/Main.js"></script>
    <script>
        function getcustomer(x)
        {
            document.getElementById("").value=""
        }
        function customers(x) {
            document.getElementById("customers").style.display = "inline"
            document.getElementById("over").style.display = "inline"
            AjaxCall("ajaxcustomers.aspx?proc=1&obj="+x,"customers")
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div id="over" class="black_overlay" style="display:none;"></div>
        <div id="customers" class="white_content" style="display:none;"></div>
    	<div class="Hdropdown_red_tab__menu">
		<ul>
			<li><a href="#" >File</a>
            <ul>
					<li><a href="#">Calculator</a></li>
					<li><a href="#">Calendar</a></li>
					<li><a href="#">Printer Setup</a></li>
					<li><a href="#">Close Window</a></li>
			   </ul>
            </li>
			<li><a href="#" id="edit" >Edit</a>
				<ul>
					<li><a href="#">Sources</a></li>
					<li><a href="Javascript:customers(4)">Customers</a></li>
					<li><a href="#">Product List</a></li>
					<li><a href="#">Reference Lists</a></li>
			   </ul>
		  </li>
			<li><a href="#">Activities</a>
                <ul>
                    <li><a href="#">Purchase Orders</a></li>
                    <li><a href="#">Offer Sheets</a></li>
                    <li><a href="#">Sales Orders</a></li>
                    <li><a href="#">Return Orders</a></li>
                    <li><a href="#">Quick Reference Viewer</a></li>
                    <li><a href="#">Receiving</a></li>
                    <li><a href="#">Shipping</a></li>
                    <li><a href="#">Price Update Utilities</a></li>
                    <li><a href="#">Website Inventory Export Utility</a></li>
                    <li><a href="#">Electronic Order Imort Utility</a></li>
                </ul>
          </li>
		   <li><a href="#">Reports</a>
                  <ul>
                    <li><a href="#">List Reports</a></li>
                    <li><a href="#">Inventory Reports</a></li>
                    <li><a href="#">Bim Management Reports</a></li>
                    <li><a href="#">Purchase Order Reports</a></li>
                    <li><a href="#">Sales Order Reports</a></li>
                    <li><a href="#">Pedigree Report</a></li>
                    <li><a href="#">Automated Import Log</a></li>
                    <li><a href="#">Daily Import Log</a></li>
                    <li><a href="#">Daily Shipping Report</a></li>
                    <li><a href="#">Executive Reports</a></li>
                    <li><a href="#">System Administrative Reports</a></li>
                </ul>
			</li>
            <li><a href="#">System</a>
                  <ul>
                    <li><a href="#">Change System Date</a></li>
                    <li><a href="#">System Administrator</a></li>
                    <li><a href="#">Error Manager</a></li>
                    <li><a href="#">Technical Information</a></li>
                    <li><a href="#">Suspend</a></li>
                    <li><a href="#">Trace</a></li>
                    <li><a href="#">Cancel</a></li>
                    <li><a href="#">Debug</a></li>
                    <li><a href="#">View</a></li>
               </ul>
			</li>
		</ul>
	</div>
    </form>
</body>
</html>
