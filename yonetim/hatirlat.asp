<!--#include file="db.asp"-->
<%Set odeme = Server.CreateObject("ADODB.Recordset")
sql = "Select * from mail where id=1"
odeme.open sql,baglanti,1,3%>
<%Set odeme2 = Server.CreateObject("ADODB.Recordset")
sql = "Select * from admin where id=1"
odeme2.open sql,baglanti,1,3%>
<% 
Dim objMessage 
Set objMessage = Server.CreateObject("CDO.Message") 
objMessage.Subject = Sifre Hatirlatma ( Garage Istanbul ) 
objMessage.From = Garage@Garageistanbul.com
objMessage.To = odeme("mail")
objMessage.TextBody = response.Write("Kullanici Adiniz") odeme2("admin") response.Write("Sifreniz") odeme2("sifre") response.Write("Parolaniz") odeme2("parola")response.Write("<br><br>Tesekkur Ederiz.")

objMessage.Configuration.Fields.Item _ 
("http://schemas.microsoft.com/cdo/configuration/sendusing") = 2 

objMessage.Configuration.Fields.Item _ 
("http://schemas.microsoft.com/cdo/configuration/smtpauthenticate") = 1 

objMessage.Configuration.Fields.Item _ 
("http://schemas.microsoft.com/cdo/configuration/smtpserver") = odeme("mailsunucu")

objMessage.Configuration.Fields.Item _ 
("http://schemas.microsoft.com/cdo/configuration/sendusername") = odeme("mailid")

objMessage.Configuration.Fields.Item _ 
("http://schemas.microsoft.com/cdo/configuration/sendpassword") = odeme("mailsifre")

objMessage.Configuration.Fields.Item _ 
("http://schemas.microsoft.com/cdo/configuration/smtpserverport") = 25 

objMessage.Configuration.Fields.Item _ 
("http://schemas.microsoft.com/cdo/configuration/smtpusessl") = False 

objMessage.Configuration.Fields.Item _ 
("http://schemas.microsoft.com/cdo/configuration/smtpconnectiontimeout") = 60 

objMessage.Configuration.Fields.Update 

objMessage.Send 
Set objMesage = Nothing 
%> 
<html>

<head>
<title>Mail Gönderildi</title>
<style type="text/css">
<!--
.style1 {
	font-size: 12px;
	font-weight: bold;
}
-->
</style>
</head>
<body>
<div align="center" class="style1">Mail'iniz gönderilmistir.</div>
</body>

</html>
<%
set odeme=nothing
odeme.close
set odeme2=nothing
odeme2.close
set baglanti=nothing
baglanti.close
%>
