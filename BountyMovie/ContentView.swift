//
//  ContentView.swift
//  BountyMovie
//
//  Created by Adam Mabrouki on 02/02/2021.
//

import SwiftUI




///Vue
struct ContentView: View {
    
    @State var showModal = true
    
    @State var userProfil = Profil(name: "Stéphanie",
                                   location: " Paris, France",
                                   image:Image("user6"),
                                   followers: 24,
                                   following: 24,
                                   suggestionMovies: [],
                                   likedMovie: FakeDatabase.shared.items,
                                   friends: [])
    
    let profilView = ProfilView(profil: Profil(name: "Mélissa",
                                               location: " Paris, France",
                                               image:Image("user7"),
                                               followers: 24,
                                               following: 24,
                                               suggestionMovies: [],
                                               likedMovie: [],
                                               friends: []))
    //SignUp
    @State var selecTab = 1
    var body: some View {
        TabView(selection:$selecTab) {
            
            NavigationView { Home(userProfil: userProfil, filmName: "") }
                .tabItem {
                    if selecTab == 1{
                        Image("popResizeBlue")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    }else{
                    
                    Image("popResize")
                    }
                    Text("Home")
                        
                        
                }.tag(1)
            
            profilView
                .tabItem {
                   
                    Image(systemName: "person")
                        
                    Text("Profil")
                        
                }.tag(2)
            
            
        } .sheet(isPresented: $showModal)
            {
            NavigationView {
                SignUp(showModal: $showModal)
            }
        }
        .accentColor(.blueBoFonce)
        
       
    }
}



