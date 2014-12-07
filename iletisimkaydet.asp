<%Server.ScriptTimeout = 3600%>
<!--#include file="db.asp"-->
<%
Set odeme = Server.CreateObject("ADODB.Recordset")
sql = "Select * from iletisim"
odeme.open sql,Baglanti,1,3
ad=request.Form("ad")
baslik=request.Form("baslik")
mesaj=request.Form("mesaj")

odeme.addnew
odeme("ad") = ad
odeme("baslik") = baslik
odeme("mesaj") = mesaj
odeme.Update
odeme.close
set odeme=nothing
baglanti.close
set baglanti=nothing
%>
<style type="text/css">
<!--
.style1 {
	font-size: 10px;
	font-family: Verdana, Arial, Helvetica, sans-serif;
}
-->
</style>
<a href="markaekle.asp">
<div align="center" class="style2 style1">
<div align="center"><span class="style1"><strong><strong>
</strong>Mesaj&#305;n&#305;z Kayd Edildi Anasayfaya 2 Saniye &#304;&ccedil;inde Aktar&#305;l&#305;yorsunuz<meta http-equiv="refresh" content="1;default.asp"> </span></div>
