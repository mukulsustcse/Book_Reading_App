//
//  bookViewModels.swift
//  Book_reading_app
//
//  Created by M. A. Alim Mukul on 06.09.22.
//

import Foundation

class bookViewModels : ObservableObject {
    
    @Published var books = [bookModel]()
    
    init() {
        
        self.books = getLocalJson()
    }
    
    func getLocalJson() -> [bookModel] {
        
        let pathString = Bundle.main.path(forResource: "Data", ofType: "json")
        
        if let path = pathString {
            
            let url = URL(fileURLWithPath: path)
            
            do {
                
                let data = try Data(contentsOf: url)
                
                let decoder = JSONDecoder()
                
                let recallData = try decoder.decode([bookModel].self, from: data)
                
                for i in 0..<books.count {
                    
                    books[i].uuid = UUID()
                }
                
                self.books = recallData
                
                return books
                
            } catch {
                print(error)
            }
        }
        
        return [bookModel]()
    }
    
}
