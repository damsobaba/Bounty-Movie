//
//  FriendsListView.swift
//  BountyMovie
//
//  Created by Adam Mabrouki on 08/02/2021.
//

import SwiftUI

struct FriendsListView: View {
//    let personne : Profil
    var arrayProfils = friends
    
    
    let action: (Profil) -> Void
    
    
    var body: some View {
        
        ScrollView(.horizontal,showsIndicators: false) {
            
            HStack(spacing: 1){
                ForEach(arrayProfils){ users in
                    Button(action: {action(users)}) {
                        VStack(alignment: .leading, spacing: 8){
                            users.image
                                .resizable()
                                //.clipShape(Circle())
                            HeadPrinter(personne: users)
                        }
                    }
                    .frame(width: 80, height: 100, alignment: .leading)
                }
            }
            .padding(10)
        }
        .frame( height: 160)
    }
}
struct FriendsListView_Previews: PreviewProvider {
    static var previews: some View {
        FriendsListView(action: { print($0)})
        
    }
    
}
