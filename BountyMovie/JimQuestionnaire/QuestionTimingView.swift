//
//  QuestionTimingView.swift
//  BountyMovie
//
//  Created by Adam Mabrouki on 08/02/2021.
//

import SwiftUI

struct QuestionTimingView: View {
    
    @State private var duree: Double = 0.5
    var body: some View {
        ZStack {
            
            Rectangle()
                
                .frame(width: 413.0, height: 200.0)
                .cornerRadius(40.0)
            Text("Combien de temps as-tu devant toi ?")
                .font(.title2)
                .padding(.bottom, 140)
                .colorInvert()
            
            Text("\(Int(duree*240)) '")
                .font(.system(size: 70))
                .fontWeight(.bold)
                .foregroundColor(Color.white)
                .frame(width: 200.0, height: 200.0)
            
            Button("") {
                self.duree += 0.01
            }
            
            Slider(value: $duree, in: 0...1)
                .padding(.top, 135.0)
                .frame(width: 300.0)
            
        }
    }
}

struct QuestionTimingView_Previews: PreviewProvider {
    static var previews: some View {
        QuestionTimingView()
    }
}
