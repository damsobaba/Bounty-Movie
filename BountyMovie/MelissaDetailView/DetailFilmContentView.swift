//
//  DetailFilmContentView.swift
//  BountyMovie
//
//  Created by Adam Mabrouki on 08/02/2021.
//



import SwiftUI

struct DetailFilmContentView: View {
    let movie : ResponseData.Item
//    func updatePage(other:ResponseData){
//        movie = other
   
    
    var body: some View {
        
        ZStack{
            
            //Couleur de fond
            Color.grayBo
                .edgesIgnoringSafeArea(.all)
            ScrollView{
                VStack{
                    
                    //lecteur video
                   
                    
                    //Bouton  link trailer
                    Button(action: {
                        UIApplication.shared.open(URL(string: "https://player.allocine.fr/19376413.html")!)
                        
                    },
                    label: {
                        VStack{
                            Image(systemName: "play.circle")
                                .resizable()
                                .foregroundColor(.white)
                                .frame(width: 50, height: 50)
                            
                        }.frame(width: 320, height: 180, alignment: .center)
                        .padding()
                        .background(Color.black)
                        .cornerRadius(12.0)
                        })
                    
                    
                    //Synopsis
                    
                    Text(movie.fullTitle)
                        .foregroundColor(.white)
                        .font(.title2)
                        .bold()
                        .padding()
                    Text(movie.description)
                        .foregroundColor(.white)
                        .frame(maxWidth:377, alignment: .leading)
                    
//                    Text("En 1947, Andy Dufresne, un jeune banquier, est condamné à la prison à vie pour le meurtre de sa femme et de son amant. Ayant beau clamer son innocence, il est emprisonné à Shawshank, le pénitencier le plus sévère de l'Etat du Maine. Il y fait la rencontre de Red, un Noir désabusé, détenu depuis vingt ans. Commence alors une grande histoire d'amitié entre les deux hommes...")
//                        .foregroundColor(.white)
//                        .padding()
                    
                    //Infos
                    InfosFilmView(movie: movie)
                    
                    //image pop
                    HStack{
                        Image("popFriends")
                            .resizable()
                            .frame(width: 80, height: 80, alignment: .bottomTrailing)
                    }.frame(maxWidth:.infinity, maxHeight: 44.5, alignment: .trailing)
                    
                    //Bandes amis qui aiment et n'aiment pas
                    
                    AmisAimentView()
                    HStack{}.padding(4)
                    AmisNaimentPasView()
                    
                    }
            }
        }.navigationBarTitle(Text("Détails du film"))
        
    }
}


struct DetailFilmContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            DetailFilmContentView(movie: FakeDatabase.shared.items[0])
        }
    }
}
