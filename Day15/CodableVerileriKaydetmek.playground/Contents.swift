import UIKit


//Codable -> Protokolü hem encodable hemde decodable anlamına gelir.
// Not: Codable protokolünü uyguladığınızda sınıf içerisindeki tüm değişkenler Codable desteklemesi gerekir.

struct Note: Codable{
    
    var title: String
    var text: String
    var timesTamp: Date // Notun ne zaman oluşturulduğu
}



// Bir 'Note' nesnesini oluşturmak.
// Date() -> O anı size verir
let newNote = Note(title: "Alışverişte alınacaklar", text: "Yoğur çay almayı unutma", timesTamp: Date())


//Bir 'Note' nesnesinin, 'plist' (propertyList) formatından encode edilmesi
// Elinizdeki bir nesneyi, hafıza kaydetmek istiyorsanız onu Data FORMUNDA ENCODE etmek zorundasınız
//Encoda dosya formatlarına örnek: JSON, Plist, MP3, MP4



//PropertListEncoder, Encodable protokolünü destekleyen herhangi bir nesneyi data formuna encode eder.
let propertyListEncoder = PropertyListEncoder()


// Bu fonksiyon bir 'throwingFunction' Dolayısıyla çalışma esnasında Error Fırlatabilir.
// Bu tür fonksiyonlar do catch bloğu içerisinde TRY kelimesi ile kullanılmalıdır.

 // Yöntem 1 : Fonksiyon çalıştığı esnasında karşılaşılan hata yakalamak isterseniz bu şekilde
do{
   let encodedNote = try propertyListEncoder.encode(newNote)
} catch {
    // Size error adında bir  değişken verir.
    // Bu error. do bloğunun içerisinde çalışan kodlarda meydana gelen hataları belirtir.
    print(error)
}

// Yöntem 2 : Hatanın bir önemi yok, yalnızca nil olmadığı durumu arıyorsanız...

if let encodedNote = try? propertyListEncoder.encode(newNote){
    print("ENCODED")
    print(encodedNote)
    
}
    
// MARK: DECODING

if let encodedNote = try? propertyListEncoder.encode(newNote){
    let propertListDecoder = PropertyListDecoder()
    
    
    // type: Hangi tür modele decode edilmesini istiyorsunuz?
    // from: Hangi Data kullanarak bu işlemi yapacak

    if let decodedNote =  try? propertListDecoder.decode(Note.self, from: encodedNote){
        print("DECODED")
        print(decodedNote)
    }
}

// MARK: VERİYİ KAYDETMEK

// Her uygulamanın kendi document Diroctery'si vardır.
// Uygulamalar yalnızca kendi klasörlerine veri yazabilir veya okuyabilir.
// Uygulamanın dışında bir veriye ulaşmak istendiğinde bu durum mutlaka kullanıcıya bir alert ile bildirilir.

// Bir projenin birden fazla document directory'si olabilir. fakat varsayılan olarak yanlızca 1 tane oluşturulur.
// Bu nedenle 'documentDirectory' bir array'dir ve biz ilk elmana erişmek isteriz. (.first)
let documentDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
    
//'documentDirectory' size bir klasör verir.
// Bu klasör içerisinde yeni bir dosya uzantısı oluşturmanız gerekiyor.

//.... /Documents/notes.plist
let noteUrl = documentDirectory.appendingPathComponent("notes").appendingPathExtension("plist")


// MARK: ENCODE EDİLMİŞ DATA'NIN FİLEMANAGER İLE OLUŞTURULMUŞ URL'E KAYDEDİLMESİ


if let encodedNote = try? propertyListEncoder.encode(newNote){
    
    //noFileProtection: Var olan dosyanın üzerine yazılmasını engellemez
    
    // Data'nın belirtilen bir  Urle YAZILMASINI sağlar
   try? encodedNote.write(to: noteUrl, options: .noFileProtection)
}

// MARK: VERİYİ OKUMAK

// Data'nın özel bir init'i vardır;
// Data(contentOf:) -> parametre olarak vereceğiniz URL' de bulunan datayı kullanarak initialize edilmesi sağlar.

let propertListDecoder = PropertyListDecoder()

// Adım 1 : Dosyayı Data formadında okumak
if let  retrievedNoteData = try? Data(contentsOf: noteUrl){
    
    // Adım 2: propertyListDecoder kullanarak Data'dan note objesi oluşturmak
    
    if let decodedNote = try? propertListDecoder.decode(Note.self, from: retrievedNoteData){
        print(decodedNote)
    }
}

