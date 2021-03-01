//
//  QuestionWhatGenre.swift
//  BountyMovie
//
//  Created by Adam Mabrouki on 08/02/2021.
//

import SwiftUI

import SwiftUI

struct genreMovie : View {
    let imageMovie : String
    let textMovie : String
    var body: some View {
        
        VStack{
            Button(action: {}, label: {
                Image(imageMovie)
                    .resizable()
                    .clipShape(Rectangle())
                    .cornerRadius(10.0)
                    .frame(width: 150, height: 100)
                    .padding(.trailing)
            })
            Text(textMovie)
                .colorInvert()
        }
        
    }
}

struct QuestionWhatGenre: View {
    var body: some View {
        ZStack {
            Rectangle()
                
                .frame(width: 413.0, height: 200.0)
                .cornerRadius(40.0)
            Text("Quel genre veux tu voir ?")
                .font(.title2)
                .padding(.bottom, 140)
                .colorInvert()
            
            
            ScrollView(.horizontal) {
                HStack {
                    Spacer(minLength: 20)
                    
                    genreMovie(imageMovie: "avatar", textMovie: "Science-fiction")
                    genreMovie(imageMovie: "Maxetleon", textMovie: "Comédie")
                    genreMovie(imageMovie: "Aurevoirlahaut", textMovie: "Drame")
                    genreMovie(imageMovie: "Action", textMovie: "Action")
                    genreMovie(imageMovie: "Romantique", textMovie: "Romantique")
                    
                }.padding(.top, 50.0)
            }
            
        }
    }
}

struct QuestionWhatGenre_Previews: PreviewProvider {
    static var previews: some View {
        QuestionWhatGenre()
    }
}
