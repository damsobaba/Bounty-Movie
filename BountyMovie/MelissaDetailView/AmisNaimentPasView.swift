//
//  AmisNaimentPasView.swift
//  BountyMovie
//
//  Created by Adam Mabrouki on 08/02/2021.
//

import SwiftUI

struct AmisNaimentPasView: View {
    var body: some View {
        ZStack{
            //Bande "Mes amis n'aiment pas"
            VStack{
                
                Text("Amis qui n'aiment pas")
                    .bold()
                    .foregroundColor(.white)
                    .frame(width: 200, height: 3, alignment:
                        .bottom)
                    .position(x: 200, y: 30)
                    .padding()
    
                //caroussel d'amis
                ScrollView(.horizontal, showsIndicators: true){
                HStack(spacing: 20){
                    
                    ForEach(friends, id:\.id){
                        user in
                        NavigationLink(destination: ProfilFake(personne: user)){
                     HeadPrinter(personne: user)}
                    }
                    }.frame(width: .infinity, height: 150, alignment: .center)
                
                
                  
                }
            }.frame(width: .infinity, height: 150, alignment: .center)
            .background(LinearGradient(gradient: Gradient(colors: [Color.blueBo, Color.yellowBo]), startPoint: .bottomLeading, endPoint: .topTrailing))
                
                
        
        
    }
        
    }
}

struct AmisNaimentPasView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
        AmisNaimentPasView()
        }
    }
}
