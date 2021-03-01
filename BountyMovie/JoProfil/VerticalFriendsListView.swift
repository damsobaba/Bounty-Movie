//
//  VerticalFriendsListView.swift
//  BountyMovie
//
//  Created by Jonathan Roux on 10/02/2021.
//

import SwiftUI

struct VerticalFriendsListView: View {
    var arrayProfils = friends
    var body: some View {
        ScrollView(.horizontal,showsIndicators: false) {
            
            VStack(spacing: 1){
               
                ForEach(arrayProfils){ users in
//                    Button(action: {action(users)}) {
                        VStack(alignment: .leading, spacing: 8){
                            HStack{
                            users.image
                                .resizable()
                                .clipShape(Circle())
                                .frame(width: 80, height: 100, alignment: .center)
//                            HeadPrinter(personne: users)
                                Text(users.name)
                                    .padding()
                                    .foregroundColor(.white)
                                Text(users.location)
                                    .foregroundColor(.blueBo)
                                
                            }
                        }
                    }
                    .frame(width: 400, height: 100, alignment: .leading)
                }
            }
            .padding(10)
        }
//        .frame( height: 160)
    }
//}
struct VerticalFriendsListView_Previews: PreviewProvider {
    static var previews: some View {
        VerticalFriendsListView()
    }
}
