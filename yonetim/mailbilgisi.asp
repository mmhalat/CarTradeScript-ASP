<!--#include file="db.asp"-->
<!--#include file="guestkontrol.asp"-->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1254"><title>Yönetim Paneli</title>
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
	   <td height="11" colspan="3" class="Metin"><div align="center"><strong>Mail Adresi Ayarları </strong></div></td>
       </tr>
	   		<%set eklerim=server.CreateObject("adodb.recordset")
			sql="SELECT * FROM mail where id=1"
			eklerim.open sql,baglanti,1,3%>
	   <form action="mailkaydet.asp" method="post">
        <tr>
          <td width="264" height="2" class="Metin">            <div align="right">Gönderilecek E-Mail Adresi
            </div></td>
          <td width="4" class="Metin">:</td>
          <td width="332" class="Metin"><input name="mail" type="text" id="mail" value="<%=eklerim("mail")%>" />
            Mail Adresinizi Giriniz. </td>
        </tr>
        <tr>
          <td width="264" height="1" class="Metin"><div align="right">Mail Sunucusu </div></td>
          <td width="4" class="Metin">:</td>
          <td class="Metin"><input name="textfield" type="text" value="<%=eklerim("mailsunucu")%>" /> 
            Teknik Bilgidir Dokunmayınız</td>
        </tr>
        <tr>
          <td width="264" height="3" class="Metin"><div align="right">Mail İD </div></td>
          <td width="4" class="Metin">:</td>
          <td class="Metin"><input name="textfield2" type="text" value="<%=eklerim("mailid")%>" />
            Teknik Bilgidir Dokunmayınız </td>
        </tr>
        <tr>
          <td width="264" height="5" class="Metin"><div align="right">Mail İD Şifresi</div></td>
          <td width="4" class="Metin">:</td>
          <td class="Metin"><input name="textfield3" type="text" value="<%=eklerim("mailsifre")%>" />
            Teknik Bilgidir Dokunmayınız</td>
        </tr>
        <tr>
          <td height="22" colspan="3" class="Metin"><center><input type="submit" name="Submit" value="Degistir" />
          </center></td>
        </tr>
		</form>
		
        <tr>
          <td colspan="3" class="Metin">DIKKAT : Burada Yazan Mail Adresi Sifrenizi Unutmaniz Durumunda Anasayfadan Şifremi Unuttum Linkine Tıklayarak Şifrenizi Gönderteceğiniz Adrestir Lütfen Dikkatli Yazınız. </td>
        </tr>
      </table> 

	    <table border="0" cellpadding="0" cellspacing="0"> 	
    <tr class="genel_yazi" bgcolor="#e7e7e7">
      <td></td>
    </tr>
	
	</table>	
	  </td>
    </tr>
	

  
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