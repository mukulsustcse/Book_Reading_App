//
//  bookInDetails.swift
//  Book_reading_app
//
//  Created by M. A. Alim Mukul on 06.09.22.
//

import SwiftUI

struct bookInDetails: View {
    
    var book_model:bookModel
    @EnvironmentObject var model:bookViewModels
    
    @State var tabSelectedIndex = 0
    
    var body: some View {
        
        TabView(selection: $tabSelectedIndex) {
            
            ForEach(book_model.content.indices, id: \.self) { item in
                
                Text(book_model.content[item])
                    .padding()
            }
            
        }
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .automatic))
        .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
    
    }
}

struct bookInDetails_Previews: PreviewProvider {
    static var previews: some View {
        
        let model = bookViewModels()
        
        bookInDetails(book_model: model.books[0])
    }
}
