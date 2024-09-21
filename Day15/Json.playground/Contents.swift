import UIKit


//JSON Temelleri
// Basit bir JSON örneği

/*
 
 {
 "name": "EMİRHAN"
 "favorşte_ move" : {
 
 "title" : "minions"
 }
 

 
 }
 */

// Json ve Swift Benzerlikleri
// {} -> Dictionary (key: Value)
// [] -> Array
// "" -> String
// Sayılar ve Bool Değerler, "" ile belirtilez Örn: 12, true



//json Array'leri

/*
 "movies": [{
 
 "title": "findig dory"
 "realse_year" : "2016"
 }
 ]
 */


//JSON  -> [String : Any]



// MARK - JSON dan swift veri Modellerine Dönüşüm


extension URL {
    func withQueries(_ queries: [String: String]) -> URL? {
        var components = URLComponents(url: self, resolvingAgainstBaseURL: true)
        components?.queryItems = queries.map { URLQueryItem(name: $0.key, value: $0.value) }
        return components?.url
    }
}


let baseUrL = URL(string: "https://api.nasa.gov/planetary/apod")!

let quer: [String: String] = [

    "api_key" : "DEMO_KEY",
    "date" : "2011-07-12"


]

let queryUrl = baseUrL.withQueries(quer)!
let queryTask = URLSession.shared.dataTask(with: queryUrl){(data, _, eror) in
    
    let jsonDecoder = JSONDecoder()
    if let data = data {
        if let dicvitionary = try? jsonDecoder.decode([String: String].self, from: data){
            
            if let repsonstrign = String(data: data, encoding: .utf8){
               // print(dicvitionary)
            }
        }
        
    }
    
}

queryTask.resume()


// MARK : JSON'DAN özel veri tiplerini Dönüşüm

// Apı dan gelen datanın formatına bakalım JSON

/*
 "date" : "2017"
 "explantion" : "Açıklama metni"
 "hdurl" : "yüksek çözünürlük"
 
 */




struct photoInfo: Codable{
    var title: String
    var description: String
    var url : URL
    var copyright: String?
    
    
    // Json ile Struct Sınıfımızdaki Propertylerin Uyuşması için Enum Yazarız CODİNGKEY porotokolü alır
    enum CodingKeys :String, CodingKey{
        case title = "title"
        case description = "explanation"
        case url = "url"
        case copyright = "copyright"
    }
    
}







let queryTassk = URLSession.shared.dataTask(with: queryUrl){(data, _, eror) in
    
    let jsonDecoder = JSONDecoder()
    if let data = data {
        do {
            let dicvitionary = try? jsonDecoder.decode(photoInfo.self, from: data)
            print(dicvitionary!)
            
        }catch {
            print(error)
        }
    }
    
}

queryTask.resume()


// Network Kodlarının bir fonksiyona taşınması

