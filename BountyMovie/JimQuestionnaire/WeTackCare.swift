//
//  WeTackCare.swift
//  BountyMovie
//
//  Created by Adam Mabrouki on 08/02/2021.
//

import SwiftUI

struct WeTakeCare: View {
    @State var userProfil: Profil
    var body: some View {

        ZStack {
            Spacer()

            VStack{
                Text("Nous nous occupons du reste !")
                    .font(.title)
                    //.fontWeight(.semibold)
                    .foregroundColor(.white)
                Text("Tapote (gentillement) le PopCorn !")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.white)
                //NavigationView {
                NavigationLink(destination: Home(arrayProfil: friends, userProfil: userProfil, showModal: false, filmName: "🔍 search")) {
                      //.navigationBarTitle("MyView")

                    Image("BoutonGO-2")
                        .resizable()
                        .frame(width: 250, height: 250, alignment: .center)
                        .padding(.bottom,40)

                }

            }.padding(.bottom, 80.0)
        }//fin de la V
    }//fin de la Z
    }
//}


struct WeTakeCare_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            WeTakeCare(userProfil: Profil(name: "Stephanie",
                                          location: " Paris, France",
                                          image:Image("user6"),
                                          followers: 24,
                                          following: 24,
                                          suggestionMovies: [],
                                          likedMovie: [],
                                          friends: []))
    }
}
}
