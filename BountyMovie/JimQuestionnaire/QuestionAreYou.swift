//
//  QuestionAreYou.swift
//  BountyMovie
//
//  Created by Adam Mabrouki on 08/02/2021.
//

import SwiftUI

struct situationPeople: View {
    let imagePeople : String
    let textPeople : String
    var body: some View {
        
        VStack{
            
            Image(imagePeople)
                .resizable()
                .clipShape(Rectangle())
                .cornerRadius(10.0)
                .frame(width: 130.0, height: 90.0)
                .padding(.trailing)
            Text(textPeople)
                .colorInvert()
        }
        
    }
}


struct QuestionAreYou: View {
    
    var body: some View {
        
        ZStack {
            
            Rectangle()
                
                .frame(width: 413.0, height: 200.0)
                .cornerRadius(40.0)
            
            Text("Es-tu :")
                .font(.title2)
                .padding(.bottom, 150.0)
                .colorInvert()
            
            ScrollView(.horizontal) {
                
                HStack {
                    Spacer(minLength: 20)
                    
                    situationPeople(imagePeople: "Couple", textPeople: "En couple")
                    situationPeople(imagePeople: "Alone", textPeople: "Seul")
                    situationPeople(imagePeople: "Family", textPeople: "En famille")
                    situationPeople(imagePeople: "Friends", textPeople: "Entre amis")
                    
                } .padding(.top, 30.0)
            }
            
            
            
            
            
        }
    }
}

struct QuestionAreYou_Previews: PreviewProvider {
    static var previews: some View {
        QuestionAreYou()
    }
}
