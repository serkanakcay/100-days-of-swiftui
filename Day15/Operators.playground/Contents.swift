import UIKit

//Basit Aritmetik

// +, -, *, / Gibi İşlemler



var score1 = 3*8

var score2 = 100/2

var score3 = 100+2

var totalScore = score1 + score2


//Elma ile Elma Aritmetik İşleme Koyulur
// Ondalık Double bir değerler kendi içerisinde işleme koyulur.
let toplamMesafe = 36.50
var gidilenMesafe = 10.10
var kalanMesafe = toplamMesafe - gidilenMesafe

//Sonucu Tam sayı çıkmayabilir

var number1 = 51
var number2 = 4
var number3 = number1 / number2

// Burada ya Değişken olan number1, number2 tiplerini double yaparak sonucu double almak
// veya sayıyı ondalıklı yazmak 51 değilde 51.0 yazmak

var skor1 = 10

skor1 = skor1 + 5

// Bu şekilde yazmak yerine Compound Assignment Kullanırız

skor1 += 5


// Matematiksel işlemlerde işlem önceliği swift programlama dilinde mevcut


var x = 5
var y = 6
var z = 7

x + y * z

/// Aynı tip Değilse Type Casting  (Tip Dönüşümü) Gerçekleşir.

var a: Double = 2 // Int değerin double olması arasında bir fark yok
var pi = 3.14

a + pi



