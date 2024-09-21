import UIKit


//Birden fazla nesneyi bir arada tutmaya çalışıyoruz.

//------------------ARRAY-----------------------------
//Array
//Aynı türden verileri, bir arada tutan yapılardır.

//Array Gösteirmi
// []
// ["eleman 1", "eleman2", "eleman3", "eleman4]

//Array Tanımlaması

var names:[String] = ["Serkan", "Emirhan", "ali"]

//Tipini belirtmezsek bile kendi otomatik olarak algılılıyor
var names2 = ["Serkan", "Emirhan", "ali"]

var numbers = [10, 15, -12, 3]

var bools = [true, false, true, false]


//xyz elemanı bu dizide var mı? (Arraylerde en çok sorduğumuz soru)

//contains -> İçinde varmı diye kontrol eder örneğin; 25 sayısı numbers arrayında varmı varsa: true dönecektir.
// true veya false dönen sonuç varsa if içine alınır


if numbers.contains(25){
    print("İçerisinde bulunmaktadır.")
}

//let ile tanımlanan bir diziye eleman eklenemez veya çıkartılmaz

//-------------------------ARRAY TİPLERİ------------------------

//Elemanı olmayan bir dizi tanımlanması

var takipciler: [String] = [] // Boş bir array- elemanı olmayan array

var myArray:Array<Int> = []  // Çok az karşılaşacağımız farklı bir array tanımlanması, boş bir array


//Tercih edilen kullanım

var yaslar = [Int]()

//Arrayler ile çalışmak

var sifirlar = [Int](repeating: 0, count: 100)

//Bir Arrayda kaç adet eleman var?

var sehirler: [String] = ["istanbul", "ankara", "eskisehir"]

// Kaç adet elemandan oluştuğunu count ile alabiliriz.
sehirler.count

//Sıfır elemanlı bir Array nasıl anlaşılır?
// yöntem 1: count == 0
// yöntem2 : isEmpty -> Boş mu sorusu sorar

if sifirlar.isEmpty{
    print("Hayır içi dolu")
}

// Arraylerde Index
// [eleman1, "eleman2", "eleman3"]
// eleman1: 0
// eleman2: 1
// eleman3: 2

// İndex numaraları sıfırdan başlar
// index ile elemanlara ulaşmak

// sehirlerin 0 elemanına ulaşırız
let sehirim = sehirler[0]

print(sehirim)
// Dikkat : Index ile bir elemana ulaşırken, index'in array.count -1'den büyük olmadığından emin olmalısınız
// Index ile array'deki bir elemana değer atamak
//array'in var ile tanımlanmış olması gerekiyor

sehirler[1] = "ananas"


// Array'e yeni elemanları Eklemek ( append)

// yöntem 1: += iki arrayı arka arka arkaya kullanabiliriz
// yöntem 2: array.append(element:)

// Her zaman sonuna ekler.

sehirler.append("Yozgat")

sehirler += ["Ankaraaa", "yeni ankara"]

print(sehirler)

// İstenilen bir İndex 'e Eleman Eklemek
//İns

var height = [12, 34, 56, 76]

// İnsert ile bir sağa kaydırarak uygun konuma at: ile ekleriz.
// apenden farkı append sonuna ekler.
height.insert(25, at: 3)



var appleUrunler = ["apple", "mac", "phone"]


let cıkartilanElemann = appleUrunler.remove(at: 2)

print("çıkarılanta eleman \(cıkartilanElemann)")

//Son Elmanı Çıkartır
appleUrunler.removeLast()

print(appleUrunler)

//Tüm elemanları Çıkartır
appleUrunler.removeAll()

//Birden Fazla arrayler kendi aralarında birleştirilebiliyor.

let number1 =  [1,2,4,5]
let number2 = [7,8,9]

let newDizi = number1 + number2


print(newDizi)

// Çok boyutlu Diziler

/*
 X O X Array 1
 O O X array 2
 X X O array 3
 */


let Array1 = ["x", "o", "x"]
let Array2 = ["o", "o", "x"]
let Array3 = ["x", "x", "o"]

let gameport = [Array1, Array2, Array3]

gameport[0]
gameport[1]
gameport[2]



// İki, boyutlu elamana ulaşmak

gameport[0][0]

//---------------------------------------------------------------

//  Dictionary
// [key1 : value1, key2: value2, key3 : value3 ]

// Dictionary Gösterimi


var scores = ["Beşiktaş " : 89, "Galatasaray" : 87, "fenerbahçe" : 65]

// Boş dicitonary  tanımlaması


var myDictitonary = [String : Int]() // Tercih edilen yöntem
var mydictionary2 : [String : Int] = [:]
var mydict3 = Dictionary<String, Int>()

// Elemanların değerini güncellemek
// Not olmayan bir key ile güncelleme yaparsanız çalışmaz ve KEY SENSİTİVE bulunmaktadır.

scores["Galatasaray"] = 90


// Eski değerini güncellemek

let oldValue = scores.updateValue(90, forKey: "fenerbahçe")


// For-in Döngüleri ve Dictionary'ler

let araclar = ["Bisiklet": 3 ,"scotter": 3 ,"araba": 3]

for (aracİsmi, sayisi) in araclar {
    
    print("Arcın İsmi :  \(aracİsmi). ve araç sayısı :  \(sayisi)")
}

// Not :  Dictionary'ler ASLA sıralı değildir.

//---------------------------

// Whilde Döngüleri - Koşullu Döngüler

var can = 3
var hayatta = true

while hayatta{
//   Hayatta ise çalışacak
  can -= 1
    
    if can == 0 {
        
     hayatta = false
    }
    
}

// Bazen döngü tamamlanmadan bitirmek isterseniz ...
// yöntem : break


for index in -3...3{
    
    if index == 0 {
        
        break // inde 0 olduğu zaman dmbgü kırılır artık index değeri artmaz .
    
    }
}
