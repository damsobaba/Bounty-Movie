//
//  ListLikedFriendsMovies.swift
//  BountyMovie
//
//  Created by Adam Mabrouki on 08/02/2021.
//

import SwiftUI

struct ListLikedFriendsMoviesView: View {
    
    var arrayLikedFriendsMovies  = FakeDatabase.shared.movies
    
    var body: some View {
        ScrollView(.horizontal,showsIndicators: false) {
            
            HStack(spacing: 5){
                
                ForEach(arrayLikedFriendsMovies) {  movie in
                    NavigationLink(destination:DetailFilmContentView(movie: movie)){
                    VStack(alignment: .leading, spacing: 8){
                        movie.kfImage
                            .resizable()
                            .clipShape(Rectangle())
                            .cornerRadius(3.0)
                    }
                    }
                    .frame(width: 80, height: 100)
                }
            }
            .padding(10)
         }
        .frame(height: 160)
    }
}
struct ListLikedFriendsMoviesView_Previews: PreviewProvider {
    static var previews: some View {
        ListLikedFriendsMoviesView()
    }
}

