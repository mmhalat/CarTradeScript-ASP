<%Server.ScriptTimeout = 3600%>
<!--#include file="db.asp"-->
<%
Set odeme = Server.CreateObject("ADODB.Recordset")
sql = "Select * from marka"
odeme.open sql,Baglanti,1,3
marka=request.Form("marka")

odeme.addnew
odeme("marka") = marka
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
<span class="style1"><strong><strong>
</strong>
</span>
<div align="center"><a href="markaekle.asp"><span class="style1"><strong>Yeni Marka Kayd Edildi Kayd Ettiginiz Markayi Görmek Ve Yeni Giris Yapmak Için Tiklayin</strong></span></a><br>
</div>
