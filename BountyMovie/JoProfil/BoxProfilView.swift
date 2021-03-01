//
//  BoxProfilView.swift
//  BountyMovie
//
//  Created by Adam Mabrouki on 08/02/2021.
//

import SwiftUI

struct BoxProfilView: View {
    var profil: Profil
    var body: some View {
        VStack(alignment: .leading){
//            Rectangle()
//                .frame(width: 400, height: 2, alignment: .center)
//                .foregroundColor(.black)
            Spacer()
            HStack{
                    profil.image
                    .resizable()
                    .frame(width: 80, height:100, alignment: .leading)
                     .clipShape(Circle())
                        .overlay(Circle().stroke(Color.white,lineWidth:3))
                    .padding()
                
                VStack{
                    Text("\(profil.name)")
                        .bold()
                        .foregroundColor(.white)
                    Text("\(profil.location)")
                        .foregroundColor(.white)
                }
            }.padding([.leading])
            
            HStack{
                
                VStack{
                    Text("followers")
                        .foregroundColor(.blueBo)
                    Text("\(profil.followers) ")
                        .foregroundColor(.blueBo)
                        .bold()
                        .padding([.leading])
                }.padding([.leading])
                .padding()
                VStack{
                    Text("following")
                        .foregroundColor(.blueBo)
                    Text("\(profil.following)")
                        .foregroundColor(.blueBo)
                        .bold()
                        .padding([.leading])
                }.padding([.leading])
                Spacer()
                
                VStack{
//                                AddFriends ou ListFriends(avec text field pour chercher) selon l interface
                    NavigationLink(destination: AddFriendsView(profil: profil)){
                        VStack{
                            Image("friendsPop")
                                .resizable()
                                .frame(width: 50, height: 50)
                                .padding(-5)
                            Text("+ amis")
                                .bold()
                                .foregroundColor(.white)
                                .padding(-10)
                                
                        }.position(x: 100, y: 45)
                    }
                }.padding([.trailing])
            }
        }.frame( height: 250, alignment: .top)
 
    }
}
struct BoxProfilView_Previews: PreviewProvider {
    static var previews: some View {
        BoxProfilView(profil: Profil(name: "Mélissa",
                                      location: " Paris, France",
                                      image:Image("user7"),
                                      followers: 24,
                                      following: 24,
                                      suggestionMovies: [],
                                      likedMovie: []))
    }
}
