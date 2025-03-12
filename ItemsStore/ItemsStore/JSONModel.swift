import Foundation

struct Category: Codable {
    var id: Int
    var name: String
    var slug: String
    var image: String
    var creationAt: String
    var updatedAt: String
}

struct Product: Codable {
    var id: Int
    var title: String
    var slug: String
    var price: Int
    var description: String
    var category: Category
    var images: [String]
    var creationAt: String
    var updatedAt: String
    
}
