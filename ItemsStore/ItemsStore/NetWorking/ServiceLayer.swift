import Foundation
import UIKit


class URLData {
    private var products: [Product] = []
    let decoder = JSONDecoder()
    func gettingData() {
        
        _ = URLSessionConfiguration.default
        let session = URLSession.shared
        
        guard let url = URL(string: "https://api.escuelajs.co/api/v1/products") else {
            print("Invalid address")
            return
        }
    
        session.dataTask(with: url) {[weak self] (data, response, error) in
            
//            guard let strongSelf = self else {return}
            
            if let error = error {
                print("Error: \(error.localizedDescription)")
                return
            }
            
            guard let data = data else {
                print("Data hasn't got")
                return
            }
            
            guard let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200 else {
                print("Error: invalid server's response")
                return
            }
            
            do {
                let decoder = JSONDecoder()
                let products: [Product] = try decoder.decode([Product].self, from: data)
                print(products)

            } catch {
                print("Decode error: \(error)")
            }
            
        }.resume()
        
    }
    func getProducts() -> [Product] {
        return products
    }
    

}

