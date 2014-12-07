<!--#include file="db.asp"-->
<%
Set odeme = Server.CreateObject("ADODB.Recordset")
mail = Request.Form("mail")
mailsunucu = Request.Form("mailsunucu")
mailid = Request.Form("mailid")
mailsifre = Request.Form("mailsifre")
Set odeme = baglanti.Execute("UPDATE mail SET mail='" & mail & "','"&mailsunucu&"','"&mailid&"','"&mailsifre&"' WHERE id=1")
set odeme=nothing
baglanti.close
set baglanti=nothing
%>
<style type="text/css">
<!--
.style1 {
	font-size: 10px;
	font-family: Verdana, Arial, Helvetica, sans-serif;
	font-weight: bold;
}
-->
</style>

<div align="center" class="style1"><a href="2el.asp">Yeni Mail Adresi Baþarýyla Deðiþtirildi Anasayfaya Gitmek Ýçin týklayýn.</a></div>
