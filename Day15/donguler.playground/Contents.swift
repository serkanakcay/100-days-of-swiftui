import UIKit

//----------------------------

// For Döngüleri (for-in)
// bir aralık şeklinde çalışılır
// Açık Aralık 1...5
// Kapalı Aralık 1..<3

for index in 1...5 {
    
    print("sayı \(index)")
}

// Döngüde kaçıncı elemanda olduğunuzu bilmek istemiyorsanız

for _ in 1...3{
    
    print("Merhaba")
}

// Genelde Döngüler Arrayler üzerinde çalıştırılır.


//---------------------------

let namesa: [String] = ["Serkan", "Ahmet", "Mehmet"]


for name in namesa {
    
    print("Merhaba: \(name)")
}

// 'namesa' dizisindeki tüm elemanlar için çalışacak
// her çalıştığında namesa dan alacağı paramteryei name aktaracak
// bu tur dçngüler, kaç kez çalışşacağını array'in eleman sayısında kendi hesaplar.

// EK BİLGİ : Stringlerde aslında bir koleksiyondur !

for harf in "nerhaba" {

    print("harf \(harf)")
    
}

// Bir Array üstünde çalışan for döngüsünde hem elemanların index,
// Hem de kendi değerlerine aynı anda ulaşmak isterseniz...
// Array.enumerated() ->  [(index, deger)]


for (index, harf) in "emirhan".enumerated() {
    
    print("İndex : \(index). harf: \(harf)")
}
