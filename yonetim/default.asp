<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><head>

<meta http-equiv="Content-Type" content="text/html; charset=windows-1254"><title>Yönetim Paneli</title>

<link href="2el_files/yonetim.css" rel="stylesheet" type="text/css">
<% IF Not session("giris")="tamam" Then %>
<style type="text/css">
<!--
.style1 {font-weight: bold}
body {
	background-image: url('images/yonetim_back.gif');
}
-->
</style>
</head><body bgcolor="#D3D3D3">
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
<form action="admingir.asp" method="post">
<table align="center" border="0" cellpadding="0" cellspacing="0" width="600">
    <tbody><tr>
      <td class="Text_baslik" height="25" width="293">Giriş Bilgileri </td>
      <td height="25" width="8">&nbsp;</td>
      <td height="25" width="299">&nbsp;</td>
    </tr>
    <tr class="genel_yazi" bgcolor="#e7e7e7">
      <td colspan="3"></td>
    </tr>
    <tr>
      <td class="Metin">Kullanıcı Adı </td>
      <td><span class="Metin"><img src="2el_files/yonetim_ara.gif" class="style1" height="16" width="6"></span></td>
      <td>
      <input name="admin" class="Form150" id="admin" value="" maxlength="200" size="20" type="text"></td>
    </tr>
    <tr class="genel_yazi" bgcolor="#e7e7e7">
      <td colspan="3"></td>
    </tr>
    <tr>
      <td class="Metin">Şifreniz </td>
      <td><span class="Metin"><img src="2el_files/yonetim_ara.gif" class="style1" height="16" width="6"></span></td>
      <td>
      <input name="sifre" class="Form150" id="sifre" value="" maxlength="200" size="20" type="password"></td>
    </tr>
	    <tr>
      <td class="Metin">Parolanız</td>
      <td><span class="Metin"><img src="2el_files/yonetim_ara.gif" class="style1" height="16" width="6"></span></td>
      <td>
      <input name="parola" class="Form150" id="parola" value="" maxlength="200" size="20" type="password"></td>
    </tr>
    <tr class="genel_yazi" bgcolor="#e7e7e7">
      <td colspan="3"></td>
    </tr>
    <tr>
                  <td height="20">&nbsp;</td>
      <td height="20"><span class="Metin"><img src="2el_files/yonetim_ara.gif" class="style1" height="16" width="6"></span></td>
      <td height="20"><input type="submit" name="Submit" value="Giris" /></td>
    </tr>
    <tr class="genel_yazi" bgcolor="#e7e7e7">
      <td colspan="3"></td>
    </tr>
  
</tbody></table>
</form>
 <div align="center"><span class="Metin"><a href="hatirlat.asp">Sifremi Hatirlat</a><br>
            </span><a href="http://www.ata.com.tr/" target="yeni" class="Metin"><strong><br>
          </strong> </a></div></td>
      </tr>
      <tr>
          <td valign="top"><div align="right"><font size="2" face="Arial, Helvetica, sans-serif">Rayno İnteractive </font></div></td>
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
<%else%>
<meta http-equiv="refresh" content="0;URL=2el.asp">
<%end if%>