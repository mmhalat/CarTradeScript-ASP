<!--#include file="db.asp"-->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1254"><title>Yönetim Paneli</title>
<link href="2el_files/css.htm" rel="stylesheet" type="text/css">
<link href="2el_files/yonetim.css" rel="stylesheet" type="text/css">
<style type="text/css">
<!--
.style1 {font-weight: bold}
body {
	background-image: url('images/yonetim_back.gif');
}
-->
</style>
<script type="text/JavaScript">
<!--
function MM_openBrWindow(theURL,winName,features) { //v2.0
  window.open(theURL,winName,features);
}
function ekleForm()
{

 if(document.ekle.TR_A1.value=="Belirtilmedi")
 {
  alert("Marka Seçiniz");
  document.ekle.TR_A1.focus();
  return false;
 }
 else{window.status = "";}


 if(document.ekle.TR_A2.value=="")
 {
  alert("Modeli Yazınız");
  document.ekle.TR_A2.focus();
  document.ekle.TR_A2.select();
  return false;
 }
 else{window.status = "";}

 if(document.ekle.TR_A12.value=="")
 {
  alert("Fiyatı Yazınız");
  document.ekle.TR_A12.focus();
  document.ekle.TR_A12.select();
  return false;
 }
 else{window.status = "";}
 }


function bilgiForm()
{

 if(document.bilgi.TR_A1.value=="Belirtilmedi")
 {
  alert("Marka Seçiniz");
  document.bilgi.TR_A1.focus();
  return false;
 }
 else{window.status = "";}


 if(document.bilgi.TR_A2.value=="")
 {
  alert("Modeli Yazınız");
  document.bilgi.TR_A2.focus();
  document.bilgi.TR_A2.select();
  return false;
 }
 else{window.status = "";}

 if(document.bilgi.TR_A12.value=="")
 {
  alert("Fiyatı Yazınız");
  document.bilgi.TR_A12.focus();
  document.bilgi.TR_A12.select();
  return false;
 }
 else{window.status = "";}
 }



function girisForm()
{

 if(document.giris.USER.value=="")
 {
  alert("Kullanıcı adınızı yazınız");
  document.giris.USER.focus();
  document.giris.USER.select();
  return false;
 }
 else{window.status = "";}


 if(document.giris.PASS.value=="")
 {
  alert("Yeni Şifrenizi yazınız");
  document.giris.PASS.focus();
  document.giris.PASS.select();
  return false;
 }
 else{window.status = "";}

 }
 
 function loginForm()
{

 if(document.login.USER.value=="")
 {
  alert("Kullanıcı adınızı yazınız");
  document.login.USER.focus();
  document.login.USER.select();
  return false;
 }
 else{window.status = "";}


 if(document.login.PASS.value=="")
 {
  alert("Şifrenizi yazınız");
  document.login.PASS.focus();
  document.login.PASS.select();
  return false;
 }
 else{window.status = "";}

 }
 
  function eklexForm()
{

 if(document.ekle.TR_A1.value=="")
 {
  alert("Türkçe Ürün Grubunu Giriniz");
  document.ekle.TR_A1.focus();
  document.ekle.TR_A1.select();
  return false;
 }
 else{window.status = "";}


 if(document.ekle.EN_A1.value=="")
 {
  alert("İngizlice Ürün Grubunu Giriniz");
  document.ekle.EN_A1.focus();
  document.ekle.EN_A1.select();
  return false;
 }
 else{window.status = "";}

 }
 
//-->
</script></head>
<body bgcolor="#D3D3D3">
<table align="center" border="0" cellpadding="0" cellspacing="0" width="600">
  <tbody><tr>
    <td colspan="3"><img src="2el_files/yonetim_tema_inndex_01.gif" height="24" width="700"></td>
  </tr>
  <tr>
    <td background="2el_files/yonetim_tema_inndex_02.gif"><img src="2el_files/yonetim_tema_inndex_02.gif" height="279" width="21"></td>
    <td bgcolor="#ffffff" valign="top"><table border="0" cellpadding="0" cellspacing="0" width="658">
      <tbody><tr>
        <td valign="top">&nbsp;</td>
      </tr>
      <tr>
        <td align="left" valign="top">
<!--#include file="menu.asp"-->

            

