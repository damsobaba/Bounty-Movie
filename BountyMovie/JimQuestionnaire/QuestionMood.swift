//
//  QuestionMood.swift
//  BountyMovie
//
//  Created by Adam Mabrouki on 08/02/2021.
//

import SwiftUI

struct moodSymbol: View {
    let imageMood : String
    let textMood : String
    let action: () -> Void
    var body: some View {
        
        VStack {
            Button(action: action
                   , label: {
                Image(imageMood)
                    .resizable()
                    .padding(.horizontal, 0.0)
                    .frame(width: 100, height: 100, alignment: .center)
            })
            Text(textMood)
                .colorInvert()
            
        }
    }
    
}

struct QuestionMood: View {
    @Binding var selectedMood:String?
    var body: some View {
        
        
        
        VStack {
            ZStack {
                 

                Rectangle()
                                    
                                    .frame(width: 413.0, height: 200.0)
                                    .cornerRadius(40.0)
                                
                                Text("Ton humeur du moment ?")
                                    .font(.title2)
                                    .padding(.bottom, 140.0)
                                    .colorInvert()
                                ScrollView(.horizontal) {
                                    HStack {
                                        moodSymbol(imageMood: "Happy", textMood: "Heureux", action: {selectedMood = "happy"})
                                        moodSymbol(imageMood: "Relax", textMood: "Relaxé", action: {selectedMood = "relax"})
                                        moodSymbol(imageMood: "Bored", textMood: "Ennuyé", action: {selectedMood = "bored"})
                                        moodSymbol(imageMood: "Sad", textMood: "Triste", action: {selectedMood = "sad"})
                                        moodSymbol(imageMood: "Calin", textMood: "Calin", action: {selectedMood = "calin"})
                                        moodSymbol(imageMood: "Mad", textMood: "Enervé", action: {selectedMood = "mad"})
                                        moodSymbol(imageMood: "Blase", textMood: "Blasé", action: {selectedMood = "blase"})
                                    } .padding(.top, 30.0)
                                }
                            }
                        }
                    }
                }
                struct QuestionMood_Previews: PreviewProvider {
                    static var previews: some View {
                        QuestionMood(selectedMood: .constant(nil))
                    }
                } 
