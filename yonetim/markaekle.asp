<!--#include file="db.asp"-->
<!--#include file="guestkontrol.asp"-->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1254"><title>Y�netim Paneli</title>
<link href="2el_files/css.htm" rel="stylesheet" type="text/css">
<link href="2el_files/yonetim.css" rel="stylesheet" type="text/css">
<style type="text/css">
<!--
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
  alert("Marka Se�iniz");
  document.ekle.TR_A1.focus();
  return false;
 }
 else{window.status = "";}


 if(document.ekle.TR_A2.value=="")
 {
  alert("Modeli Yaz�n�z");
  document.ekle.TR_A2.focus();
  document.ekle.TR_A2.select();
  return false;
 }
 else{window.status = "";}

 if(document.ekle.TR_A12.value=="")
 {
  alert("Fiyat� Yaz�n�z");
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
  alert("Marka Se�iniz");
  document.bilgi.TR_A1.focus();
  return false;
 }
 else{window.status = "";}


 if(document.bilgi.TR_A2.value=="")
 {
  alert("Modeli Yaz�n�z");
  document.bilgi.TR_A2.focus();
  document.bilgi.TR_A2.select();
  return false;
 }
 else{window.status = "";}

 if(document.bilgi.TR_A12.value=="")
 {
  alert("Fiyat� Yaz�n�z");
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
  alert("Kullan�c� ad�n�z� yaz�n�z");
  document.giris.USER.focus();
  document.giris.USER.select();
  return false;
 }
 else{window.status = "";}


 if(document.giris.PASS.value=="")
 {
  alert("Yeni �ifrenizi yaz�n�z");
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
  alert("Kullan�c� ad�n�z� yaz�n�z");
  document.login.USER.focus();
  document.login.USER.select();
  return false;
 }
 else{window.status = "";}


 if(document.login.PASS.value=="")
 {
  alert("�ifrenizi yaz�n�z");
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
  alert("T�rk�e �r�n Grubunu Giriniz");
  document.ekle.TR_A1.focus();
  document.ekle.TR_A1.select();
  return false;
 }
 else{window.status = "";}


 if(document.ekle.EN_A1.value=="")
 {
  alert("�ngizlice �r�n Grubunu Giriniz");
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
      <td width="490" colspan="11" class="UrunGruplari"><div align="right"><strong>
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
	   <td width="598" height="11" class="Metin"><div align="center"><strong>Marka Ekleme B�l�m�</strong></div></td>
       </tr>
	   
	   <form action="markakaydet.asp" method="post">
        <tr>
          <td height="11" class="Metin"><center><input name="marka" type="text" id="marka" />
          </center></td>
        </tr>
        <tr>
          <td height="22" class="Metin"><center><input type="submit" name="Submit" value="Ekle" />
          </center></td>
        </tr>
		</form>
		
        <tr>
          <td class="Metin"><strong>Mevcut Markalar </strong></td>
        </tr>
      </table> 

	    <table border="0" cellpadding="0" cellspacing="0"> 	
    <tr class="genel_yazi" bgcolor="#e7e7e7">
      <td></td>
    </tr>
	
	</table>	
	  </td>
    </tr>
	 <tr class="genel_yazi" bgcolor="#e7e7e7">
      <td colspan="11"></td>
    </tr>
		<%set eklerim=server.CreateObject("adodb.recordset")
sql="SELECT * FROM marka order by id desc"
eklerim.open sql,baglanti,1,3

eklerim.pagesize = 1000
for i=1 to eklerim.pagesize
if eklerim.eof then exit for%>
	
    <tr>
      <td colspan="11" height="22"><span class="Metin"><%=eklerim("marka")%>&nbsp;</span></td>
    </tr>
	
		  <%eklerim.movenext%>
<% next%>
  
</tbody></table>
 <span class="Metin"><br>
          </span></td>
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