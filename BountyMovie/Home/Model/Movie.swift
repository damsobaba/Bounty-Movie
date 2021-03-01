//
//  Movie.swift
//  BountyMovie
//
//  Created by Adam Mabrouki on 02/02/2021.
//

import Foundation
import SwiftUI



//var list = [
//    Movie(id: 0,name: "intouchable"),
//    Movie(id: 1,name: "intouchable"),
//    Movie(id: 2,name: "intouchable"),
//    Movie(id: 3,name: "intouchable"),
//    Movie(id: 4,name: "intouchable"),
//    Movie(id: 5,name: "intouchable"),
//    Movie(id: 6,name: "intouchable"),
//    Movie(id: 7,name: "intouchable"),
//    Movie(id: 8,name: "intouchable"),
//    Movie(id: 9,name: "intouchable"),
//]


struct WelcomeQuestion {
    var questions: String
    var answers: [String]

}


//struct Movie {
//
//    let title:String
//    var year:String
//    var description:String
//    var image:Image
//    var time: Int
//    var trailer:URL
//    var genre: String
//    let actor: String
//    let director:String
//    var mood:Mood
//}



























 

//struct Friend {
//    var friends:[Profil]
//    var movies:[Movie]
//}



struct PreferenceQuestion{
   var timeMin: Int
    var timeMax:Int
}

enum Mood {
    case sad
    case happy
    case bored
    case blase
    case mad
    case lovedUp
    case relax
}
