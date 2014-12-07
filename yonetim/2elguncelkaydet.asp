<!--#include file="db.asp"-->
<%
id = Request.QueryString("id")
If Not(IsNumeric(id)) OR id = "" THEN
	Response.Redirect "index.asp" : Response.End
End If
Set odeme = Server.CreateObject("ADODB.Recordset")
marka = Request.Form("marka")
vitrin = CInt(Request.Form("vitrin"))
firsat = CInt(Request.Form("firsat"))
model = Request.Form("model")
yil = Request.Form("yil")
renk = Request.Form("renk")
yakit = Request.Form("yakit")
vites = Request.Form("vites")
m_guc = Request.Form("m_guc")
kilometre = Request.Form("kilometre")
plaka = Request.Form("plaka")
fiyat = Request.Form("fiyat")
ek_bilgi = Request.Form("ek_bilgi")
aksesuar = Request.Form("aksesuar")
aractipi = Request.Form("aractipi")
silindirhacmi = Request.Form("silindirhacmi")
Set odeme = baglanti.Execute("UPDATE tum SET marka='" & marka & "', vitrin='" & vitrin & "', firsat='" & firsat & "', model='" & model & "', yil='" & yil & "', renk='" & renk & "', yakit='" & yakit & "', vites='" & vites & "', m_guc='" & m_guc & "', kilometre='" & kilometre & "', plaka='" & plaka & "', fiyat='" & fiyat & "', ek_bilgi='" & ek_bilgi & "', aksesuar='" & aksesuar & "',aractipi='" & aractipi & "',silindirhacmi='" & silindirhacmi & "' WHERE id=" & id)
set odeme=nothing
baglanti.close
set baglanti=nothing
%>