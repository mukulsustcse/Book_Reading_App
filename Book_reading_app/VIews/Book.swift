//
//  Book.swift
//  Book_reading_app
//
//  Created by M. A. Alim Mukul on 06.09.22.
//

import SwiftUI

struct Book: View {
    
    var `book_model`:bookModel
    @EnvironmentObject var model:bookViewModels
    
    var body: some View {
        VStack {
            Text("Book")
            
            GeometryReader {
                geo in
                
                ZStack {
                    Rectangle()
                        .foregroundColor(.white)
                    
                    NavigationLink(destination: bookInDetails(book_model: book_model),
                                   label: {
                        
                        Image("cover\(book_model.id)")
                            .resizable()
                            .padding()
                            .scaledToFit()
                    })
                }
                .frame(width: geo.size.width-40, height: geo.size.height-150)
                .cornerRadius(20)
                .shadow(color: Color(.sRGB, red: 0, green: 0, blue: 0, opacity: 0.5), radius: 10, x: -5, y: 5)
                .padding([.top, .leading, .bottom])
                
            }
            
            VStack {
                Text(book_model.title)
                Text("By - " + book_model.author)
            }
        }
        
    }
}

struct Book_Previews: PreviewProvider {
    static var previews: some View {
        
        let model = bookViewModels()
        
        Book(book_model: model.books[1])
    }
}
