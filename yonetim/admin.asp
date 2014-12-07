<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1254" />
<title>Yönetim Paneli</title>
<link href="css.css" rel="stylesheet" type="text/css" />
<link href="yonetim.css" rel="stylesheet" type="text/css" />
<style type="text/css">
<!--
.style1 {font-weight: bold}
body {
	background-image: url('2el_files/yonetim_back.gif');
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
</script>
<link href="2el_files/css.htm" rel="stylesheet" type="text/css">
<link href="2el_files/yonetim.css" rel="stylesheet" type="text/css">
</head>

<body bgcolor="#D3D3D3">
<table width="600" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td colspan="3"><img src="2el_files/yonetim_tema_inndex_01.gif" width="700" height="24" /></td>
  </tr>
  <tr>
    <td background="2el_files/yonetim_tema_inndex_02.gif"><img src="2el_files/yonetim_tema_inndex_02.gif" width="21" height="279" /></td>
    <td valign="top" bgcolor="#FFFFFF"><table width="658" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td valign="top"><!--#include file="menu.asp"--></td>
      </tr>
      <tr>
        <td align="left" valign="top">
<form action="adminkaydet.asp?id=1" method="post">
<table width="600" border="0" align="center" cellpadding="0" cellspacing="0">
    <tr>
      <td width="293" height="25" class="Text_baslik">Giriş Bilgileri </td>
      <td width="8" height="25">&nbsp;</td>
      <td width="299" height="25">&nbsp;</td>
    </tr>
    <tr bgcolor="#E7E7E7"  class="genel_yazi">
      <td colspan="3"></td>
    </tr>
    <tr>
      <td class="Metin">Kullanıcı Adı </td>
      <td><span class="Metin"><img src="2el_files/yonetim_ara.gif" width="6" height="16" class="style1" /></span></td>
      <td>
      <input name="admin" type="text" class="Form150" id="admin" value="" maxlength="200" size="20" /></td>
    </tr>
    <tr bgcolor="#E7E7E7"  class="genel_yazi">
      <td colspan="3"></td>
    </tr>
    <tr>
      <td class="Metin">Şifreniz </td>
      <td><span class="Metin"><img src="2el_files/yonetim_ara.gif" width="6" height="16" class="style1" /></span></td>
      <td>
      <input name="sifre" type="text" class="Form150" id="sifre" value="" maxlength="200" size="20" /></td>
    </tr>
	    <tr>
      <td class="Metin">Parolanız</td>
      <td><span class="Metin"><img src="2el_files/yonetim_ara.gif" width="6" height="16" class="style1" /></span></td>
      <td>
      <input name="parola" type="text" class="Form150" id="parola" value="" maxlength="200" size="20" /></td>
    </tr>
    <tr bgcolor="#E7E7E7"  class="genel_yazi">
      <td colspan="3"></td>
    </tr>
    <tr>
                  <td height="20">&nbsp;</td>
      <td height="20"><span class="Metin"><img src="2el_files/yonetim_ara.gif" width="6" height="16" class="style1" /></span></td>
      <td height="20"><input type="submit" name="Submit" value="Kaydet" /></td>
    </tr>
    <tr bgcolor="#E7E7E7"  class="genel_yazi">
      <td colspan="3"></td>
    </tr>

</table>
</form>
 <span class="Metin"><br />
          </span><a href="http://www.ata.com.tr/" target="yeni" class="Metin"><strong><br />
          </strong> </a></td>
      </tr>
      <tr>
          <td valign="top"><div align="right"><font size="2" face="Arial, Helvetica, sans-serif">Rayno Interactive 
              Internet Hizmetleri</font></div></td>
      </tr>
    </table></td>
    <td background="2el_files/yonetim_tema_inndex_04.gif"><img src="2el_files/yonetim_tema_inndex_04.gif" width="21" height="279" /></td>
  </tr>
  <tr>
    <td colspan="3"><img src="2el_files/yonetim_tema_inndex_05.gif" width="700" height="30" /></td>
  </tr>
</table>

<p>&nbsp;</p>
</body>
</html>