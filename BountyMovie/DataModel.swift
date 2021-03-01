//
//  DataModel.swift
//  BountyMovie
//
//  Created by Adam Mabrouki on 08/02/2021.
//

import Foundation
import SwiftUI
import Kingfisher



struct Profil: Identifiable {
    var id = UUID()
    var name: String
    var location:String
    var image: Image
    var followers:Int
    var following: Int
    var suggestionMovies: [String] = []
    var likedMovie: [ResponseData.Item] = []
    var friends: [Profil] = []
    
}


struct ResponseData: Decodable {
    var movie: [Movie]
    
    struct Movie: Codable {
        let items: [Item]
     
    }
    
    
    // MARK: - Item
    struct Item: Codable,Identifiable {
        let id = UUID()
        let rank, rankUpDown, title: String
        let fullTitle, year: String
        let image: String
        let crew, imDBRating, imDBRatingCount : String
        let description : String
        let trailer : String
        let genre : String
        let time : String
        let mood : String
        
        enum CodingKeys: String, CodingKey {
            case id, rank, rankUpDown, title, fullTitle, year, image, crew, description, trailer, genre, time, mood
            case imDBRating = "imDbRating"
            case imDBRatingCount = "imDbRatingCount"
        }
    }
}


extension ResponseData.Item {
    var kfImage: KFImage {
        KFImage(URL(string: self.image)!)
    }
}

class User: ObservableObject {
    
}





