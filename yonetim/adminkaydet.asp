<!--#include file="db.asp"-->
<%
id = Request.QueryString("id")
If Not(IsNumeric(id)) OR id = "" THEN
	Response.Redirect "index.asp" : Response.End
End If
Set odeme = Server.CreateObject("ADODB.Recordset")
admin = Request.Form("admin")
sifre = Request.Form("sifre")
parola = Request.Form("parola")
Set odeme = baglanti.Execute("UPDATE admin SET admin='" & admin & "', sifre='" & sifre & "', parola='" & parola & "' WHERE admin.id=" & id)
set odeme=nothing
baglanti.close
set baglanti=nothing
%>