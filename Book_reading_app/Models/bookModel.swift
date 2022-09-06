//
//  bookModel.swift
//  Book_reading_app
//
//  Created by M. A. Alim Mukul on 06.09.22.
//

import Foundation

class bookModel: Identifiable, Decodable {
    
    var uuid:UUID?
    var title:String
    var author:String
    var isFavourite:Bool
    var currentPage:Int
    var rating:Int
    var id:Int
    var content:[String]
}
