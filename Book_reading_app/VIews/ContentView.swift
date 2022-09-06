//
//  ContentView.swift
//  Book_reading_app
//
//  Created by M. A. Alim Mukul on 05.09.22.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var model:bookViewModels
    
    var body: some View {
        
        NavigationView {
            
            VStack(alignment: .center) {
                
                ScrollView(showsIndicators: false)  {
                    
                    ForEach(model.books) {
                        index in
                        
                        NavigationLink(destination: Book(book_model: index),
                                       label: {
                            
                            ZStack {
                                
                                LazyVStack(alignment: .leading) {
                                    
                                    Text(index.title)
                                    
                                    Text(index.author)
                                    
                                    Image("cover\(index.id)")
                                        .resizable()
                                        .padding([.leading, .bottom, .trailing])
                                        .scaledToFit()
                                    
                                }
                                .padding(.all)
                                
                            }
                        })
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(bookViewModels())
    }
}
