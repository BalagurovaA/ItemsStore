//
//  itemsStoreTests.swift
//  itemsStoreTests
//
//  Created by Kristofer Sartorial on 3/11/25.
//

import XCTest
@testable import itemsStore

final class itemsStoreTests: XCTestCase {
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testExample() throws {
        
        
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
    }
    
    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    
//    func testClosureMemoryLeak() {
//        
//        weak var weakURLData: URLData?
//        
//        
//        autoreleasepool {
//            let urlData = URLData() // Создаем объект
//            weakURLData = urlData // Сохраняем weak ссылку
//            
//            // Шаг 3: Создаем замыкание, которое захватывает weak ссылку на urlData
//            let closure = { [weak urlData] in
//                urlData?.gettingData { _ in } // Теперь это корректный trailing closure
//            }
//
//            // Шаг 4: Выполняем замыкание
//            closure()
//        }
//        
//        
//        // Проверяем, что замыкание освобождено
//        XCTAssertNil(weakURLData, "Объект URLData не был освобожден из памяти!")
//    }
    
}
