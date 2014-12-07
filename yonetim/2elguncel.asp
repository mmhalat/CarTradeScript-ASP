<!--#include file="db.asp"-->
<link href="2el_files/css.htm" rel="stylesheet" type="text/css">
<link href="2el_files/yonetim.css" rel="stylesheet" type="text/css">
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
.style2 {
	font-size: 14px;
	color: #666666;
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
</head>

<body bgcolor="#D3D3D3">
<table width="699" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td colspan="3"><img src="2el_files/yonetim_tema_inndex_01.gif" width="700" height="24" /></td>
  </tr>
  <tr>
    <td width="21" background="2el_files/yonetim_tema_inndex_02.gif"><img src="2el_files/yonetim_tema_inndex_02.gif" width="21" height="279" /></td>
    <td width="657" valign="top" bgcolor="#FFFFFF"><table width="600" border="0" align="center" cellpadding="0" cellspacing="0">
      <tr>
        <td width="600" valign="top">&nbsp;</td>
      </tr>
      <tr>
        <td align="left" valign="top">
<!--#include file="menu.asp"-->
<%id = Request.QueryString("id")
Set ekle = Server.CreateObject ("ADODB.RecordSet")
sql = " Select * from tum where id=" & id
ekle.open sql,baglanti,1,3%>
             <form action="2elguncelkaydet.asp?id=<%=request.querystring("id")%>" method="post" name="ekle"> 
                            <table width="600" border="0" align="center" cellpadding="0" cellspacing="0">
                              <tr>
                                <td height="25" colspan="5" class="UrunGruplari">&nbsp;</td>
                              </tr>
                              <tr>
                                <td width="332" colspan="5" class="Text_baslik">Araç Ekle</td>
                              </tr>
                              <tr>
                                <td colspan="5" class="Metin style1">Marka</td>
                              </tr>
                              <tr>
                                <td colspan="5" class="Text_baslik"><input name="marka" type="text" id="marka" value="<%=ekle("marka")%>" size="50" /></td>
                              </tr>
                              <tr>
                                <td colspan="5" class="Metin"><strong>Model</strong></td>
                              </tr>
                              <tr>
                                <td colspan="5" class="Text_baslik"><input name="model" type="text" id="model" value="<%=ekle("model")%>" size="50" /></td>
                              </tr>
                              <tr bgcolor="#E7E7E7"  class="genel_yazi">
                                <td colspan="5"></td>
                              </tr>
                              <tr>
                                <td height="25" colspan="5"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                    <tr>
                                      <td width="14%" height="22" class="Metin"><strong>Yılı</strong></td>
                                      <td width="1%" height="22"><span class="Metin"><img src="2el_files/yonetim_ara.gif" width="6" height="16" class="style1" /></span></td>
                                      <td width="36%" height="22"><input name="yil" type="text" class="UrunGruplari" id="yil" value="<%=ekle("yil")%>" size="35"></td>
                                      <td width="15%" height="22" class="Metin"><strong>Motor Gücü </strong></td>
                                      <td width="1%" height="22"><span class="Metin"><img src="2el_files/yonetim_ara.gif" width="6" height="16" class="style1" /></span></td>
                                      <td width="33%" height="22">
                                          <div align="left">
                                              <input name="m_guc" type="text" class="Form85" id="m_guc3" value="<%=ekle("m_guc")%>" maxlength="200" size="20" />
                                          </div></td></tr>
                                    <tr bgcolor="#E7E7E7"  class="genel_yazi">
                                      <td colspan="6"></td>
                                    </tr>
                                    <tr>
                                      <td height="22" class="Metin"><strong>Renk</strong></td>
                                      <td height="22"><span class="Metin"><img src="2el_files/yonetim_ara.gif" width="6" height="16" class="style1" /></span></td>
                                      <td height="22"><input name="renk" type="text" class="UrunGruplari" id="renk" value="<%=ekle("renk")%>" size="35"></td>
                                      <td height="22" class="Metin"><strong>Km</strong></td>
                                      <td height="22"><span class="Metin"><img src="2el_files/yonetim_ara.gif" width="6" height="16" class="style1" /></span></td>
                                      <td height="22">
                                          <div align="left">
                                              <input name="kilometre" type="text" class="Form85" id="kilometre3" value="<%=ekle("kilometre")%>" maxlength="200" size="20" />
                                          </div></td></tr>
                                    <tr bgcolor="#E7E7E7"  class="genel_yazi">
                                      <td colspan="6"></td>
                                    </tr>
                                    <tr bgcolor="#E7E7E7"  class="genel_yazi">
                                      <td colspan="6"></td>
                                    </tr>
                                    <tr>
                                      <td height="22" class="Metin"><strong>Yakıt</strong></td>
                                      <td height="22"><span class="Metin"><img src="2el_files/yonetim_ara.gif" width="6" height="16" class="style1" /></span></td>
                                      <td height="22"><input name="yakit" type="text" class="UrunGruplari" id="yakit" value="<%=ekle("yakit")%>" size="35"></td>
                                      <td height="22" class="Metin"><strong>Plaka</strong></td>
                                      <td height="22"><span class="Metin"><img src="2el_files/yonetim_ara.gif" width="6" height="16" class="style1" /></span></td>
                                      <td height="22">
                                          <div align="left">
                                              <input name="plaka" type="text" class="Form85" id="plaka3" value="<%=ekle("plaka")%>" maxlength="200" size="20" />
                                          </div></td></tr>
                                    <tr bgcolor="#E7E7E7"  class="genel_yazi">
                                      <td colspan="6"></td>
                                    </tr>
                                    <tr>
                                      <td height="22" class="Metin"><strong>Vites</strong></td>
                                      <td height="22"><span class="Metin"><img src="2el_files/yonetim_ara.gif" width="6" height="16" class="style1" /></span></td>
                                      <td height="22"><input name="vites" type="text" class="UrunGruplari" id="vites" value="<%=ekle("vites")%>" size="35"></td>
                                      <td height="22" class="Metin"><strong>Fiyat</strong></td>
                                      <td height="22"><span class="Metin"><img src="2el_files/yonetim_ara.gif" width="6" height="16" class="style1" /></span></td>
                                      <td height="22">
                                          <div align="left">
                                              <input name="fiyat" type="text" class="Form85" id="fiyat3" value="<%=ekle("fiyat")%>" maxlength="200" size="20" />
                                          </div></td></tr>
										                                      <tr>
                                      <td height="22" class="Metin"><strong>Arac Tipi </strong></td>
                                      <td height="22"><span class="Metin"><img src="2el_files/yonetim_ara.gif" width="6" height="16" class="style1" /></span></td>
                                      <td height="22"><input name="aractipi" type="text" class="UrunGruplari" id="aractipi" value="<%=ekle("aractipi")%>" size="35"></td>
                                      <td height="22" class="Metin"><strong>Silindir Hacmi </strong></td>
                                      <td height="22"><span class="Metin"><img src="2el_files/yonetim_ara.gif" width="6" height="16" class="style1" /></span></td>
                                      <td height="22">
                                          <div align="left">
                                              <input name="silindirhacmi" type="text" class="Form85" id="fiyat3" value="<%=ekle("silindirhacmi")%>" maxlength="200" size="20" />
                                          </div></td></tr>
                                    <tr bgcolor="#E7E7E7"  class="genel_yazi">
                                      <td colspan="6"></td>
                                    </tr>
                                </table></td>
                              </tr>
                              <tr bgcolor="#E7E7E7"  class="genel_yazi">
                                <td colspan="5"></td>
                              </tr>
                              <tr>
                                <td height="25" colspan="5"><div align="center" class="Metin"><strong>Ek Bilgiler</strong></div></td>
                              </tr>
                              <tr bgcolor="#E7E7E7"  class="genel_yazi">
                                <td colspan="5"></td>
                              </tr>
                              <tr>
                                <td height="25" colspan="5">
                                  <textarea name="ek_bilgi" rows="6" class="Form100" id="textarea4" cols="20"><%=ekle("ek_bilgi")%>
                                  </textarea></td>
                              </tr>
                              <tr bgcolor="#E7E7E7"  class="genel_yazi">
                                <td colspan="5"></td>
                              </tr>
                              <tr bgcolor="#E7E7E7"  class="genel_yazi">
                                <td colspan="5"></td>
                              </tr>
                              <tr>
                                <td height="12" class="Text_baslik style2">Vitrin</td>
                                <td height="12" class="Text_baslik style2">Haftanın Fırsatı </td>
                                <td colspan="3" rowspan="2"><span class="Text_baslik">Resim Adresileri</span>                                  <input name="resimlink" type="text" id="resimlink" value="<%=ekle("resimlink")%>" size="46" /><br><input name="resimlink" type="text" id="resimlink" value="<%=ekle("resimlink1")%>" size="46" />                                  <input name="resimlink" type="text" id="resimlink" value="<%=ekle("resimlink2")%>" size="46" />
                                <input name="resimlink" type="text" id="resimlink" value="<%=ekle("resimlink3")%>" size="46" />                                <input name="resimlink" type="text" id="resimlink" value="<%=ekle("resimlink4")%>" size="46" />
                                <input name="resimlink" type="text" id="resimlink" value="<%=ekle("resimlink5")%>" size="46" />                                <input name="resimlink" type="text" id="resimlink" value="<%=ekle("resimlink6")%>" size="46" />                                <input name="resimlink" type="text" id="resimlink" value="<%=ekle("resimlink7")%>" size="46" />                                <input name="resimlink" type="text" id="resimlink" value="<%=ekle("resimlink8")%>" size="46" />                                <input name="resimlink" type="text" id="resimlink" value="<%=ekle("resimlink9")%>" size="46" />                                <input name="resimlink" type="text" id="resimlink" value="<%=ekle("resimlink10")%>" size="46" /></td>
                              </tr>
                              <tr>
							 
                                <td width="332" height="25"><%if ekle("vitrin")=true then%>
	  
 <input name="vitrin" value="true" type="checkbox" checked="CHECKED">

		   <%else%>
		 <input name="vitrin" value="false" type="checkbox" unchecked="unCHECKED">
          <%end if%> 
		   </td>
                                <td width="332"><%if ekle("firsat")=true then%>
	  
            <input name="firsat" type="checkbox" value="true" checked="CHECKED">
           
		   <%else%>
		   <input name="firsat" type="checkbox" value="false" unchecked="unCHECKED">
          <%end if%> </td>
								
                              </tr>
                              <tr>
                                <td colspan="5"><div align="center">
                                    <input type="submit" name="Submit" value="Temizle" />
                                    <input type="submit" name="Submit2" value="Gönder" />
                                </div></td>
                              </tr>
                              <tr>
                                <td colspan="5">&nbsp;</td>
                              </tr>
                            </table>
            </form>
 <span class="Metin"><br />
          </span><a href="http://www.ata.com.tr/" target="yeni" class="Metin"><strong><br />
          </strong> </a></td>
      </tr>
      <tr>
          <td valign="top"><div align="right"><font size="2" face="Arial, Helvetica, sans-serif">Rayno İnteractive 
              Internet Hizmetleri</font></div></td>
      </tr>
    </table></td>
    <td width="21" background="2el_files/yonetim_tema_inndex_04.gif"><img src="2el_files/yonetim_tema_inndex_04.gif" width="21" height="279" /></td>
  </tr>
  <tr>
    <td colspan="3"><img src="2el_files/yonetim_tema_inndex_05.gif" width="700" height="30" /></td>
  </tr>
</table>

<p>&nbsp;</p>
</body>
</html>