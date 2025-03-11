import Foundation

struct Category: Codable {
    var id: UUID
    var name: String
    var slug: String
    var image: String
    var creationAt: Date
    var updatedAt: Date
    init() {
        id = UUID()
        name = ""
        slug = ""
        image = ""
        creationAt = Date()
        updatedAt = Date()
    }
}

struct Product: Codable {
    var id: UUID
    var title: String
    var slug: String
    var price: Int
    var description: String
    var category: Category
    var images: [String]
    var creationAt: Date
    var updatedAt: Date
    
    init() {
        
        id = UUID()
        title = ""
        slug = ""
        price = 0
        description = ""
        category = Category()
        images = []
        creationAt = Date()
        updatedAt = Date()
        
    }
}
