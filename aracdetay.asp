<!--#include file="db.asp"-->
<script language="JavaScript">
	function openWindow(url, w, h)
		{
			var windowprops = "width=" + w + ",height=" + h;
			popup = window.open(url,'remote',windowprops);
		}
		
		function MM_openBrWindow(theURL,winName,features) { //v2.0
  window.open(theURL,winName,features);
}
           </script>
<SCRIPT>
			var hangiform = 1;
			var GosterimHizi = 3900;
			var GecisHizi = 3;
			var ResimSuAn = 1;
			var ResimSayisi = 0;
			
			var Resim = new Array(); 
			 

			Resim[1]  = 'arabalar/audia5-1.jpg';
			ResimSayisi = ResimSayisi + 1;
	
			Resim[2]  = 'arabalar/audia5-2.jpg';
			ResimSayisi = ResimSayisi + 1;
	
			Resim[3]  = 'arabalar/audia5-3.jpg';
			ResimSayisi = ResimSayisi + 1;
			
			Resim[4]  = 'arabalar/audia5-4.jpg';
			ResimSayisi = ResimSayisi + 1;
			
			Resim[5]  = 'arabalar/audia5-5.jpg';
			ResimSayisi = ResimSayisi + 1;
	
	Resim[6]  = 'arabalar/audia8-6.jpg';
			ResimSayisi = ResimSayisi + 1;
	
			Resim[7]  = 'arabalar/alfa146-7.jpg';
			ResimSayisi = ResimSayisi + 1;
	
			Resim[8]  = 'arabalar/alfa146-8.jpg';
			ResimSayisi = ResimSayisi + 1;
			
			Resim[9]  = 'arabalar/alfa146-9.jpg';
			ResimSayisi = ResimSayisi + 1;
			
			
				
			
			
			var tss;
			var iss;
			var jss = 1;
			var pss = Resim.length-1;
			var calisma = true;
			
			
			var preLoad = new Array();
			for (iss = 1; iss < pss+1; iss++){
			preLoad[iss] = new Image();
			preLoad[iss].src = Resim[iss];
			}
			
			
			
			function fotograflar() 
			{
				document.all.table3.style.display="";
				document.all.table4.style.display="none";
				document.all.td1.style.backgroundColor="#f5f5f5";
				document.all.td2.style.backgroundColor="#ffffff";
			}
			
			
			function thomTemizle()
			{
				if (ResimSayisi > 1)
				{
					for(i=1;i<=9;i++)
					eval("document.all.thom" + i + ".style.backgroundColor='#f2f4f7';");
				}
			}
			
			function sunumcalistir(){
			if (calisma)
			{
			if (document.all){
			document.images.ResimKutusu.style.filter="blendTrans(duration=2)";
			document.images.ResimKutusu.style.filter="blendTrans(duration=GecisHizi)";
			document.images.ResimKutusu.filters.blendTrans.Apply();}
			document.images.ResimKutusu.src = preLoad[jss].src;
			if (document.all) 
			document.images.ResimKutusu.filters.blendTrans.Play();
			thomTemizle();
			if (ResimSayisi > 1)
			{
			eval("document.all.thom" + jss + ".style.backgroundColor='#b0c4de';");
			}
			jss = jss + 1;
			if (jss > (pss)) jss=1;
			
				tss = setTimeout('sunumcalistir()', GosterimHizi);
			}
			}
			
			function sunum()
			{
			if (calisma == true)
				{
				calisma = false;
				}
			else
				{
				calisma = true;
				sunumcalistir();
				}
			}
			
			function ResimGosterme2(x)
			{
				if (x == "1")
				{
					if (ResimSuAn<ResimSayisi)
					{
					ResimGosterme(ResimSuAn+1);
					}
					else
					{
					ResimGosterme(1);
					}
					
				}
				
				if (x == "2")
				{
					if (ResimSuAn==1)
					{
					ResimGosterme(ResimSayisi);
					}
					else
					{
					ResimGosterme(ResimSuAn-1);
					}
					
				}
				
			}
			
			function ResimGosterme(x){
			if (document.all){
			thomTemizle();
			if (ResimSayisi > 1)
			{
			eval("document.all.thom" + x + ".style.backgroundColor='#b0c4de';");
			}
			ResimSuAn = x;
			document.images.ResimKutusu.style.filter="blendTrans(duration=2)";
			document.images.ResimKutusu.style.filter="blendTrans(duration=GecisHizi)";
			document.images.ResimKutusu.filters.blendTrans.Apply();}
			document.images.ResimKutusu.src = preLoad[x].src;
			
			if (document.all) document.images.ResimKutusu.filters.blendTrans.Play();
			tss=0;
			}
		
		</SCRIPT>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- saved from url=(0014)about:internet -->
