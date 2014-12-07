<!--#include file="db.asp"-->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- saved from url=(0014)about:internet -->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Garage İstanbul</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<style type="text/css">
td img {display: block;}body {
	background-color: #000000;
}
.style1 {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 10px;
	color: #666666;
}
.style2 {
	font-size: 14px;
	font-weight: bold;
	font-family: Verdana, Arial, Helvetica, sans-serif;
}
.style3 {
	font-family: Verdana, Arial, Helvetica, sans-serif;
	font-weight: bold;
	font-size: 11px;
}
.style5 {font-family: Arial, Helvetica, sans-serif; font-size: 11px; color: #666666; }
.style6 {font-size: 11px}
.style8 {font-family: Verdana, Arial, Helvetica, sans-serif}
.style9 {font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 10px; color: #666666; }
</style>
<!--Fireworks CS3 Dreamweaver CS3 target.  Created Wed Jan 16 15:15:51 GMT+0200 (GTB Standard Time) 2008-->
</head>
<body>
<table width="861" border="0" align="center" cellpadding="0" cellspacing="0" bordercolor="#D4D0C8" bgcolor="#EEEFF3">
<!-- fwtable fwsrc="garage_final-24-12-2007 copy.png" fwpage="Page 1" fwbase="garage.jpg" fwstyle="Dreamweaver" fwdocid = "205927945" fwnested="0" -->
  <tr>
   <td><img src="images/spacer.gif" width="7" height="1" border="0" alt="" /></td>
   <td><img src="images/spacer.gif" width="2" height="1" border="0" alt="" /></td>
   <td><img src="images/spacer.gif" width="2" height="1" border="0" alt="" /></td>
   <td><img src="images/spacer.gif" width="26" height="1" border="0" alt="" /></td>
   <td><img src="images/spacer.gif" width="182" height="1" border="0" alt="" /></td>
   <td><img src="images/spacer.gif" width="5" height="1" border="0" alt="" /></td>
   <td><img src="images/spacer.gif" width="4" height="1" border="0" alt="" /></td>
   <td><img src="images/spacer.gif" width="9" height="1" border="0" alt="" /></td>
   <td><img src="images/spacer.gif" width="322" height="1" border="0" alt="" /></td>
   <td><img src="images/spacer.gif" width="292" height="1" border="0" alt="" /></td>
   <td><img src="images/spacer.gif" width="10" height="1" border="0" alt="" /></td>
   <td><img src="images/spacer.gif" width="1" height="1" border="0" alt="" /></td>
  </tr>

  <tr>
   <td colspan="11"><img src="images/2-2.jpg" width="864" height="265" /></td>
   <td><img src="images/spacer.gif" width="1" height="75" border="0" alt="" /></td>
  </tr>
  <tr>
   <td colspan="8"><img name="garage_r2_c1" src="images/garage_r2_c1.jpg" width="237" height="10" border="0" id="garage_r2_c1" alt="" /></td>
   <td rowspan="4" colspan="3"><img src="images/garage_r2_c9.jpg" alt="" name="garage_r2_c9" width="624" height="31" border="0" usemap="#garage_r2_c9Map" id="garage_r2_c9" /></td>
   <td><img src="images/spacer.gif" width="1" height="10" border="0" alt="" /></td>
  </tr>
  <tr>
   <td colspan="7"><img name="garage_r3_c1" src="images/garage_r3_c1.jpg" width="228" height="6" border="0" id="garage_r3_c1" alt="" /></td>
   <td rowspan="28"><img name="garage_r3_c8" src="images/garage_r3_c8.jpg" width="9" height="1115" border="0" id="garage_r3_c8" alt="" /></td>
   <td><img src="images/spacer.gif" width="1" height="6" border="0" alt="" /></td>
  </tr>
  <tr>
   <td rowspan="12" colspan="2"><img name="garage_r4_c1" src="images/garage_r4_c1.jpg" width="9" height="557" border="0" id="garage_r4_c1" alt="" /></td>
   <td colspan="5" rowspan="5" background="images/garage_orta.jpg"><object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0" width="214" height="170">
     <param name="movie" value="garagel2.swf" />
     <param name="quality" value="high" />
     <embed src="garagel2.swf" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash" width="214" height="170"></embed>
   </object></td>
   <td><img src="images/spacer.gif" width="1" height="2" border="0" alt="" /></td>
  </tr>
  <tr>
   <td><img src="images/spacer.gif" width="1" height="13" border="0" alt="" /></td>
  </tr>
  <tr>
   <td colspan="2"><img name="garage_r6_c9" src="images/garage_r6_c9.jpg" width="614" height="4" border="0" id="garage_r6_c9" alt="" /></td>
   <td rowspan="19" background="images/garage_2.jpg">&nbsp;</td>
   <td><img src="images/spacer.gif" width="1" height="4" border="0" alt="" /></td>
  </tr>
  <tr>
   <td colspan="2" rowspan="18" valign="top" bgcolor="#EEEFF3"><span class="style2">Vitrin<br>
   <%
Set asdw = Server.CreateObject ("ADODB.RecordSet")
sql = "select * from tum where vitrin=true and fiyat order by id asc"
asdw.open sql,baglanti,1,3
if asdw.recordcount<>0 then
	mesajadet=asdw.Recordcount 
	sayfasayisi=15
	shf = Request.QueryString("shf")
	if shf < 0 or shf = 0 then shf = 1
	asdw.pagesize=sayfasayisi
	asdw.absolutepage = shf
	response.write "Toplam: " & mesajadet & " Kayit Var !<br>"
	Response.Write "<table width=""615"" border=""0"" cellspacing=""0"" cellpadding=""0"">"
	for i=1 to asdw.pagesize/3
		if asdw.eof then exit for
		response.write "<tr>"
		for j=1 to 3
			if asdw.eof then exit for
			response.write "<td width=""615"" height=""124"" align=""center"">"
			response.write asdw("model") & "<br>"
			response.write "<img src=""" & asdw("resimlink") & """ width=""130"" height=""120""><br>"
			response.write asdw("fiyat") & "<br>"
			response.write "<a href=""aracdetay.asp?id=" & asdw("id") & """>Detaylar</a>"
			response.write "</td>"
			asdw.movenext
		next
		response.write "</tr>"
	next
	response.write "</table>"
	asdw.close
	set asdw=nothing
end if

if mesajadet > sayfasayisi then response.write "<table align=""center"" border=""0"" cellspacing=""2"" cellpadding=""2""><tr><td><b>Sayfa: </b>"
if mesajadet/sayfasayisi = int(mesajadet/sayfasayisi) then sayfaadet = mesajadet/sayfasayisi else sayfaadet = int(mesajadet/sayfasayisi) +1
for p=0 to sayfaadet-1
	if sayfa = p+1 then
		abc = p+1
		if mesajadet > sayfasayisi then response.write space(1) & "(" & abc & ")"
	else
		avc = Request.servervariables("SCRIPT_NAME")
	end if
next
if mesajadet > sayfasayisi then response.write "</td></tr></table>"
%>  
   </span></td>
   <td><img src="images/spacer.gif" width="1" height="155" border="0" alt="" /></td>
  </tr>
  <tr>
   <td><img src="images/spacer.gif" width="1" height="3" border="0" alt="" /></td>
  </tr>
  <tr>
   <td colspan="5" bgcolor="#EEEFF3"><img name="garage_r9_c3" src="images/garage_r9_c3.jpg" width="219" height="29" border="0" id="garage_r9_c3" alt="" /></td>
   <td><img src="images/spacer.gif" width="1" height="29" border="0" alt="" /></td>
  </tr>
  <tr>
   <td colspan="5" bgcolor="#EEEFF3"><img name="garage_r10_c3" src="images/garage_r10_c3.jpg" width="219" height="25" border="0" id="garage_r10_c3" alt="" /></td>
   <td><img src="images/spacer.gif" width="1" height="25" border="0" alt="" /></td>
  </tr>
  <tr>
   <td colspan="5" bgcolor="#EEEFF3"><%
Set firsat = Server.CreateObject ("ADODB.RecordSet")
sql = " Select * from tum where firsat=true"
firsat.open sql,baglanti,1,3
%>
<center><a href="aracdetay.asp?id=<%=firsat("id")%>"><img src="<%=firsat("resimlink")%>" width="150" height="140" border="0"></a><span class="style3">Marka:</span><span class="style9"></span><span class="style1"><%=firsat("marka")%>&nbsp;</span><br>
    <span class="style6"><span class="style8"><strong>Model</strong>:</span></span><span class="style9"></span><span class="style1"><%=firsat("model")%>&nbsp;</span><br>
  <span class="style3">Fiyat:</span><span class="style5"></span><span class="style1"><%=firsat("fiyat")%>&nbsp;
  </span>
</center></td>
   <td><img src="images/spacer.gif" width="1" height="166" border="0" alt="" /></td>
  </tr>
  <tr>
   <td colspan="5"><img name="garage_r12_c3" src="images/garage_r12_c3.jpg" width="219" height="5" border="0" id="garage_r12_c3" alt="" /></td>
   <td><img src="images/spacer.gif" width="1" height="5" border="0" alt="" /></td>
  </tr>
  <tr>
   <td colspan="5"><img name="garage_r13_c3" src="images/garage_r13_c3.jpg" width="219" height="12" border="0" id="garage_r13_c3" alt="" /></td>
   <td><img src="images/spacer.gif" width="1" height="12" border="0" alt="" /></td>
  </tr>
  <tr>
   <td colspan="5"><img name="garage_r14_c3" src="images/garage_r14_c3.jpg" width="219" height="22" border="0" id="garage_r14_c3" alt="" /></td>
   <td><img src="images/spacer.gif" width="1" height="22" border="0" alt="" /></td>
  </tr>
  <tr>
   <td colspan="5" background="images/garage_orta.jpg">   <form action="ara.asp" method="post">
   <table width="221" border="0" cellspacing="0" cellpadding="0">
     <tr>
       <td width="84" class="style3">Marka</td>
       <td width="10" class="style3">:</td>
                                <td colspan="5" class="Text_baslik"><%set eklerim=server.CreateObject("adodb.recordset")
										sql="SELECT * FROM marka"
										eklerim.open sql,baglanti,1,3%>
										  <select name="marka" class="style2" id="select5">
										  <%eklerim.pagesize = 15
										for i=1 to eklerim.pagesize
										if eklerim.eof then exit for%>
                                          
										  
                                          <option value="<%=eklerim("marka")%>"><%=eklerim("marka")%></option>
										  <%eklerim.movenext
										  next
										 
										  
										  
										  %>
                                </select>&nbsp;</td>
     </tr>
     <tr>
       <td>&nbsp;</td>
       <td>&nbsp;</td>
       <td><input type="submit" name="Submit2" value="ARA" /></td>
     </tr>
   </table>
   
   </form>
   
   </td>
   <td><img src="images/spacer.gif" width="1" height="121" border="0" alt="" /></td>
  </tr>
  <tr>
   <td rowspan="15"><img name="garage_r16_c1" src="images/garage_r16_c1.jpg" width="7" height="552" border="0" id="garage_r16_c1" alt="" /></td>
   <td colspan="6"><img name="garage_r16_c2" src="images/garage_r16_c2.jpg" width="221" height="7" border="0" id="garage_r16_c2" alt="" /></td>
   <td><img src="images/spacer.gif" width="1" height="7" border="0" alt="" /></td>
  </tr>
  <tr>
   <td colspan="6"><img name="garage_r17_c2" src="images/garage_r17_c2.jpg" width="221" height="11" border="0" id="garage_r17_c2" alt="" /></td>
   <td><img src="images/spacer.gif" width="1" height="11" border="0" alt="" /></td>
  </tr>
  <tr>
   <td rowspan="13"><img name="garage_r18_c2" src="images/garage_r18_c2.jpg" width="2" height="534" border="0" id="garage_r18_c2" alt="" /></td>
   <td colspan="5"><img name="garage_r18_c3" src="images/garage_r18_c3.jpg" width="219" height="25" border="0" id="garage_r18_c3" alt="" /></td>
   <td><img src="images/spacer.gif" width="1" height="25" border="0" alt="" /></td>
  </tr>
  <tr>
   <td colspan="5" background="images/garage_orta.jpg"><iframe src="son5arac.htm" name="1" width="219" marginwidth="1" height="100
   
	" marginheight="1" frameborder="0" id="1"   border="0"> Tarayıcı iframe desteklemiyor. </iframe></td>
   <td><img src="images/spacer.gif" width="1" height="104" border="0" alt="" /></td>
  </tr>
  <tr>
   <td colspan="5"><img name="garage_r20_c3" src="images/garage_r20_c3.jpg" width="219" height="6" border="0" id="garage_r20_c3" alt="" /></td>
   <td><img src="images/spacer.gif" width="1" height="6" border="0" alt="" /></td>
  </tr>
  <tr>
   <td colspan="5"><img name="garage_r21_c3" src="images/garage_r21_c3.jpg" width="219" height="7" border="0" id="garage_r21_c3" alt="" /></td>
   <td><img src="images/spacer.gif" width="1" height="7" border="0" alt="" /></td>
  </tr>
  <tr>
   <td colspan="5"><img name="garage_r22_c3" src="images/garage_r22_c3.jpg" width="219" height="24" border="0" id="garage_r22_c3" alt="" /></td>
   <td><img src="images/spacer.gif" width="1" height="24" border="0" alt="" /></td>
  </tr>
  <tr>
   <td colspan="5" rowspan="4" background="images/garage_orta.jpg">
   
   
   
   
   <form action="iletisimkaydet.asp" method="post">
     <table width="221" border="0" cellspacing="0" cellpadding="0">
       <tr class="style1">
         <td width="72">Adınız</td>
         <td width="10">:</td>
         <td width="139"><input name="ad" type="text" id="ad" /></td>
       </tr>
       <tr class="style1">
         <td>Konu</td>
         <td>:</td>
         <td><input name="baslik" type="text" id="baslik" /></td>
       </tr>
       <tr class="style1">
         <td>Mesaj</td>
         <td>:</td>
         <td><textarea name="mesaj" cols="15" id="mesaj"></textarea></td>
       </tr>
       <tr class="style1">
         <td colspan="3"><input type="submit" name="Submit" value="Gönder" /></td>
        </tr>
     </table> 
	 
	 </form>
     <br></td>
   <td><img src="images/spacer.gif" width="1" height="30" border="0" alt="" /></td>
  </tr>
  <tr>
   <td><img src="images/spacer.gif" width="1" height="97" border="0" alt="" /></td>
  </tr>
  <tr>
   <td rowspan="6" bgcolor="#000000">&nbsp;</td>
   <td colspan="2"><img name="garage_r25_c10" src="images/garage_r25_c10.jpg" width="302" height="21" border="0" id="garage_r25_c10" alt="" /></td>
   <td rowspan="6" bgcolor="#000000"><img src="images/spacer.gif" width="1" height="21" border="0" alt="" /><img src="images/spacer.gif" width="1" height="43" border="0" alt="" /><img src="images/spacer.gif" width="1" height="9" border="0" alt="" /><img src="images/spacer.gif" width="1" height="13" border="0" alt="" /><img src="images/spacer.gif" width="1" height="25" border="0" alt="" /><img src="images/spacer.gif" width="1" height="130" border="0" alt="" /></td>
  </tr>
  <tr>
   <td colspan="2" rowspan="5" bgcolor="#000000">&nbsp;</td>
  </tr>
  <tr>
   <td colspan="5"><img name="garage_r27_c3" src="images/garage_r27_c3.jpg" width="219" height="9" border="0" id="garage_r27_c3" alt="" /></td>
  </tr>
  <tr>
   <td colspan="5"><img name="garage_r28_c3" src="images/garage_r28_c3.jpg" width="219" height="13" border="0" id="garage_r28_c3" alt="" /></td>
  </tr>
  <tr>
   <td colspan="5"><img name="garage_r29_c3" src="images/garage_r29_c3.jpg" width="219" height="25" border="0" id="garage_r29_c3" alt="" /></td>
  </tr>
  <tr>
   <td colspan="2"><img name="garage_r30_c3" src="images/garage_r30_c3.jpg" width="28" height="130" border="0" id="garage_r30_c3" alt="" /></td>
   <td><img name="garage_r30_c5" src="images/garage_r30_c5.jpg" width="182" height="130" border="0" id="garage_r30_c5" alt="" /></td>
   <td colspan="2"><img name="garage_r30_c6" src="images/garage_r30_c6.jpg" width="9" height="130" border="0" id="garage_r30_c6" alt="" /></td>
  </tr>
</table>

<map name="garage_r2_c9Map" id="garage_r2_c9Map">
<area shape="rect" coords="14,6,76,26" href="default.asp" />
<area shape="rect" coords="86,8,167,25" href="hakkimizda.htm" />
<area shape="rect" coords="177,6,261,24" href="0km.asp" />
<area shape="rect" coords="274,5,355,24" href="2el.asp" />
<area shape="rect" coords="364,6,434,25" href="rentacar.htm" />
<area shape="rect" coords="446,5,537,26" href="misyonsigorta.htm" />
<area shape="rect" coords="558,5,612,25" href="iletisim.htm" />
</map></body>
</html>
