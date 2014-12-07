<%Server.ScriptTimeout = 3600%>
<!--#include file="db.asp"-->
<%
Set odeme = Server.CreateObject("ADODB.Recordset")
sql = "Select * from tum"
odeme.open sql,Baglanti,1,3

Set Upload = Server.CreateObject("Persits.Upload.1")
Upload.Save Server.Mappath("upload")

For Each Item in Upload.Form
 	Select Case Item.Name
		Case "marka"
			marka = Item.Value
		Case "aksesuar"
			aksesuar = Item.Value
		Case "ek_bilgi"
			ek_bilgi = Item.Value
		Case "fiyat"
			fiyat = Item.Value
		Case "plaka"
			plaka = Item.Value
		Case "kilometre"
			kilometre = Item.Value
		Case "m_guc"
			m_guc = Item.Value
		Case "vites"
			vites = Item.Value
		Case "yakit"
			yakit = Item.Value
		Case "renk"
			renk = Item.Value
		Case "yil"
			yil = Item.Value
		Case "model"
			model = Item.Value
		Case "firsat"
			firsat = Item.Value
		Case "silindirhacmi"
			silindirhacmi = Item.Value
		Case "aractipi"
			aractipi = Item.Value
		Case "vitrin"
			vitrin = Item.Value
		Case "otomatikvites"
			otomatikvites = Item.Value
		Case "eps"
			eps = Item.Value
		Case "surucuairbag"
			surucuairbag = Item.Value
		Case "yolbilgisayari"
			yolbilgisayari = Item.Value
		Case "alarm"
			alarm = Item.Value
		Case "sanziman"
			sanziman = Item.Value
		Case "acilirtavan"
			acilirtavan = Item.Value
		Case "merkezikilit"
			merkezikilit = Item.Value
		Case "hizkontrolsistemi"
			hizkontrolsistemi = Item.Value
		Case "aliminyumjant"
			aliminyumjant = Item.Value
		Case "diskfren"
			diskfren = Item.Value
		Case "klima"
			klima = Item.Value
		Case "hidrolikdireksiyon"
			hidrolikdireksiyon = Item.Value
		Case "yolcuairbag"
			yolcuairbag = Item.Value
		Case "immobilizer"
			immobilizer = Item.Value
		Case "derikoltuk"
			derikoltuk = Item.Value
		Case "xenonfarlar"
			xenonfarlar = Item.Value
		Case "yanairbag"
			yanairbag = Item.Value
		Case "cdcalar"
			cdcalar = Item.Value
		Case "onsisfar"
			onsisfar = Item.Value
		Case "kumandalianahtar"
			kumandalianahtar = Item.Value
		Case "navigasyon"
			navigasyon = Item.Value
		Case "elektriklikoltuk"
			elektriklikoltuk = Item.Value
		Case "hafizalielektriklikoltuk"
			hafizalielektriklikoltuk = Item.Value
		Case "parkmesafekontrol"
			parkmesafekontrol = Item.Value
		Case "koltukisitma"
			koltukisitma = Item.Value
		Case "arkaperde"
			arkaperde = Item.Value
		Case "katlanirayna"
			katlanirayna = Item.Value
		Case "elektriklicamlar"
			elektriklicamlar = Item.Value
		Case "radyocdcalar"
			radyocdcalar = Item.Value
		Case "tv"
			tv = Item.Value
		Case "ebd"
			ebd = Item.Value
		Case "edl"
			edl = Item.Value
		Case "afu"
			afu = Item.Value
		Case "esr"
			esr = Item.Value
		Case "hidhold"
			esr = Item.Value
			
	End Select
Next

odeme.addnew
odeme("marka") = marka
odeme("model") = model
odeme("yil") = yil
odeme("renk") = renk
odeme("yakit") = yakit
odeme("vites") = vites
odeme("m_guc") = m_guc
odeme("kilometre") = kilometre
odeme("plaka") = plaka
odeme("fiyat") = fiyat
odeme("ek_bilgi") = ek_bilgi
odeme("aksesuar") = aksesuar
odeme("vitrin") = CINT(vitrin)
odeme("firsat") = CINT(firsat)
odeme("aractipi") = aractipi
odeme("silindirhacmi") = silindirhacmi
odeme("otomatikvites") = CINT(otomatikvites)
odeme("eps") = CINT(eps)
odeme("surucuairbag") = CINT(surucuairbag)
odeme("yolbilgisayari") = CINT(yolbilgisayari)
odeme("alarm") = CINT(alarm)
odeme("sanziman") = CINT(sanziman)
odeme("acilirtavan") = CINT(acilirtavan)
odeme("merkezikilit") = CINT(merkezikilit)
odeme("hizkontrolsistemi") = CINT(hizkontrolsistemi)
odeme("aliminyumjant") = CINT(aliminyumjant)
odeme("diskfren") = CINT(diskfren)
odeme("klima") = CINT(klima)
odeme("hidrolikdireksiyon") = CINT(hidrolikdireksiyon)
odeme("yolcuairbag") = CINT(yolcuairbag)
odeme("immobilizer") = CINT(immobilizer)
odeme("derikoltuk") = CINT(derikoltuk)
odeme("xenonfarlar") = CINT(xenonfarlar)
odeme("yanairbag") = CINT(yanairbag)
odeme("cdcalar") = CINT(cdcalar)
odeme("kumandalianahtar") = CINT(kumandalianahtar)
odeme("navigasyon") = CINT(navigasyon)
odeme("elektriklikoltuk") = CINT(elektriklikoltuk)
odeme("hafizalielektriklikoltuk") = CINT(hafizalielektriklikoltuk)
odeme("parkmesafekontrol") = CINT(parkmesafekontrol)
odeme("koltukisitma") = CINT(koltukisitma)
odeme("arkaperde") = CINT(arkaperde)
odeme("katlanirayna") = CINT(katlanirayna)
odeme("elektriklicamlar") = CINT(elektriklicamlar)
odeme("radyocdcalar") = CINT(radyocdcalar)
odeme("tv") = CINT(tv)
odeme("ebd") = CINT(ebd)
odeme("edl") = CINT(edl)
odeme("afu") = CINT(afu)
odeme("esr") = CINT(esr)
odeme("hidhold") = CINT(hidhold)
i = Int(1)
For Each File in Upload.Files
	odeme("resimlink" & i) = "http://garageistanbul.com/yonetim/upload/" & File.FileName
	i = Int(i + 1)
	Next
odeme("aracayir") = 2
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

<div align="center" class="style2 style1"><strong>Bilgiler Kayd Edildi Kayd Ettiginiz Bilgiyi Görmek Için <br>
  <a href="0km.asp">Buraya</a><br> 
Yeni Bir Araç Girisi Yapmak Için<br>
<a href="0kmekle.asp">Buraya TIKLAYIN</a></strong></div>
