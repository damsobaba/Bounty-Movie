//
//  QuestionWitchDecade.swift
//  BountyMovie
//
//  Created by Adam Mabrouki on 08/02/2021.
//

import SwiftUI

struct QuestionWhichDecade: View {
    @State private var decade = 1950
    var body: some View {
        
        ZStack {
            
            Rectangle()
                .frame(width: 413.0, height: 200.0)
                .cornerRadius(40.0)
                .overlay (
                    VStack {
                        Text("Plutôt dans quelle décennie ce film ?")
                            .font(.title2)
                            .colorInvert()
                        Text("\(decade)")
                            .colorInvert()
                            .font(.system(size: 40))
                        Stepper("", onIncrement: {
                            self.decade += 10
                            
                        }, onDecrement: {
                            self.decade -= 10
                            
                        })
                        .labelsHidden()
                        .background(Color.white)
                        //.padding(.trailing, 160.0)
                        //.padding(.top, 100)
                    }
                )
        }
    }
    
}



struct QuestionWhichDecade_Previews: PreviewProvider {
    static var previews: some View {
        QuestionWhichDecade()
    }
}
