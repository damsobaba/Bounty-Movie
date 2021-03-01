//
//  infoFilmView.swift
//  BountyMovie
//
//  Created by Adam Mabrouki on 08/02/2021.
//
import SwiftUI

struct InfosFilmView: View {
    let movie : ResponseData.Item
    var body: some View {
        VStack(alignment: .leading){
            
            Text("Date de sortie :  ").foregroundColor(.blueBo) .bold() +
                //Text("1995").foregroundColor(.blue)
                Text(movie.year).foregroundColor(.white)
            
            Text("Equipe : ").foregroundColor(.blueBo) .bold() +
            //Text("Franck Darabont").foregroundColor(.white)
                Text(movie.crew).foregroundColor(.white)
            
            
            Text("Genre : ").foregroundColor(.blueBo) .bold() +
            //Text("BlueBlue").foregroundColor(.white)
                Text(movie.genre).foregroundColor(.white)
            
            
            Text("Durée : ").foregroundColor(.blueBo) .bold() +
            /*Text("1ère place du classement des meilleurs films de l'Internet Movie Database").foregroundColor(.white)*/
                Text(movie.time).foregroundColor(.white)
            
            
//            Text("Nomination : ").foregroundColor(.blueBo) .bold() +
//            Text("Selection au National Film Preservation Board").foregroundColor(.white)
//
        }.frame(maxWidth:.infinity, alignment: .leading)
        .padding()
        //.lineSpacing(20)
    }
}

struct InfosFilmView_Previews: PreviewProvider {
    static var previews: some View {
        InfosFilmView(movie: FakeDatabase.shared.items[0])
    }
}
