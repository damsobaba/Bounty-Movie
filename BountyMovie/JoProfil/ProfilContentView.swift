//
//  ProfilContentView.swift
//  BountyMovie
//
//  Created by Adam Mabrouki on 08/02/2021.
//
import SwiftUI

struct ProfilContentView: View {
    var body: some View {
        ProfilView(profil: Profil(name: "Mélissa",
                                  location: " Paris, France",
                                  image:Image("user7"),
                                  followers: 24,
                                  following: 24,
                                  suggestionMovies: [],
                                  likedMovie: []))
    }
}

struct ProfilContentView_Previews: PreviewProvider {
    static var previews: some View {
        ProfilContentView()
    }
}
