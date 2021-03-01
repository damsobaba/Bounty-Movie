//
//  AddFriendsView.swift
//  BountyMovie
//
//  Created by Jonathan Roux on 10/02/2021.
//

import SwiftUI

struct AddFriendsView: View {
    @State var profil: Profil
    var body: some View {
        ZStack {
           
            ScrollView{
               
                VStack {
                    
                    BoxProfilView(profil: profil)
                    
//                    Rectangle()
//                    .frame(width: 400, height: 2, alignment: .center)
//                        .foregroundColor(.white)
                    TextField("Chercher des amis 🔍", text: $profil.name).textFieldStyle(RoundedBorderTextFieldStyle())
                     Text("")
                    
                    VerticalFriendsListView()
                    Spacer()
                
                
                
                
                }
            }.background(Image("BGboquet")
                            .resizable()
                            .ignoresSafeArea())
        }
    }
}
struct AddFriendsView_Previews: PreviewProvider {
    static var previews: some View {
        AddFriendsView(profil: Profil(name: "Mélissa",
                                  location: " Paris, France",
                                  image:Image("user7"),
                                  followers: 0,
                                  following: 0,
                                  suggestionMovies: [],
                                  likedMovie: [],
                                  friends: []))
    }
}
