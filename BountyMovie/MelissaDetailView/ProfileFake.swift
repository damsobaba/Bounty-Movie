//
//  ProfileFake.swift
//  BountyMovie
//
//  Created by Adam Mabrouki on 08/02/2021.
//

import SwiftUI

struct ProfilFake: View {
    let personne : Profil
    var body: some View {
        VStack{
            personne.image
                .resizable()
                .frame(width: 200, height: 200, alignment: .center)
            Text(personne.name)
                .font(.title)
            Text(personne.location)
            //Text("Aime : \(personne.likedMovie)")
            //Text("Recommande : \(personne.suggestionMovies)")
        }
    }
}

struct ProfilFake_Previews: PreviewProvider {
    static var previews: some View {
        ProfilFake( personne : Profil(name: "Luc", location: "Genoble", image: Image("user2"), followers: 23, following: 15, suggestionMovies: ["District 9"], likedMovie: FakeDatabase.shared.items))
        //ou (personne: friends[0])
    }
}
