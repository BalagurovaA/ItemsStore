import Foundation
import UIKit

class URLData {
    var sesionConfiguration = URLSessionConfiguration.default
    let session = URLSession.shared
    let decoder = JSONDecoder()
    
    func gettingData() {
        
        guard let url = URL(string: "https://api.escuelajs.co/api/v1/products") else { return }
        
        session.dataTask(with: url) {[weak self] (data, response, error) in
            
            guard let strongSelf = self else {return}
            
            //            if let error = error {
            //                print("Ошибка: \(error.localizedDescription)")
            //                return
            //            }
            //
            //            guard let data = data else {
            //                print("Данные не получены")
            //                return
            //            }
            
            if error == nil, let parsData = data {
                let product = try?
                         strongSelf.decoder.decode([Product].self, from: parsData)
                         print(product ?? "ERROR")
            } 
            else {
                print("Данные некорректны" )
            }
         
        
        }.resume()
        
    }
}
