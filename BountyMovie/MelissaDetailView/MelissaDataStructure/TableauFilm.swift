//
//  Tav.swift
//  BountyMovie
//
//  Created by Adam Mabrouki on 08/02/2021.
//

import Foundation

import SwiftUI


let listMovies = [MovieMelissa(title: "The Shawshank Redemption", year: "1994", description: "Ce film est inspiré du roman court (novella) Rita Hayworth et la Rédemption de Shawshank de Stephen King (faisant partie du recueil Différentes Saisons) et conte l'histoire d'Andy Dufresne (Tim Robbins), un homme injustement condamné pour les meurtres de sa femme et de l'amant de celle-ci et qui va passer près de vingt ans au pénitencier de Shawshank, endurant diverses épreuves mais se liant également d'amitié avec Red (Morgan Freeman), un autre détenu ", image: Image("lesEvades"), time: 142, trailer: (URL(string : "https://player.allocine.fr/19376413.html")!), genre: "Drame", actor: "Tim Robbins, Morgan Freeman, Bob Gunton", director: "Franck Darabond", mood: Mood.sad)]
        


struct MovieMelissa {
    
    let title:String
    var year:String
    var description:String
    var image:Image
    var time: Int
    var trailer:URL
    var genre: String
    let actor: String
    let director:String
    var mood:Mood
}
//    enum Mood {
//        case sad
//        case happy
//        case bored
//        case blase
//        case mad
//        case lovedUp
//        case relax
//    }