<html xmlns="http://www.w3.org/1999/xhtml"><head>
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
	font-family: Arial, Helvetica, sans-serif;
	font-weight: bold;
	font-size: 10px;
	color: #333333;
}
.style3 {font-family: Arial, Helvetica, sans-serif}
.style6 {font-size: 10px}
.style10 {font-family: Arial, Helvetica, sans-serif; font-size: 10px; color: #333333; }
.style11 {color: #333333}
.style14 {color: #333333; font-weight: bold; }
.style18 {font-family: Arial, Helvetica, sans-serif; font-size: 12px; }
.style19 {
	font-size: 11px;
	font-weight: bold;
}
</style>
<!--Fireworks CS3 Dreamweaver CS3 target.  Created Wed Jan 16 15:15:51 GMT+0200 (GTB Standard Time) 2008-->
</head>
<BODY lang=tr onload=sunumcalistir(); background="ab_12.gif">
<table  background="images/garage_r21_c3.jpg" width="861" border="0" align="center" cellpadding="0" cellspacing="0">
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
   <td colspan="11"><img src="images/2-2.jpg" width="857" height="265" /></td>
   <td><img src="images/spacer.gif" width="1" height="75" border="0" alt="" /></td>
  </tr>
  <tr>
   <td colspan="8"><img name="garage_r2_c1" src="images/garage_r2_c1.jpg" width="237" height="10" border="0" id="garage_r2_c1" alt="" /></td>
   <td rowspan="4" colspan="3"><img src="images/garage_r2_c9.jpg" alt="" name="garage_r2_c9" width="624" height="31" border="0" usemap="#garage_r2_c9Map" id="garage_r2_c9" /></td>
   <td><img src="images/spacer.gif" width="1" height="10" border="0" alt="" /></td>
  </tr>
  <tr>
   <td colspan="7"><img name="garage_r3_c1" src="images/garage_r3_c1.jpg" width="228" height="6" border="0" id="garage_r3_c1" alt="" /></td>
   <td rowspan="28" background="images/garage3_r3_c8.jpg">&nbsp;</td>
   <td><img src="images/spacer.gif" width="1" height="6" border="0" alt="" /></td>
  </tr>
  <tr>
   <td colspan="2" rowspan="12" background="images/garage_r4_c1.jpg">&nbsp;</td>
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
   <td valign="top" colspan="2" rowspan="18" bgcolor="#EEEFF3"><table class="ntext" id="Table1" border="0" width="100%">
     <tbody>
       <tr>
         <td align="center" valign="top"><script type="text/javascript">
						function switchpic(othis){
							   if (document.all){
							      document.images.slideshowarea.style.filter="blendTrans(duration=1)"
							      document.images.slideshowarea.filters.blendTrans.Apply()      
							   }
							   document.images.slideshowarea.src = 'img_advert/resized/' + othis
							   
							   if (document.all){
							      document.images.slideshowarea.filters.blendTrans.Play()
							   }
							}
					</script>
					 <SCRIPT language=JavaScript type=text/JavaScript>
														
															document.images.thm1.src = preLoad[1].src;
														
															document.images.thm2.src = preLoad[2].src;
														
															document.images.thm3.src = preLoad[3].src;
															
															document.images.thm4.src = preLoad[4].src;
															
															document.images.thm5.src = preLoad[5].src;
														
														document.images.thm6.src = preLoad[6].src;
														
															document.images.thm7.src = preLoad[7].src;
														
															document.images.thm8.src = preLoad[8].src;
															
															document.images.thm9.src = preLoad[9].src;
															
											
													</SCRIPT>
													<%   if Not IsNumeric(REQUEST.QUERYSTRING("id" ) ) THEN
													response.write "<center>Girdiğiniz id Numarası geçersizdir<br>Lütfen Geçerli bir id numarası girin</center>"
													response.end
													end if
													
													dim id
													id=request.querystring("id") 
													Set ekle = Server.CreateObject ("ADODB.RecordSet")
													sql = " Select * from tum where id=" & id
													ekle.open sql,baglanti,1,3
													ekle.update
													ekle("hit")=ekle("hit")+1
													ekle.update
													%>
             <table border="0" cellpadding="0" cellspacing="0" width="100%">
               <tbody>
                 <tr>
                   <td>&nbsp;<span class="style14"><%=ekle("Marka")%> &nbsp;<%=ekle("Model")%> </span>
                     <table bgcolor="#000000" border="0" cellpadding="1" cellspacing="0">
                         <tbody>
                           <tr>
                             <td height="321"> 
<IMG src="<%=ekle("resimlink1")%>" 
              name=ResimKutusu width="400" height="300" id=ResimKutusu></tr>
                         </tbody>
                     </table></td>
                 </tr>
               </tbody>
             </table>
             <table width="102%" height="169" border="0" cellspacing="1" bordercolor="#111111" id="AutoNumber5" style="border-collapse: collapse">
               <tr>
                 <td width="80%" colspan="2"><p align="center"><b> <font face="Tahoma" style="font-size: 8pt" color="#000000"> Resim Slaytla G&ouml;r&uuml;ns&uuml;n</font><font size="2" color="#000000"> </font> </b>&nbsp;
                         <input 
                        onclick="sunum();" type="checkbox" value="checkbox" 
                        name="checkbox" />
                 </p></td>
               </tr>
               <tr>
                 <td width="100%" height="145"><table cellspacing="0" cellpadding="0" width="100%" border="0" style="border-collapse: collapse" bordercolor="#111111">
                     <tbody>
                       <tr align="middle">
                         <td class="e" bgcolor="#FFFFFF"><div align="center"><a class="e" 
                        href="javascript:document.all.checkbox.checked=false;jss=1;calisma=false;ResimGosterme(1);"> <img 
                        src="<%=ekle("resimlink2")%>" name="thm1" width="64" height="48" 
                        border="0" 
                        id="thm1" /> </a></div></td>
                         <td class="e" bgcolor="#FFFFFF"><div align="center"><a class="e" 
                        href="javascript:document.all.checkbox.checked=false;jss=2;calisma=false;ResimGosterme(2);"> <img 
                        src="<%=ekle("resimlink3")%>" name="thm2" width="64" height="48" 
                        border="0" 
                        id="thm2" /> </a></div></td>
                         <td class="e" bgcolor="#FFFFFF"><div align="center"><a class="e" 
                        href="javascript:document.all.checkbox.checked=false;jss=3;calisma=false;ResimGosterme(3);"> <img 
                        src="<%=ekle("resimlink3")%>" name="thm3" width="64" height="48" 
                        border="0" 
                        id="thm3" /> </a></div></td>
                         <td bgcolor="#FFFFFF" class="e"><div align="center"><a class="e" 
                        href="javascript:document.all.checkbox.checked=false;jss=4;calisma=false;ResimGosterme(4);"> <img
                        src="<%=ekle("resimlink4")%>" name="thm4" width="64" height="48" 
                        border="0" 
                        id="thm4" /> </a></div></td>
                         <td bgcolor="#FFFFFF" class="e"><div align="center"><a class="e" 
                        href="javascript:document.all.checkbox.checked=false;jss=5;calisma=false;ResimGosterme(5);"> <img
                        src="<%=ekle("resimlink5")%>" name="thm5" width="64" height="48" 
                        border="0" 
                        id="thm5" /></a></div></td>
                       </tr>
                     </tbody>
                 </table><br>
<table cellspacing="0" cellpadding="0" width="100%" border="0" style="border-collapse: collapse" bordercolor="#111111">
                     <tbody>
                       <tr align="middle">
                         <td class="e" bgcolor="#FFFFFF"><div align="center"><a class="e" 
                        href="javascript:document.all.checkbox.checked=false;jss=1;calisma=false;ResimGosterme(1);"> <img 
                        src="<%=ekle("resimlink6")%>" name="thm1" width="64" height="48" 
                        border="0" 
                        id="thm1" /> </a></div></td>
                         <td class="e" bgcolor="#FFFFFF"><div align="center"><a class="e" 
                        href="javascript:document.all.checkbox.checked=false;jss=2;calisma=false;ResimGosterme(2);"> <img 
                        src="<%=ekle("resimlink7")%>" name="thm2" width="64" height="48" 
                        border="0" 
                        id="thm2" /> </a></div></td>
                         <td class="e" bgcolor="#FFFFFF"><div align="center"><a class="e" 
                        href="javascript:document.all.checkbox.checked=false;jss=3;calisma=false;ResimGosterme(3);"> <img 
                        src="<%=ekle("resimlink8")%>" name="thm3" width="64" height="48" 
                        border="0" 
                        id="thm3" /> </a></div></td>
                         <td bgcolor="#FFFFFF" class="e"><div align="center"><a class="e" 
                        href="javascript:document.all.checkbox.checked=false;jss=4;calisma=false;ResimGosterme(4);"> <img
                        src="<%=ekle("resimlink9")%>" name="thm4" width="64" height="48" 
                        border="0" 
                        id="thm4" /> </a></div></td>
                         <td bgcolor="#FFFFFF" class="e"><div align="center"><a class="e" 
                        href="javascript:document.all.checkbox.checked=false;jss=5;calisma=false;ResimGosterme(5);"> <img
                        src="<%=ekle("resimlink10")%>" name="thm5" width="64" height="48" 
                        border="0" 
                        id="thm5" /></a></div></td>
                       </tr>
                     </tbody>
                 </table>                  </td>
               </tr>
             </table>
             <p>&nbsp;</p>
           <p>&nbsp;</p></td>
         <td height="255" valign="top" width="291"><table border="0" cellpadding="0" cellspacing="0" width="100%">
             <tbody>
               <tr>
                 <td bgcolor="#dbe0e3"><table class="ntext" id="Table2" border="0" cellpadding="3" cellspacing="1" width="100%">
                     <tbody>
                       <tr bgcolor="#ffffff">
                         <td class="bold"><span class="style2">Araç Detayları </span></td>
                       </tr>
                       <tr bgcolor="#ffffff">
                         <td align="left"><span class="style10"><b> Marka : <b><b><%=ekle("Marka")%></b></b></b></span></td>
                       </tr>
                       <tr bgcolor="#ffffff">
                         <td><span class="style10"><b> Model : <b><b><%=ekle("Model")%></b></b></b></span></td>
                       </tr>
                       <tr bgcolor="#ffffff">
                         <td><span class="style10"><b> Model Yılı :<b><b><%=ekle("yil")%></b></b></b></span></td>
                       </tr>
                       <tr bgcolor="#ffffff">
                         <td><span class="style10"><b> Kilometre : <b><b><%=ekle("yil")%></b></b></b></span></td>
                       </tr>
                       <tr bgcolor="#ffffff">
                         <td><p class="style10"><b> Renk : </b><b><b><%=ekle("renk")%></b></b></p>
                           </td>
                       </tr>
                       <tr bgcolor="#ffffff">
                         <td><span class="style10"><b> Motor Hacmi : <b><b><%=ekle("renk")%></b></b></b></span></td>
                       </tr>
					    <tr bgcolor="#ffffff">
                         <td><span class="style10"><b> Motor Gücü / Beygir :<b><b><%=ekle("m_guc")%></b></b></b></span></td>
					 </tr>
                       <tr bgcolor="#ffffff">
                         <td><span class="style10"><b> Vites : <b><b><b><%=ekle("vites")%></b></b></b></b></span></td> 
                       </tr>
                       <tr bgcolor="#ffffff">
                         <td><span class="style10"><b> Kasa Tipi: <b><b><%=ekle("Aractipi")%></b></b></b></span></td>
					   </tr>
                       <tr bgcolor="#ffffff">
                         <td><p class="style10"><b> Yakıt Tipi: <b><b><%=ekle("yakit")%></b></b></b></p>                           </td>
                       </tr>
                       <tr bgcolor="#ffffff">
                         <td class="style10">İncelenme Sayısı: <b><b><b><%=ekle("hit")%></b></b></b></td>
                       </tr>
                       <tr bgcolor="#ffffff">
                         <td class="bold"><span class="style10"><b>Diğer Özellikleri</b></span></td>
                       </tr>
                       <tr bgcolor="#ffffff">
                         <td><%if ekle("otomatikvites")=true then%>
						 - Otomatik Vites
						 <%else
						 end if%>
						  <%if ekle("abs")=true then%>
						 - ABS 
						 <%else
						 end if%>
						 <%if ekle("eps")=true then%>
						 - ESP (Elektronik stabilite kontrolü)
						 <%else
						 end if%>
						 <%if ekle("surucuairbag")=true then%>
						 - Sürücü Airbag 
						 <%else
						 end if%>
						<%if ekle("yolbilgisayari")=true then%>
						- Yol bilgisayari 
						 <%else
						 end if%>
						 <%if ekle("alarm")=true then%>
						- Alarm 
						 <%else
						 end if%>
						 <%if ekle("sanziman")=true then%>
						- Tiptronic sanziman  
						 <%else
						 end if%>
						 <%if ekle("acilirtavan")=true then%>
						 - Açılır tavan (Sun roof) 
						 <%else
						 end if%>
						 <%if ekle("merkezikilit")=true then%>
						 - Merkezi Kilit 
						 <%else
						 end if%>
						 <%if ekle("hizkontrolsistemi")=true then%>
						 - Sabit hız kontrol sistemi  
						 <%else
						 end if%>
						 <%if ekle("aliminyumjant")=true then%>
						 - Alüminyum alaşım jant 
						 <%else
						 end if%>
						 <%if ekle("diskfren")=true then%>
						 - Ö/A Disk Fren  
						 <%else
						 end if%>
						 <%if ekle("klima")=true then%>
						 - Klima  
						 <%else
						 end if%>
						 <%if ekle("hidrolikdireksiyon")=true then%>
						 - Hidrolik Direksiyon  
						 <%else
						 end if%>
						 <%if ekle("yolcuairbag")=true then%>
						 - Yolcu Airbag  
						 <%else
						 end if%>
						 <%if ekle("immobilizer")=true then%>
						 - Immobilizer  
						 <%else
						 end if%>
						 <%if ekle("derikoltuk")=true then%>
						 - Deri Koltuklar  
						 <%else
						 end if%>
						 <%if ekle("xenonfarlar")=true then%>
						 - Xenon Farlar  
						 <%else
						 end if%>
						 <%if ekle("yanairbag")=true then%>
						 - Yan Airbag  
						 <%else
						 end if%>
						 <%if ekle("cdcalar")=true then%>
						 - CD Çalar 
						 <%else
						 end if%>
						 <%if ekle("onsisfar")=true then%>
						 - Ön sis farları  
						 <%else
						 end if%>
						 <%if ekle("kumandalianahtar")=true then%>
						 - Uzaktan kumandalı anahtar  
						 <%else
						 end if%>
						 <%if ekle("navigasyon")=true then%>
						 - Nevigasyon 
						 <%else
						 end if%>
						 <%if ekle("elektriklikoltuk")=true then%>
						 - Elektrikli Koltuk  
						 <%else
						 end if%>
						 <%if ekle("elektriklikoltuk")=true then%>
						 - Hafızalı Elektrikli Koltuk  
						 <%else
						 end if%>
						 <%if ekle("parkmesafekontrol")=true then%>
						 - Park Mesafe Kontrol  
						 <%else
						 end if%>
						 <%if ekle("koltukisitma")=true then%>
						 - Koltuk ısıtma 
						 <%else
						 end if%>
						 <%if ekle("arkaperde")=true then%>
						 - Arka Perde  
						 <%else
						 end if%>
						 <%if ekle("katlanirayna")=true then%>
						 - Katlanır Ayna 
						 <%else
						 end if%>
						 <%if ekle("elektriklicamlar")=true then%>
						 - Elektrikli Camlar
						 <%else
						 end if%>
						 <%if ekle("radyocdcalar")=true then%>
						 - Radyo CD Çalar
						 <%else
						 end if%>
						 <%if ekle("tv")=true then%>
						 - TV
						 <%else
						 end if%>
						 <%if ekle("ebd")=true then%>
						 - EBD (eLEKTRONİK FREN DAGILIMI)
						 <%else
						 end if%>
						 <%if ekle("edl")=true then%>
						 - EDL (ELEKTRONIK DIFRANSIYEL KLIDI)
						 <%else
						 end if%>
						 <%if ekle("afu")=true then%>
						 - AFU (FREN DESTEK SİSTEMİ)
						 <%else
						 end if%>
						 <%if ekle("esr")=true then%>
						 - ESR (PATİNAJ ONLEME SİSTEMİ)
						 <%else
						 end if%>
						 <%if ekle("hidhold")=true then%>
						 - HİLD HOLD (Yokus kalkıs sistemi)
						 <%else
						 end if%>
</td>
                       </tr>
                       <tr bgcolor="#ffffff">
                         <td><span class="bold style3 style6 style11"><b>Ek Bilgiler</b></span><span class="style10"><br />
                           &nbsp;&nbsp; <%=ekle("ek_bilgi")%>                         </span></td>
                       </tr>
                       <tr bgcolor="#ffcc33">
                         <td bgcolor="#cccccc"><span class="bold style3 style6 style11"><b>Fiyat</b></span><span class="style10"><br />
                               <b><%=ekle("fiyat")%></b></span></td>
                       </tr>
                     </tbody>
                 </table></td>
               </tr>
             </tbody>
         </table></td>
       </tr>
     </tbody>
   </table></td>
   <td><img src="images/spacer.gif" width="1" height="155" border="0" alt="" /></td>
  </tr>
  <tr>
   <td><img src="images/spacer.gif" width="1" height="3" border="0" alt="" /></td>
  </tr>
  <tr>
   <td colspan="5" background="images/garage_r9_c3.jpg">&nbsp;</td>
   <td><img src="images/spacer.gif" width="1" height="29" border="0" alt="" /></td>
  </tr>
  <tr>
   <td colspan="5" background="images/garage_r21_c3.jpg"><img name="garage_r10_c3" src="images/garage_r10_c3.jpg" width="219" height="25" border="0" id="garage_r10_c3" alt="" /></td>
   <td><img src="images/spacer.gif" width="1" height="25" border="0" alt="" /></td>
  </tr>
  <tr>
    <td colspan="5" bgcolor="#EEEFF3"><%
Set firsat = Server.CreateObject ("ADODB.RecordSet")
sql = " Select * from tum where firsat=true"
firsat.open sql,baglanti,1,3
%>
<center><img src="<%=firsat("resimlink")%>" width="150" height="140" border="0"><span class="style18">Marka:</span><span class="style1"><%=firsat("marka")%>&nbsp;</span><br>
    <span class="style18">Model:</span><span class="style1"><%=firsat("model")%>&nbsp;</span><br>
    <span class="style18">Fiyat:</span><span class="style1"><%=firsat("fiyat")%>&nbsp;
  </span>
</center></td>
   <td><img src="images/spacer.gif" width="1" height="166" border="0" alt="" /></td>
  </tr>
  <tr>
   <td colspan="5" background="images/garage_r21_c3.jpg"><img name="garage_r12_c3" src="images/garage_r12_c3.jpg" width="219" height="5" border="0" id="garage_r12_c3" alt="" /></td>
   <td><img src="images/spacer.gif" width="1" height="5" border="0" alt="" /></td>
  </tr>
  <tr>
   <td colspan="5" background="images/garage_r13_c3.jpg">&nbsp;</td>
   <td><img src="images/spacer.gif" width="1" height="12" border="0" alt="" /></td>
  </tr>
  <tr>
   <td colspan="5" background="images/garage_r21_c3.jpg"><img name="garage_r14_c3" src="images/garage_r14_c3.jpg" width="219" height="22" border="0" id="garage_r14_c3" alt="" /></td>
   <td><img src="images/spacer.gif" width="1" height="22" border="0" alt="" /></td>
  </tr>
  <tr>
   <td colspan="5" background="images/garage_orta.jpg"><form action="ara.asp" method="post">
   <table width="221" border="0" cellspacing="0" cellpadding="0">
     <tr>
       <td width="84" class="style3"><span class="style19">Marka</span></td>
       <td width="10" class="style3"><span class="style19">:</span></td>
       <td width="127"><input name="marka" type="text" id="marka" /></td>
     </tr>
     <tr>
       <td>&nbsp;</td>
       <td>&nbsp;</td>
       <td><input type="submit" name="Submit2" value="ARA" /></td>
     </tr>
   </table>
   
   </form></td>
   <td><img src="images/spacer.gif" width="1" height="121" border="0" alt="" /></td>
  </tr>
  <tr>
   <td rowspan="15" background="images/garage_r4_c1.jpg">&nbsp;</td>
   <td colspan="6" background="images/garage_r21_c3.jpg"><img name="garage_r16_c2" src="images/garage_r16_c2.jpg" width="221" height="7" border="0" id="garage_r16_c2" alt="" /></td>
   <td><img src="images/spacer.gif" width="1" height="7" border="0" alt="" /></td>
  </tr>
  <tr>
   <td colspan="6"><img name="garage_r17_c2" src="images/garage_r17_c2.jpg" width="221" height="11" border="0" id="garage_r17_c2" alt="" /></td>
   <td><img src="images/spacer.gif" width="1" height="11" border="0" alt="" /></td>
  </tr>
  <tr>
   <td rowspan="13"><img name="garage_r18_c2" src="images/garage_r18_c2.jpg" width="2" height="534" border="0" id="garage_r18_c2" alt="" /></td>
   <td colspan="5" background="images/garage_r21_c3.jpg"><img name="garage_r18_c3" src="images/garage_r18_c3.jpg" width="219" height="25" border="0" id="garage_r18_c3" alt="" /></td>
   <td><img src="images/spacer.gif" width="1" height="25" border="0" alt="" /></td>
  </tr>
  <tr>
   <td colspan="5" background="images/garage_orta.jpg"><iframe src="son5arac.htm" name="1" width="219" marginwidth="1" height="100
   
	" marginheight="1" frameborder="0" id="1" scrolling="no"  border="0"> Tarayıcı iframe desteklemiyor. </iframe></td>
   <td><img src="images/spacer.gif" width="1" height="104" border="0" alt="" /></td>
  </tr>
  <tr>
   <td colspan="5" background="images/garage_r21_c3.jpg"><img name="garage_r20_c3" src="images/garage_r20_c3.jpg" width="219" height="6" border="0" id="garage_r20_c3" alt="" /></td>
   <td><img src="images/spacer.gif" width="1" height="6" border="0" alt="" /></td>
  </tr>
  <tr>
   <td colspan="5" background="images/garage_r21_c3.jpg">&nbsp;</td>
   <td><img src="images/spacer.gif" width="1" height="7" border="0" alt="" /></td>
  </tr>
  <tr>
   <td colspan="5" background="images/garage_r21_c3.jpg"><img name="garage_r22_c3" src="images/garage_r22_c3.jpg" width="219" height="24" border="0" id="garage_r22_c3" alt="" /></td>
   <td><img src="images/spacer.gif" width="1" height="24" border="0" alt="" /></td>
  </tr>
  <tr>
   <td colspan="5" rowspan="4" background="images/garage_orta.jpg"><span class="style10">Müşteri velinimetimizdir. </span>     <form action="iletisimkaydet.asp" method="post">
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
	 
    </form></td>
   <td><img src="images/spacer.gif" width="1" height="30" border="0" alt="" /></td>
  </tr>
  <tr>
   <td><img src="images/spacer.gif" width="1" height="97" border="0" alt="" /></td>
  </tr>
  <tr>
   <td rowspan="6">&nbsp;</td>
   <td colspan="2">&nbsp;</td>
   <td><img src="images/spacer.gif" width="1" height="21" border="0" alt="" /></td>
  </tr>
  <tr>
   <td rowspan="5" colspan="2"><p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p></td>
   <td><img src="images/spacer.gif" width="1" height="43" border="0" alt="" /></td>
  </tr>
  <tr>
   <td colspan="5"><img name="garage_r27_c3" src="images/garage_r27_c3.jpg" width="219" height="9" border="0" id="garage_r27_c3" alt="" /></td>
   <td><img src="images/spacer.gif" width="1" height="9" border="0" alt="" /></td>
  </tr>
  <tr>
   <td colspan="5"><img name="garage_r28_c3" src="images/garage_r28_c3.jpg" width="219" height="13" border="0" id="garage_r28_c3" alt="" /></td>
   <td><img src="images/spacer.gif" width="1" height="13" border="0" alt="" /></td>
  </tr>
  <tr>
   <td colspan="5" background="images/garage_r21_c3.jpg"><img name="garage_r29_c3" src="images/garage_r29_c3.jpg" width="219" height="25" border="0" id="garage_r29_c3" alt="" /></td>
   <td><img src="images/spacer.gif" width="1" height="25" border="0" alt="" /></td>
  </tr>
  <tr>
   <td colspan="2" background="images/garage_r21_c3.jpg">&nbsp;</td>
   <td><iframe src="faydali.htm" name="5" width="182" marginwidth="1" height="130
   
	" marginheight="1" frameborder="0" scrolling="no" id="1"   border="0"> Tarayıcı iframe desteklemiyor. </iframe></td>
   <td colspan="2"><img name="garage_r30_c6" src="images/garage_r30_c6.jpg" width="9" height="130" border="0" id="garage_r30_c6" alt="" /></td>
   <td><img src="images/spacer.gif" width="1" height="130" border="0" alt="" /></td>
  </tr>
</table>

<blockquote>&nbsp;	</blockquote>
<map name="garage_r2_c9Map" id="garage_r2_c9Map">
<area shape="rect" coords="14,6,76,26" href="default.asp" />
<area shape="rect" coords="86,8,167,25" href="hakkimizda.htm" />
<area shape="rect" coords="177,6,261,24" href="0km.asp" />
<area shape="rect" coords="274,5,355,24" href="2el.asp" />
<area shape="rect" coords="364,6,434,25" href="rentacar.htm" />
<area shape="rect" coords="446,5,537,26" href="misyonsigorta.htm" />
<area shape="rect" coords="558,5,612,25" href="iletisim.asp" />
</map>
</body>
</html>