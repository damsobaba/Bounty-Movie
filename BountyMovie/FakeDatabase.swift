//
//  FakeDatabase.swift
//  BountyMovie
//
//  Created by Adam Mabrouki on 08/02/2021.
//

import Foundation
import SwiftUI
import Kingfisher

class FakeDatabase {
    
    static let shared = FakeDatabase()

    lazy var movies: [ResponseData.Item] = {
        return Array(items.prefix(upTo: 5))
    }()
    
    lazy var items: [ResponseData.Item] = {
        return loadJson(filename: "MostPopularMovies")!.items
    }()
    
    func loadJson(filename fileName: String) -> ResponseData.Movie? {
        if let url = Bundle.main.url(forResource: fileName, withExtension: "json") {
            do {
                let data = try Data(contentsOf: url)
                let decoder = JSONDecoder()
                let jsonData = try decoder.decode(ResponseData.Movie.self, from: data)
                return jsonData
            } catch {
                print("error:\(error)")
            }
        }
        return nil
    }
    
    func searchMovie(title: String) -> ResponseData.Item? {
        return items.first { $0.title == title }
    }
    
    func searchMovie(titles: [String]) -> [ResponseData.Item] {
        return titles.compactMap { searchMovie(title: $0) }
    }
    
    
}

let friends = [
    
    Profil(name: "Lydia", location: "Grenoble", image:Image("user2"), followers: 23, following: 15, suggestionMovies: ["The White Tiger"], likedMovie: FakeDatabase.shared.items.filter{$0.fullTitle.contains("The")} ),
    
    Profil(name: "Aurelia", location: "Paris", image:Image("user1"), followers: 17, following: 24, suggestionMovies: ["Outside the Wire"], likedMovie: FakeDatabase.shared.items.filter{$0.fullTitle.contains("G")}),
    
    Profil(name: "Gary", location: "Bretagne", image: Image("user3"), followers: 19, following: 6, suggestionMovies: ["Autant en emporte le vent"], likedMovie: FakeDatabase.shared.items.filter{$0.fullTitle.contains("D")}),
    
    Profil(name: "Luc", location: "Alsace", image: Image("user4"), followers: 7, following: 15, suggestionMovies: ["Scream"], likedMovie: FakeDatabase.shared.items.filter{$0.fullTitle.contains("C")}),
    
    Profil(name: "Ben", location: "Nice", image: Image("user5"), followers: 22, following: 31, suggestionMovies: ["Into the wild"], likedMovie: FakeDatabase.shared.items.filter{$0.fullTitle.contains("P")}),
    
    Profil(name: "Cathy", location: "Normandie", image: Image("user6"), followers: 18, following: 8, suggestionMovies: ["Vol au dessus d'un nid de coucou"], likedMovie: FakeDatabase.shared.items.filter{$0.fullTitle.contains("S")})

]
