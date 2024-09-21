import UIKit

// Mantıksal Operatörler

// ==  -> Eşit mi?
// != -> Eşit Değil mi?
// > -> Büyük mü?
// >= -> Büyük Veya Eşit mi?
// < -> Küçük mü?
// <= Küçük veya Eşit Mi?
// && -> VE
// || -> VEYA
// ! -> Değil

// If Yapıları

// 100 Derece civarlarında Kaynıyor
let kaynamaNoktasi = 100

if kaynamaNoktasi >= 100 {
    print("Su Kaynıyor")
    
}else {
    print("Su Henüz Kaynamıyor")
}

///------------------------------


var isiklarAcikmi = true
var acikKalmaSüresi = 1

if isiklarAcikmi == true && acikKalmaSüresi >= 2 {
    
    print("Işıklar Açık ve Süresi 2 Dakikadan Büyük")
}else {
print("Işıklar kapalı ve Süresi 2 Dakikadan küçük")
}

// ÜÇ KOŞULLU DAHA İYİ ELSE İF YAPISI

var yarisBitirmeSirasi =  1

if yarisBitirmeSirasi == 1 {
    print("Birinci olarak bitirdin")
} else if yarisBitirmeSirasi == 1 {
    print("İkinci olarak bitirdin")
} else {
print("Sıralamaya Giremediniz")
}

//Boolen Değerler

let number = 1000
let isSmalNumber = number < 10

// Biz değişken veya sabitler arasında if yazmadan daha farklı birşekilde koşulları denetleyebiliriz

let hizlimiti = 180
let benimHizim = 160
let sinirArtmisMi = benimHizim > hizlimiti

/// if yapıları true olma durumu ile başlar ancak bunun tersini false olma durumunu almak için ! ünlem koyarız

let karYagiyorMu = false

if !karYagiyorMu {
print("kar yağmıyor")
}


// And ile Aralık tanımlamak

let sicaklik = 23

// Sıcaklık, 20 dereceden büyükeşit mi veya 25 dereceden küçük eşit mi?

if sicaklik >= 20 && sicaklik <= 25 {
    print("Sıcaklık Güzel")
} else if sicaklik < 20 {
    print("hava yanıyor")
} else {
    print("Hava İnanılmaz Soğuk")
}


var telefonSarjdaMi = false
var telefonunGücüVarMi = true

if telefonSarjdaMi || telefonunGücüVarMi {
    
    print("Telefonun Gücü var, kullanabilirsin")
    
} else {
    print("Telefonun gücü Yok Şarja Takılı")
}


// OR - VEYA nın Durumları

// || true, true -> true
// || true, false -> true
// || false, false -> false
// || true, false -> false

// Switch Yapıları


let tekerlekSayisi = 2

switch tekerlekSayisi {
case  1:
    print("Tek tekerli bisiklet")
case 2 :
    print("iki tekerlekli bisiklet")
case 3 :
    print("Üç Tekerlekli Bisiklet")
default:
    print("başka yok")
}

// Default Bırak Demek ve Bitirir
// Break Kopartır döngüyü


let karakter = "aı"

switch karakter {
case "a", "b", "c" :
    print("sesli karakter")
default :
    print("sesli değil")
}

// switch case yapısı ile dizi gibi sorgulama yapabiliriz



// Swift Programlama Dilinde Aralık tanımlamak Çok Kolay

// x...y -> x dahil ve y dahil
// x..<y -> x dahil ama y dahil değil



let mesafe = 120

switch mesafe {
case 1...10 :
    print("anca gidersin")
case 20...80:
    print("gidebilir")
case 80...140:
    print("uçarsın")
    
default:
    print("çok yüksek değer")
}



// Ternaary Operator Nedir Detaylı bak
var larest : Int
let a = 15
let b = 20


if a > b {
larest = a
} else {
    larest = b
}


// Yukarıdaki Kodun Yerine Ternanry Operators kULLANIRIZ


larest = a > b ? a : b  // sol taraf koşul sonra doğru olması durumunda ilk "a" ya atanır değilse en sağ kısımdır

























