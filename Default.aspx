<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>
<%@ Register TagPrefix="Head" TagName="header" Src="~/UserControl/TopHeader.ascx" %>
<%@ Register TagPrefix="Menu" TagName="myMenu" Src="~/UserControl/Menu.ascx" %>
	<head:header ID="MyHeader" runat="server" />

<script type="text/javascript">
    function OpenCalc() {
            document.getElementById("calc").style.display="inline"
    }
    function OpenCal() {
        document.getElementById("calendar").style.display = "inline"
    }
    $(function () {

        $("#TxtDate").datepicker();

    });


</script>

	<body>

		<div class="HeaderWrapper">
		
			<div class="HeaderImage">
				<img src="http://i722.photobucket.com/albums/ww224/damcat/HSLogoTransparent_zpsahpyp8kr.png" alt="Health Source Distributors Inc." height="35px" width="35px" >
			</div>
			
			<div class="HeaderText">
				<h3>Health Source Distributors LLC</h3>
			</div>
			
		</div>
                
		<menu:myMenu ID="Menu1" runat="server" />	
		        <div id="calc" style ="display:none;">
                        <FORM NAME="Calc">
                            <TABLE BORDER=4>
                            <tr><td colspan="4" style="text-align:right"><a href="javascript:closediv('calc')">Close</a></td></tr>
                            <TR>
                            <TD>
                            <INPUT TYPE="text"   NAME="Input" Size="16">
                            <br>
                            </TD>
                            </TR>
                            <TR>
                            <TD>
                            <INPUT TYPE="button" NAME="one"   VALUE="  1  " OnClick="Calc.Input.value += '1'">
                            <INPUT TYPE="button" NAME="two"   VALUE="  2  " OnCLick="Calc.Input.value += '2'">
                            <INPUT TYPE="button" NAME="three" VALUE="  3  " OnClick="Calc.Input.value += '3'">
                            <INPUT TYPE="button" NAME="plus"  VALUE="  +  " OnClick="Calc.Input.value += ' + '">
                            <br>
                            <INPUT TYPE="button" NAME="four"  VALUE="  4  " OnClick="Calc.Input.value += '4'">
                            <INPUT TYPE="button" NAME="five"  VALUE="  5  " OnCLick="Calc.Input.value += '5'">
                            <INPUT TYPE="button" NAME="six"   VALUE="  6  " OnClick="Calc.Input.value += '6'">
                            <INPUT TYPE="button" NAME="minus" VALUE="  -  " OnClick="Calc.Input.value += ' - '">
                            <br>
                            <INPUT TYPE="button" NAME="seven" VALUE="  7  " OnClick="Calc.Input.value += '7'">
                            <INPUT TYPE="button" NAME="eight" VALUE="  8  " OnCLick="Calc.Input.value += '8'">
                            <INPUT TYPE="button" NAME="nine"  VALUE="  9  " OnClick="Calc.Input.value += '9'">
                            <INPUT TYPE="button" NAME="times" VALUE="  x  " OnClick="Calc.Input.value += ' * '">
                            <br>
                            <INPUT TYPE="button" NAME="clear" VALUE="  c  " OnClick="Calc.Input.value = ''">
                            <INPUT TYPE="button" NAME="zero"  VALUE="  0  " OnClick="Calc.Input.value += '0'">
                            <INPUT TYPE="button" NAME="DoIt"  VALUE="  =  " OnClick="Calc.Input.value = eval(Calc.Input.value)">
                            <INPUT TYPE="button" NAME="div"   VALUE="  /  " OnClick="Calc.Input.value += ' / '">
                            <br>
                            </TD>
                            </TR>
                            </TABLE>
                            </FORM>
        </div>
		<form runat="server" id="form1">
            <div id="calendar" style="display:none ;">
                    <p style="text-align:right; width:300px;"><a href="javascript:closediv('calendar')">Close</a></p>
                    <input type="text" id="TxtDate" />
                </div>
		<div class="Container" id="cont" style="display:none;">
			<div class="AppWrapper">
			
				<div class="AppHeader" id="light1">
					Application
					<div class="Buttons">
						<button>-</button>
						<button onclick="closediv('light1'); closediv('cont');">x</button>
					</div>
				</div>
				<div class="App">
				
				</div>
			</div>
		</div>
		
		<div class="FooterWrapper">
			<div class="Footer">
				Teutonic v2.0
			</div>
		</div>
		</form>
	</body>

</html>
		
		
		