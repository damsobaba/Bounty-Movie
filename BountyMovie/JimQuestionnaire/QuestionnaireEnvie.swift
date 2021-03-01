//
//  QuestionnaireEnvie.swift
//  BountyMovie
//
//  Created by Adam Mabrouki on 08/02/2021.
//

import SwiftUI

struct QuestionnaireEnvieView: View {
    
    @State var userProfil: Profil
    @State private var duree: Double = 0.5
    @Binding var selectedMood:String?
    /*
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
     case relax }
     
     */
    
    var body: some View {
        
        NavigationView {
            
            ZStack {
                
                VStack {
                    
                    NavigationLink(destination: Home( userProfil: userProfil, filmName: "")) {
                        Text("")
                            
                            
                            .navigationBarTitle("Questionnaire d'envie")
                    }.font(.headline)
                    
                }
                
                //Color(red: 58 / 255, green: 87 / 255, blue: 91 / 255)
                
                
                ScrollView {
                    VStack {
                        
                        QuestionMood(selectedMood: $selectedMood)
                        
                        QuestionTimingView()
                        
                        QuestionAreYou()
                        
                        QuestionWhatGenre()
                        
                        QuestionWhichDecade()
                            .padding(.bottom,40)
                        
                        WeTakeCare(userProfil: userProfil)
                        
                        
                        
                    }//Fin VStack
                    
                }//Fin ScrollView
                
            }//Fin ZStack
            .background(Image("BGboquet")
                            .resizable()
                            .ignoresSafeArea())
            
        }
        
    }//Fin var body
    
}//Fin ContentView

struct QuestionnaireEnvie_Previews: PreviewProvider {
    static var previews: some View {
        QuestionnaireEnvieView(userProfil: Profil(name: "Stephanie",
                                                  location: " Paris, France",
                                                  image:Image("user6"),
                                                  followers: 24,
                                                  following: 24,
                                                  suggestionMovies: [],
                                                  likedMovie: FakeDatabase.shared.items,
                                                  friends: []), selectedMood: .constant(nil))
    }
}


