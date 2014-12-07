<!--#include file="db.asp"--><head>
<META HTTP-EQUIV="Content-Type" CONTENT="text/html; charset=windows-1254">
<STYLE type=text/css>
A:link {
	COLOR: #000000
}
A:visited {
	COLOR: #000000
}
A:hover {
	COLOR: #9b0000
}
A:active {
	COLOR: #006600
}
.style1 {
	color: #FFFFFF;
	font-size: 12px;
	font-weight: bold;
	font-family: Verdana, Arial, Helvetica, sans-serif;
}
body {
	background-color: gray;
}
</STYLE>
<%

 admin=Request.Form("admin")
 sifre=Request.Form("sifre")
 parola=Request.Form("parola")
  
  Set uye_giris = Server.CreateObject("adodb.recordset")
  SQL="Select * from admin where admin='"&admin&"' and sifre='"&sifre&"' and parola='"&parola&"'"
  uye_giris.open SQL,baglanti,1,3
  
  IF Not uye_giris.EOF Then
  Session("giris") ="tamam"
  uye_giris.Update
  %>
  
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1"><table width="650" border="1" align="center" cellpadding="0" cellspacing="0" order bordercolor="#FFFFFF">
  <tr>
    <td width="650" height="30"><div align="center"></div>      <div align="center"><a href="default.asp"><span class="style1">Anasayfaya Donmek İçin Tıklayın <meta http-equiv="refresh" content="0;URL=default.asp"></span><br> 
    </a></div></td>
  </tr>
</table>
  
  <%
  Else
%>

  <table width="650" border="1" align="center" cellpadding="0" cellspacing="0" order bordercolor="#FFFFFF">
  <tr>
    <td width="650"><div align="center"></div>      <div align="center">
        <p><a href="default.asp"><span class="style1">Kullanıcı Adınızı Yada Şifrenizi Hatalı Girdiniz Lütfen Geri Giderek Tekrar Deneyiniz.</span></a></p>
        <p><a href="default.asp"><input type=button value="Geri" onClick="history.back()"><br> 
          </a></p>
      </div></td>
  </tr>
</table>

<%
  End IF

%>