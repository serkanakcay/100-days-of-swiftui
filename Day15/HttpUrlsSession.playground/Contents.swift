import UIKit

// HTTP URL SESİON

//https://appple.com
//https://appstore.apple.com/us/app/keynote/id47505?mt=12

//?-> Soru işareti ile başlayan kısım sorgu query kısmıdır



//Network Request
// 1- Type
// 2- Headers
// 3- Body

// type :  Request Type
// HTTP Method -> GET, POST

// GET -> Sunucudan bilgi almak için kullanılır
// POST -> Sunucuya Bilgi Göndermek için kullanılır


// Headers
// Aslında bir dictionary. (Key, Value)
// Body de yer alan bilginin hangi formatta olduğunu belirtir. (Örne: JSON, XML)
// Tarayıcı hakkında bilgiler içerir.


//Body
// Sunucunun ve sorgunun oluşturulduğu bilgisayar arasındaki veri alışverişi, bodt üzerinden sağlanır
// Body de yer alan bilginin hangi formatta olduğunu ise Header belirtir.


//Örnek: bir web sitesini yüklediğinizde, Header'da veri tipi HTML olacaktır. Body ise Bir Html Dosyası yer alacaktır.
// Bir iphone uygulamasının atacağı post request ise Body Alanında muhtemelen bir json veya xml türünden data içerecektir.


//Not: Body'de yer alan bilignin formatı sabit değildir. Sorguya ve sunucya göre değişkenlik gösterir.


//MARK: Bir URL oluşturmak

let url = URL(string: "https://apple.com")!


//MARK: - Network Request'lerin Oluşturulması ve Çalıştırılması

//Data Task
let task = URLSession.shared.dataTask(with: url) { data, response, eror in
    
    if let data = data{
        if let string = String(data: data, encoding: .utf8){
            print(string)
        }
    }
    
}







//Oluşturulan Requestin 'in çalıştırılması
task.resume()







// MARK: API-LAR ile Çalışmak


// query parametreleri ile cevabı değiştirebilmek ( URL COMPENENT)

//Dictionary olarak alınan parameterilin URL sonuna eklemesini sağlaayca
extension URL {
    
    func widtQuery(_ queris: [String : String]) -> URL?{
        var components = URLComponents(url: self, resolvingAgainstBaseURL: true)
        components?.queryItems = queris.map{URLQueryItem(name: $0.0, value: $0.1)}
        return components?.url
    }
    
}

//Önce Url Oluşturuyoruz
let apodUrl = URL(string: "https://api.nasa.gov/planetary/apod?api_key=DEMO_KEY")!
//Sonra Data Task Oluşturuyoruz
let apodDast = URLSession.shared.dataTask(with: apodUrl){(data, ss, eror) in
    //Sonra yukarıdaki görevden sonra diyoruiz ki data geliyor mu ve dışarı çıkabiliyormu eğer çıkıyorsa
    if let data = data {
        // String olarak çıkar ve utb8 olarak ekranda görelim
        if let responsring = String(data: data, encoding: .utf8){
            //Format çıktısı JSON Key ve valuelerden oluşuyor
            print(responsring)
        }
    }
}

apodDast.resume()



//MARK: - QUERY Kullanım ile api sorguları

let baseUrL = URL(string: "https://api.nasa.gov/planetary/apod")!

let quer: [String: String] = [

    "api_key" : "DEMO_KEY",
    "date" : "2011-07-12"


]

let queryUrl = baseUrL.widtQuery(quer)!
let queryTask = URLSession.shared.dataTask(with: queryUrl){(data, _, eror) in
    if let data = data {
        
        if let repsonstrign = String(data: data, encoding: .utf8){
            print(repsonstrign)
        }
    }
    
}
