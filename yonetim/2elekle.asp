<!--#include file="db.asp"-->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1254" />
<title>Yönetim Paneli</title>
<link href="2el_files/css.htm" rel="stylesheet" type="text/css">
<link href="2el_files/yonetim.css" rel="stylesheet" type="text/css">
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

             <form action="2elkaydet.asp" ENCTYPE="multipart/form-data" method="post" name="ekle"> 
                            <table width="600" border="0" align="center" cellpadding="0" cellspacing="0">
                              <tr>
                                <td height="25" colspan="5" class="UrunGruplari">&nbsp;</td>
                              </tr>
                              <tr>
                                <td colspan="5" class="Text_baslik">Araç Ekle</td>
                              </tr>
                              <tr>
                                <td colspan="5" class="Metin style1">Marka</td>
                              </tr>
                              <tr>
                                <td colspan="5" class="Text_baslik"><%set eklerim=server.CreateObject("adodb.recordset")
										sql="SELECT * FROM marka"
										eklerim.open sql,baglanti,1,3%>
										  <select name="marka" class="style2" id="select5">
										  <%eklerim.pagesize = 15
										for i=1 to eklerim.pagesize
										if eklerim.eof then exit for%>
                                          <option value="Belirtilmedi">Şeçiniz</option>
										  
                                          <option value="<%=eklerim("marka")%>"><%=eklerim("marka")%></option>
										  <%eklerim.movenext
										  next
										 
										  
										  
										  %>
                                </select>&nbsp;</td>
                              </tr>
                              <tr>
                                <td colspan="5" class="Metin"><strong>Model</strong></td>
                              </tr>
                              <tr>
                                <td colspan="5" class="Text_baslik"><input name="model" type="text" id="model" size="50" /></td>
                              </tr>
                              <tr bgcolor="#E7E7E7"  class="genel_yazi">
                                <td colspan="5"></td>
                              </tr>
                              <tr>
                                <td height="25" colspan="5"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                    <tr>
                                      <td width="14%" height="22" class="Metin"><strong>Yılı</strong></td>
                                      <td width="1%" height="22"><span class="Metin"><img src="2el_files/yonetim_ara.gif" width="6" height="16" class="style1" /></span></td>
                                      <td width="36%" height="22"><select name="yil" class="Form85_2" id="select5">
                                          <option value="Belirtilmedi">Şeçiniz</option>
                                          <option value="2009">2009</option>
                                          <option value="2008">2008</option>
                                          <option value="2007">2007</option>
                                          <option value="2006">2006</option>
                                          <option value="2005">2005</option>
                                          <option value="2004">2004</option>
                                          <option value="2003">2003</option>
                                          <option value="2002">2002</option>
                                          <option value="2001">2001</option>
                                          <option value="2000">2000</option>
                                          <option value="1999">1999</option>
                                          <option value="1998">1998</option>
                                          <option value="1997">1997</option>
                                          <option value="1996">1996</option>
                                          <option value="1995">1995</option>
                                          <option value="1994">1994</option>
                                          <option value="1993">1993</option>
                                          <option value="1992">1992</option>
                                          <option value="1991">1991</option>
                                          <option value="1990">1990</option>
                                          <option value="1989">1989</option>
                                          <option value="1988">1988</option>
                                          <option value="1987">1987</option>
                                          <option value="1986">1986</option>
                                          <option value="1985">1985</option>
                                          <option value="1984">1984</option>
                                          <option value="1983">1983</option>
                                          <option value="1982">1982</option>
                                          <option value="1981">1981</option>
                                          <option value="1980">1980</option>
                                          <option value="1979">1979</option>
                                          <option value="1978">1978</option>
                                          <option value="1977">1977</option>
                                          <option value="1976">1976</option>
                                          <option value="1975">1975</option>
                                          <option value="1974">1974</option>
                                          <option value="1973">1973</option>
                                          <option value="1972">1972</option>
                                          <option value="1971">1971</option>
                                          <option value="1970">1970</option>
                                          <option value="1969">1969</option>
                                          <option value="1968">1968</option>
                                          <option value="1967">1967</option>
                                          <option value="1966">1966</option>
                                          <option value="1965">1965</option>
                                          <option value="1964">1964</option>
                                          <option value="1963">1963</option>
                                          <option value="1962">1962</option>
                                          <option value="1961">1961</option>
                                          <option value="1960">1960</option>
                                          <option value="1959">1959</option>
                                          <option value="1958">1958</option>
                                          <option value="1957">1957</option>
                                          <option value="1956">1956</option>
                                          <option value="1955">1955</option>
                                          <option value="1954">1954</option>
                                          <option value="1953">1953</option>
                                          <option value="1952">1952</option>
                                          <option value="1951">1951</option>
                                          <option value="1950">1950</option>
                                          <option value="1949">1949</option>
                                          <option value="1948">1948</option>
                                          <option value="1947">1947</option>
                                          <option value="1946">1946</option>
                                          <option value="1945">1945</option>
                                          <option value="1944">1944</option>
                                          <option value="1943">1943</option>
                                          <option value="1942">1942</option>
                                          <option value="1941">1941</option>
                                          <option value="1940">1940</option>
                                          <option value="1939">1939</option>
                                          <option value="1938">1938</option>
                                          <option value="1937">1937</option>
                                          <option value="1936">1936</option>
                                          <option value="1935">1935</option>
                                          <option value="1934">1934</option>
                                          <option value="1933">1933</option>
                                          <option value="1932">1932</option>
                                          <option value="1931">1931</option>
                                          <option value="1930">1930</option>
                                          <option value="1929">1929</option>
                                          <option value="1928">1928</option>
                                          <option value="1927">1927</option>
                                          <option value="1926">1926</option>
                                          <option value="1925">1925</option>
                                          <option value="1924">1924</option>
                                          <option value="1923">1923</option>
                                          <option value="1922">1922</option>
                                          <option value="1921">1921</option>
                                          <option value="1920">1920</option>
                                          <option value="1919">1919</option>
                                          <option value="1918">1918</option>
                                          <option value="1917">1917</option>
                                          <option value="1916">1916</option>
                                          <option value="1915">1915</option>
                                          <option value="1914">1914</option>
                                          <option value="1913">1913</option>
                                          <option value="1912">1912</option>
                                          <option value="1911">1911</option>
                                          <option value="1910">1910</option>
                                          <option value="1909">1909</option>
                                          <option value="1908">1908</option>
                                          <option value="1907">1907</option>
                                          <option value="1906">1906</option>
                                          <option value="1905">1905</option>
                                          <option value="1904">1904</option>
                                          <option value="1903">1903</option>
                                          <option value="1902">1902</option>
                                          <option value="1901">1901</option>
                                          <option value="1900">1900</option>
                                      </select></td>
                                      <td width="14%" height="22" class="Metin"><strong>Motor Gücü </strong></td>
                                      <td width="1%" height="22"><span class="Metin"><img src="2el_files/yonetim_ara.gif" width="6" height="16" class="style1" /></span></td>
                                      <td width="34%" height="22"><div align="right">
                                          <input name="m_guc" type="text" class="Form85" id="m_guc3" value="" maxlength="200" size="20" />
                                      </div></td>
                                    </tr>
                                    <tr bgcolor="#E7E7E7"  class="genel_yazi">
                                      <td colspan="6"></td>
                                    </tr>
                                    <tr>
                                      <td height="22" class="Metin"><strong>Renk</strong></td>
                                      <td height="22"><span class="Metin"><img src="2el_files/yonetim_ara.gif" width="6" height="16" class="style1" /></span></td>
                                      <td height="22"><select name="renk" class="Form85_2" id="select6">
                                          <option value="Belirtilmedi">Şeçiniz</option>
                                          <option >Ateş Kırmızısı</option>
                                          <option >Başak Sarısı</option>
                                          <option >Turuncu</option>
                                          <option >Bej</option>
                                          <option >Beyaz</option>
                                          <option >Bordo</option>
                                          <option >Bronz</option>
                                          <option >Buz yeşili</option>
                                          <option>Çelik grisi</option>
                                          <option >Diğer</option>
                                          <option >Füme</option>
                                          <option >Gri-met</option>
                                          <option >Gri-opak</option>
                                          <option>Gümüş</option>
                                          <option>Güz kızılı</option>
                                          <option >Gökyüzü mavisi</option>
                                          <option >Kapri mavisi</option>
                                          <option >Kırmızı</option>
                                          <option >Kıyı mavisi</option>
                                          <option >Lacivert</option>
                                          <option >Mavi</option>
                                          <option >Mavi-açık</option>
                                          <option >Mavi-met.</option>
                                          <option >Metalik Bronz</option>
                                          <option >Metalik siyah</option>
                                          <option>Mor</option>
                                          <option >Nil yeşili</option>
                                          <option >Patlican Moru</option>
                                          <option >Sahra beji</option>
                                          <option >Sarı</option>
                                          <option >Siyah</option>
                                          <option >Kırmızı</option>
                                          <option >Gri</option>
                                          <option >Yeşil</option>
                                          <option >Yeşil-met.</option>
                                      </select></td>
                                      <td height="22" class="Metin"><strong>Km</strong></td>
                                      <td height="22"><span class="Metin"><img src="2el_files/yonetim_ara.gif" width="6" height="16" class="style1" /></span></td>
                                      <td height="22"><div align="right">
                                          <input name="kilometre" type="text" class="Form85" id="kilometre3" value="" maxlength="200" size="20" />
                                      </div></td>
                                    </tr>
                                    <tr bgcolor="#E7E7E7"  class="genel_yazi">
                                      <td colspan="6"></td>
                                    </tr>
                                    <tr bgcolor="#E7E7E7"  class="genel_yazi">
                                      <td colspan="6"></td>
                                    </tr>
                                    <tr>
                                      <td height="22" class="Metin"><strong>Yakıt</strong></td>
                                      <td height="22"><span class="Metin"><img src="2el_files/yonetim_ara.gif" width="6" height="16" class="style1" /></span></td>
                                      <td height="22"><select name="yakit" class="Form85_2" id="select7">
                                          <option value="Belirtilmedi">Şeçiniz</option>
                                          <option >Benzin</option>
                                          <option >Dizel</option>
                                          <option >Benzin/ LPG</option>
                                          <option >LPG</option>
                                          <option >Elektro</option>
                                          <option >Doğal Gaz</option>
                                      </select></td>
                                      <td height="22" class="Metin"><strong>Plaka</strong></td>
                                      <td height="22"><span class="Metin"><img src="2el_files/yonetim_ara.gif" width="6" height="16" class="style1" /></span></td>
                                      <td height="22"><div align="right">
                                          <input name="plaka" type="text" class="Form85" id="plaka3" value="" maxlength="200" size="20" />
                                      </div></td>
                                    </tr>
                                    <tr bgcolor="#E7E7E7"  class="genel_yazi">
                                      <td colspan="6"></td>
                                    </tr>
                                    <tr>
                                      <td height="22" class="Metin"><strong>Vites</strong></td>
                                      <td height="22"><span class="Metin"><img src="2el_files/yonetim_ara.gif" width="6" height="16" class="style1" /></span></td>
                                      <td height="22"><select name="vites" class="Form85_2" id="select8">
                                          <option value="Belirtilmedi">Şeçiniz</option>
                                          <option>Manuel/ Düz</option>
                                          <option>Otomatik</option>
                                          <option>Tiptronic</option>
                                          <option>F1</option>
                                      </select></td>
                                      <td height="22" class="Metin"><strong>Fiyat</strong></td>
                                      <td height="22"><span class="Metin"><img src="2el_files/yonetim_ara.gif" width="6" height="16" class="style1" /></span></td>
                                      <td height="22"><div align="right">
                                          <input name="fiyat" type="text" class="Form85" id="fiyat3" value="" maxlength="200" size="20" />
                                      </div></td>
                                    </tr>
									                                    <tr>
                                      <td height="22" class="Metin"><strong>Arac Tipi </strong></td>
                                      <td height="22"><span class="Metin"><img src="2el_files/yonetim_ara.gif" width="6" height="16" class="style1" /></span></td>
                                      <td height="22"><select name="aractipi" class="Form85_2" id="select8">
               <option >Sedan</option>

               <option >Hatchback</option>
               <option >Stationwagon</option>
               <option >Coupe</option>
               <option >Cabriolet</option>
               <option >Pick-Up</option>
               <option >Jeep</option>

               <option >Minibüs</option>
               <option >Kamyon</option>
               <option >Diğer</option>
                                      </select></td>
                                      <td height="22" class="Metin"><strong>Silindir Hacmi </strong></td>
                                      <td height="22"><span class="Metin"><img src="2el_files/yonetim_ara.gif" width="6" height="16" class="style1" /></span></td>
                                      <td height="22"><div align="right">
                                          <input name="silindirhacmi" type="text" class="Form85" id="fiyat3" value="" maxlength="200" size="20" />
                                      </div></td>
                                    </tr>
                                    <tr bgcolor="#E7E7E7"  class="genel_yazi">
                                      <td colspan="6"></td>
                                    </tr>
                                </table></td>
                              </tr>
                              <tr  class="genel_yazi">
                                <td height="20" colspan="5"><div align="center" class="Metin"><strong>Aksesuarlar</strong></div></td>
                              </tr>
                              <tr bgcolor="#E7E7E7"  class="genel_yazi">
                                <td colspan="12"></td>
                              </tr>
                              <tr>
                                <td height="324" colspan="4" valign="top" style="font-size: 8pt; color: #444a51; font-family: Verdana, Helvetica, Sans-serif"><table width="599" border="0" cellspacing="0" cellpadding="0">
                                  <tr class="Metin">
                                    <td height="25"><input name="otomatikvites" type="checkbox" id="otomatikvites" value="1" />
                                      <span class="Metin">Otomatik Vites </span></td>
                                    <td width="185" height="25"><input name="abs" type="checkbox" id="abs" value="1" />
                                    ABS</td>
                                    <td width="183" height="25"><input name="eps" type="checkbox" id="eps" value="1" />
                                    EPS</td>
                                  </tr>
                                  <tr class="Metin">
                                    <td height="25"><input name="surucuairbag" type="checkbox" id="surucuairbag" value="1" />
                                    Sürücü Airbag </td>
                                    <td height="25"><input name="yolbilgisayari" type="checkbox" id="yolbilgisayari" value="1" />
                                      Yol Bilgisayarı </td>
                                    <td height="25"><input name="alarm" type="checkbox" id="alarm" value="1" />
                                      Alarm</td>
                                  </tr>
                                  <tr class="Metin">
                                    <td height="25"><input name="sanziman" type="checkbox" id="sanziman" value="1" />
                                      Tiptronic Şanzuman </td>
                                    <td height="25"><input name="acilirtavan" type="checkbox" id="acilirtavan" value="1" />
                                      Açılır Tavan ( Sun Roof ) </td>
                                    <td height="25"><input name="merkezikilit" type="checkbox" id="merkezikilit" value="1" />
                                      Merkezi Kilit </td>
                                  </tr>
                                  <tr class="Metin">
                                    <td height="25"><input name="hizkontrolsistemi" type="checkbox" id="hizkontrolsistemi" value="1" />
                                      Sabit Hız Kontrol Sistemi </td>
                                    <td height="25"><input name="aliminyumjant" type="checkbox" id="aliminyumjant" value="1" />
                                      Aliminyum alaşım Jant </td>
                                    <td height="25"><input name="diskfren" type="checkbox" id="diskfren" value="1" />
                                      Ö/A Fren Sistemi </td>
                                  </tr>
                                  <tr class="Metin">
                                    <td height="25"><input name="klima" type="checkbox" id="klima" value="1" />
                                      Klima</td>
                                    <td height="25"><input name="hidrolikdireksiyon" type="checkbox" id="hidrolikdireksiyon" value="1" />
                                      Hidrolik Direksiyon </td>
                                    <td height="25"><input name="yolcuairbag" type="checkbox" id="yolcuairbag" value="1" />
                                      Yolcu Airbag </td>
                                  </tr>
                                  <tr class="Metin">
                                    <td height="25"><input name="immobilizer" type="checkbox" id="immobilizer" value="1" />
                                    İmmobilizer</td>
                                    <td height="25"><input name="derikoltuk" type="checkbox" id="derikoltuk" value="1" />
                                    Deri Koltuklar </td>
                                    <td height="25"><input name="xenonfarlar" type="checkbox" id="xenonfarlar" value="1" />
                                    Xenon Farlar</td>
                                  </tr>
                                  <tr class="Metin">
                                    <td height="25"><input name="yanairbag" type="checkbox" id="yanairbag" value="1" />
                                    Yan Airbag </td>
                                    <td height="25"><input name="cdcalar" type="checkbox" id="cdcalar" value="1" />
                                    Cd Çalar </td>
                                    <td height="25"><input name="onsisfar" type="checkbox" id="onsisfar" value="1" />
                                    Ön Sis Farları </td>
                                  </tr>
                                  <tr class="Metin">
                                    <td height="25"><input name="kumandalianahtar" type="checkbox" id="kumandalianahtar" value="1" />
                                    Uzaktan Kumandalı Anahtar </td>
                                    <td height="25"><input name="navigasyon" type="checkbox" id="navigasyon" value="1" />
                                    Nevigasyon</td>
                                    <td height="25"><input name="elektriklikoltuk" type="checkbox" id="elektriklikoltuk" value="1" />
                                    Elektrikli Koltuk </td>
                                  </tr>
                                  <tr class="Metin">
                                    <td height="25"><input name="hafizalielektriklikoltuk" type="checkbox" id="hafizalielektriklikoltuk" value="1" />
                                      Hafızalı Elektrikli Koltuk </td>
                                    <td height="25"><input name="parkmesafekontrol" type="checkbox" id="parkmesafekontrol" value="1" />
                                      Park Mesafe Kontrol </td>
                                    <td height="25"><input name="koltukisitma" type="checkbox" id="koltukisitma" value="1" />
                                      Koltuk Isıtma </td>
                                  </tr>
                                  <tr class="Metin">
                                    <td height="25"><input name="arkaperde" type="checkbox" id="arkaperde" value="1" />
                                      Arka Perde </td>
                                    <td height="25"><input name="katlanirayna" type="checkbox" id="katlanirayna" value="1" />
                                      Katlanır Ayna </td>
                                    <td height="25"><input name="elektriklicamlar" type="checkbox" id="elektriklicamlar" value="1" />
                                      Elektrikli Camlar </td>
                                  </tr>
                                  <tr class="Metin">
                                    <td height="25"><input name="radyocdcalar" type="checkbox" id="radyocdcalar" value="1" />
                                      Radyo Cd Çalar </td>
                                    <td height="25"><input name="tv" type="checkbox" id="tv" value="1" />
                                      TV</td>
                                    <td height="25"><input name="ebd" type="checkbox" id="ebd" value="1" />
                                    EBD</td>
                                  </tr>
                                  <tr class="Metin">
                                    <td height="25"><input name="edl" type="checkbox" id="edl" value="1" />
                                    EDL</td>
                                    <td height="25"><input name="afu" type="checkbox" id="afu" value="1" />
                                    AFU</td>
                                    <td height="25"><input name="esr" type="checkbox" id="esr" value="1" />
                                    ESR</td>
                                  </tr>
                                  <tr class="Metin">
                                    <td height="25"><input name="hidhold" type="checkbox" id="hidhold" value="1" />
                                    HidHold</td>
                                    <td height="25">&nbsp;</td>
                                    <td height="25">&nbsp;</td>
                                  </tr>
                                </table>                                <table width="599" border="0" cellspacing="0" cellpadding="0">
                                  <tr>
                                    <td width="326"><div align="right">Resim1</div></td>
                                    <td width="273"><input name="FILE1" type="file" id="FILE1"></td>
                                  </tr>
                                  <tr>
                                    <td><div align="right">Resim2</div></td>
                                    <td><input name="FILE2" type="file" id="FILE2"></td>
                                  </tr>
                                  <tr>
                                    <td><div align="right">Resim3</div></td>
                                    <td><input name="FILE3" type="file" id="FILE3"></td>
                                  </tr>
                                  <tr>
                                    <td><div align="right">Resim4</div></td>
                                    <td><input name="FILE4" type="file" id="FILE4"></td>
                                  </tr>
                                  <tr>
                                    <td><div align="right">Resim5</div></td>
                                    <td><input name="FILE5" type="file" id="FILE5"></td>
                                  </tr>
                                  <tr>
                                    <td><div align="right">Resim6</div></td>
                                    <td><input name="FILE6" type="file" id="FILE6"></td>
                                  </tr>
                                  <tr>
                                    <td><div align="right">Resim7</div></td>
                                    <td><input name="FILE7" type="file" id="FILE7"></td>
                                  </tr>
                                  <tr>
                                    <td><div align="right">Resim8</div></td>
                                    <td><input name="FILE8" type="file" id="FILE8"></td>
                                  </tr>
                                  <tr>
                                    <td><div align="right">Resim9</div></td>
                                    <td><input name="FILE9" type="file" id="FILE9"></td>
                                  </tr>
                                  <tr>
                                    <td><div align="right">Resim10</div></td>
                                    <td><input name="FILE10" type="file" id="FILE10"></td>
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
                                  <textarea name="ek_bilgi" rows="6" class="Form100" id="textarea4" cols="20"></textarea></td>
                              </tr>
                              <tr bgcolor="#E7E7E7"  class="genel_yazi">
                                <td colspan="5"></td>
                              </tr>
                              <tr bgcolor="#E7E7E7"  class="genel_yazi">
                                <td colspan="5"></td>
                              </tr>
                              <tr>
                                <td width="65" height="12" class="Text_baslik style2">Vitrin</td>
                                <td height="12" class="Text_baslik style2">Haftanın Fırsatı </td>
                                <td width="247" colspan="3" rowspan="2" class="Text_baslik">&nbsp;</td>
                              </tr>
                              <tr>
							 
                                <td height="25"><input name="vitrin" type="checkbox" id="vitrin" value="1" /></td>
                                <td width="53"><input name="firsat" type="checkbox" id="firsat" value="1" /></td>
								
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