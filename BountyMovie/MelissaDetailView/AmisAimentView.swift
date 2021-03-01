//
//  AmisAimentView.swift
//  BountyMovie
//
//  Created by Adam Mabrouki on 08/02/2021.
//

import SwiftUI

struct AmisAimentView: View {
    //let personne : ProfilType
    var body: some View {
    
        
        
            //Bande "Mes amis aiment"
            VStack{
                
                Text("Amis qui aiment")
                    .bold()
                    .foregroundColor(.white)
                    .frame(width: 130, height: 3, alignment:
                        .bottom)
                    .position(x: 200, y: 30)
                    .padding()
    
                //caroussel d'amis
                ScrollView(.horizontal, showsIndicators: true){
                HStack(spacing: 20){
                    
                    ForEach(friends, id:\.id){
                        user in
                        NavigationLink(destination: ProfilView(profil: user)) {
//                       ProfilView(profil: user )){
                     HeadPrinter(personne: user)}
                    }
                    }.frame(width: .infinity, height: 150, alignment: .center)
                
                
                  
                }
            }.frame(width: .infinity, height: 150, alignment: .center)
            .background(LinearGradient(gradient: Gradient(colors: [Color.blueBo, Color.yellowBo]), startPoint: .bottomLeading, endPoint: .topTrailing))
                
                
        
        
    }
}



//Style des images
struct imageProfilStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .clipShape(Circle())
                .shadow(color: .grayBo, radius: 4, x: -3.0, y: -2.0)
                .overlay(Circle().stroke(Color.white,lineWidth:3))
                .frame(width: 65, height: 65)
    }
}



struct AmisAimentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            AmisAimentView()
        }
    }
}
