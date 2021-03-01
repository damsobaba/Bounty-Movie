//
//  Profil.swift
//  BountyMovie
//
//  Created by Adam Mabrouki on 08/02/2021.
//

import SwiftUI


import SwiftUI
struct ProfilView: View {
    @State var profil: Profil
    func update(other: Profil) {
        // mettre à jour la page
        print(other)
        profil = other
    }
    var body: some View {
        NavigationView{
//            TabView {
//                tabItem {
//                    Image("star")
//                    Text("etoile")
//
//                }
            ZStack {
                
                /*(LinearGradient(gradient: Gradient(colors: [Color.blueBo, Color.yellowBo]), startPoint: .bottomLeading, endPoint: .topTrailing))*/
                ScrollView{
                    
                    VStack {
                        BoxProfilView(profil: profil)
                        Rectangle()
     
                        .frame(width: 400, height: 2, alignment: .center)
                            .foregroundColor(.white)
                        Spacer()
                        VStack(){
                            
                            HStack(spacing:10){
                                Text("Amis")
                                    .underline()
                                    .bold()
                                    .foregroundColor(.white)
                                    .padding()
                                
                                Spacer()
                                
                            }
                            FriendsListView( action: update )
                        }
                        
                        VStack(spacing: 10){
                            HStack(spacing:10){
                                Text("Films aimés")
                                    .underline()
                                    .bold()
                                    .foregroundColor(.white)
                                    .padding()
                                Spacer()
                            }
                            ListLikedMoviesView()
                        }
                        
                        VStack(spacing: 10){
                            HStack(spacing:10){
                                Text("Films aimés par mes amis")
                                    .underline()
                                    .bold()
                                    .foregroundColor(.white)
                                    .padding()
                                Spacer()
                            }
                            ListLikedFriendsMoviesView()
                        }
                        
                    }
                }
//                }
            }.navigationBarTitle("Profil", displayMode: .inline)
            .edgesIgnoringSafeArea(.all)
            .navigationBarHidden(true)
            .background(Image("BGboquet")
                            .resizable()
                            .ignoresSafeArea())
            
        }
        
    }
}

struct ProfilView_Previews: PreviewProvider {
    static var previews: some View {
        ProfilView(profil: Profil(name: "Mélissa",
                                  location: " Paris, France",
                                  image:Image("user7"),
                                  followers: 24,
                                  following: 24,
                                  suggestionMovies: [],
                                  likedMovie: [],
                                  friends: []))
        
    }
 }