<table align="center" border="0" cellpadding="0" cellspacing="0" width="600">
  <form action="default.ASP?SID=2&amp;KID=10" method="post"></form>
    <tbody><tr>
      <td colspan="11" class="UrunGruplari" height="25">&nbsp;</td>
    </tr>
    <tr>
      <td colspan="2" class="Text_baslik" height="24">Araçlar</td>
      <td width="490" height="24" colspan="9" class="Metin"><div align="right"><strong>
        2. EL ARAÇLARIMIZ
      </strong></div></td>
    </tr>
    <tr class="genel_yazi" bgcolor="#e7e7e7">
      <td colspan="11"></td>
    </tr>
	
	
	

    <tr class="genel_yazi" bgcolor="#e7e7e7">
      <td colspan="11"></td>
    </tr>
    <tr class="genel_yazi" bgcolor="#e7e7e7">
      <td colspan="11"></td>
    </tr>
    <tr>
      <td height="56" colspan="11"><table border="0" cellpadding="0" cellspacing="0">	    
        <tr>
	   <td class="Metin" width="109"><strong>Marka</strong></td>
       <td class="Metin" width="6"><img src="2el_files/yonetim_ara.gif" height="20" width="6" /></td>
      <td width="213" height="22" class="Metin style1">Model</td>
      <td width="10" height="22" class="Metin"><img src="2el_files/yonetim_ara.gif" height="20" width="6" /></td>
      <td width="33" height="22" class="Metin style1">Vitrin</td>
      <td class="Metin" height="22" width="10"><img src="2el_files/yonetim_ara.gif" height="16" width="6"></td>
      <td class="Metin" height="22" width="41"><strong>Durum</strong></td>
      <td class="Metin" height="22" width="10"><img src="2el_files/yonetim_ara.gif" height="16" width="6" /></td>
      <td class="Metin" height="22" width="118"><strong>Haftanın Fırsatı</strong></td>
      <td class="Metin" height="22" width="6"><img src="2el_files/yonetim_ara.gif" height="16" width="6"></td>
      <td class="Metin" height="22" width="48"><strong>İşlem</strong></td>
    </tr></table> 
	<%set eklerim=server.CreateObject("adodb.recordset")
sql="SELECT * FROM tum where aracayir=2"
eklerim.open sql,baglanti,1,3

eklerim.pagesize = 1000
for i=1 to eklerim.pagesize
if eklerim.eof then exit for%>

	  <table border="0" cellpadding="0" cellspacing="0"> 	
    <tr class="genel_yazi" bgcolor="#e7e7e7">
      <td colspan="11"></td>
    </tr>
    
    <tr>
	   <td width="107" height="32" class="Metin"><input name="textfield2" type="text" class="UrunGruplari" value="<%=eklerim("marka")%>" size="20" /></td>
      <td class="Metin" width="6"><img src="2el_files/yonetim_ara.gif" height="20" width="6"></td>
      <td width="200"><label><span class="Metin">
        <input name="textfield" type="text" class="UrunGruplari" value="<%=eklerim("model")%>" size="30" />
</span></label></td>
      <td width="6"><div align="center"><img src="2el_files/yonetim_ara.gif" height="16" width="6"></div></td>
      <td width="49">
	  <%if eklerim("vitrin")=true then%>
	  
           <center> <input name="vitrin" value="true" type="checkbox" checked="CHECKED">
           </center>
		   <%else%>
		   <center> <input name="vitrin" value="false" type="checkbox" unchecked="unCHECKED">
           </center><%end if%>   
		   
		   
</td>
      <td width="7"><span class="Metin"><img src="2el_files/yonetim_ara.gif" height="16" width="6"></span></td>
      <td width="40">
<%if eklerim("durum")=true then%>
	  
           <center> <input name="DURUM" type="checkbox" value="true" checked="CHECKED">
           </center>
		   <%else%>
		   <center> <input name="DURUM" type="checkbox" value="false" unchecked="unCHECKED">
           </center><%end if%> </td>
      <td width="8"><span class="Metin"><img src="2el_files/yonetim_ara.gif" height="16" width="6" /></span></td>
      <td width="120"><%if eklerim("firsat")=true then%>
	  
           <center> <input name="firsat" type="checkbox" value="true" checked="CHECKED">
           </center>
		   <%else%>
		   <center> <input name="firsat" type="checkbox" value="false" unchecked="unCHECKED">
           </center><%end if%> </td>
      <td width="7"><span class="Metin"><img src="2el_files/yonetim_ara.gif" height="16" width="6"></span></td>
      <td width="50" class="Metin"><a href="0kmguncel.asp?id=<%=eklerim("id")%>" class="Metin">İncele</a></td>
    </tr>
	
	</table>	<%eklerim.movenext%>
<% next%>
</td>
    </tr>
	 <tr class="genel_yazi" bgcolor="#e7e7e7">
      <td colspan="11"></td>
    </tr>
    <tr>
      <td colspan="11" height="22"><div class="Metin" align="center"><strong><a href="0kmekle.asp" class="Metin">Yeni Araç Eklemek İçin Tıklayın </a></strong></div></td>
    </tr>
  
</tbody></table>
 <span class="Metin"><br>
          </span><a href="http://www.ata.com.tr/" target="yeni" class="Metin"><strong><br>
          </strong> </a></td>
      </tr>
      <tr>
          <td valign="top"><div align="right"><font face="Arial, Helvetica, sans-serif" size="2">Rayno Interactive 
              Internet Hizmetleri</font></div></td>
      </tr>
    </tbody></table></td>
    <td background="2el_files/yonetim_tema_inndex_04.gif"><img src="2el_files/yonetim_tema_inndex_04.gif" height="279" width="21"></td>
  </tr>
  <tr>
    <td colspan="3"><img src="2el_files/yonetim_tema_inndex_05.gif" height="30" width="700"></td>
  </tr>
</tbody></table>

<p>&nbsp;</p>
</body></html>