//
//  tableauProfils.swift
//  BountyMovie
//
//  Created by Adam Mabrouki on 08/02/2021.
//

import SwiftUI

struct HeadPrinter : View{
    let personne : Profil
    var body: some View {
        VStack{
            personne.image
                .resizable()
                .modifier(imageProfilStyle())
            Text (personne.name)
                .foregroundColor(.white)
                .padding(.bottom,5)
        }
    }
}

