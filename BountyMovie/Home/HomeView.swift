//
//  HomeView.swift
//  BountyMovie
//
//  Created by Adam Mabrouki on 08/02/2021.
//

import Foundation
import SwiftUI


//version ZORAH helping
struct Home:View {
    
    var arrayProfil = friends
    
    
    
    @State var selectedMood:String? = nil
    @State var userProfil: Profil
    @State var showModal = false
    @State var filmName:String
    
//    var items: [ResponseData.Item] {
////        let result = friendsArrayTest
//        let result = FakeDatabase.shared.searchMovie(titles: userProfil.likedMovie)
////        print(result)
////        return result
////        let result = [ResponseData.Item]()
////        result.append(
//            return result
//
//    }
//    var profile: Profil
    var body: some View {
       
        ScrollView(.vertical,showsIndicators:false){
          
            VStack{
                Text("Selected Mood = \(selectedMood ?? "nil")")
                ZStack {
                    Circle()
                       
                        .stroke(lineWidth: 6)
                        .foregroundColor(.blueBo)
                
                        .frame(width:200, height: 150)
                        
                NavigationLink(
                    
                    destination: QuestionnaireEnvieView(userProfil: userProfil, selectedMood: $selectedMood),
                                       label: {
           
                        Image("popCorn")
                        .resizable()
                        .frame(width: 150, height: 150)
                        .padding(70)
                       
                    })
                   
                    }
                
               
              
                Button(action: {showModal = true}, label: {
                    TextField("Chercher un film 🔍", text: $filmName).textFieldStyle(RoundedBorderTextFieldStyle())
                        
                })
                     
                   
                     .sheet(isPresented: $showModal) {
                        
                        TextField("Chercher un film 🔍", text: $filmName).textFieldStyle(RoundedBorderTextFieldStyle())
                         Text("Bon courage !")
                        FilmView(profil: arrayProfil[0], items: arrayProfil[0].likedMovie)
                        FilmView(profil: arrayProfil[0], items: arrayProfil[0].likedMovie)
                            
                     }
                //
                Text("Recommandations")
                    .fontWeight(.bold)
                    .padding()
                    .foregroundColor(.blueBo)
                
                if let chosenMood = selectedMood {
                FilmView(profil: userProfil, items: userProfil.likedMovie.filter{$0.mood.contains(chosenMood)})
                } else {
                    FilmView(profil: userProfil, items: userProfil.likedMovie)
                }
                
                ForEach(arrayProfil, id: \.id) {  profil in
                    
                    FilmView(profil: profil, items: profil.likedMovie)
                        
                }
                
            }
        }  /*.background(LinearGradient(gradient: Gradient(colors: [Color.blueBo, Color.grayBo]), startPoint: .bottomLeading, endPoint: .topTrailing))*/
        .background(Image("BGboquet")
                        .resizable()
                        .ignoresSafeArea())
        .navigationBarTitle("Home", displayMode: .inline)
        .edgesIgnoringSafeArea(.all)
        .navigationBarHidden(true)

        }
    }




struct FilmHeader:View {
    var profil:Profil
    var body: some View {
        HStack(spacing:10){
            Text("   \(profil.name) movie list:")
                .bold()
                .font(.system(size: 20))
                .foregroundColor(.white)
            Spacer()
        }
        
        
        
    }
    
}

struct FilmView: View {
    
    
    var profil: Profil
    
//    var items: [ResponseData.Item] {
//        let result = FakeDatabase.shared.searchMovie(titles: profil.likedMovie)
//        print(result)
//        return result
//    }
    
    var items: [ResponseData.Item]
    
    var body: some View {

            VStack(spacing: 2){
                
                FilmHeader(profil: profil )
                
                ScrollView(.horizontal,showsIndicators: false) {
                    
                    LazyHStack(spacing: 120){
                        
                        ForEach(items){ item in
                            
                            NavigationLink(destination: DetailFilmContentView(movie: item)) {
                                GeometryReader { geometry in
                                    VStack(alignment: .leading, spacing: 80){
                                        
                                        item.kfImage
                                            .resizable()
                                            .cornerRadius(20)
                                           .rotation3DEffect(Angle(degrees: (Double(geometry.frame(in: .global).minX) - 40) / -20),
                                                              axis: (x: 0, y: 1, z: 0))
                                    }
                                    .frame(width: 150, height: 240)
                                }
                                
                                
                                .padding(10)
                            }
                            }
                        }
//                    }
//                }
                .frame( height: 260)
                
            }
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

extension Color{
    public static let grayBo: Color = Color(UIColor(red: 44/255, green: 51/255, blue: 51/255, alpha: 1.0))
    public static let redBo: Color = Color(UIColor(red: 209/255, green: 42/255, blue: 15/255, alpha: 1.0))
    public static let yellowBo: Color = Color(UIColor(red: 249/255, green: 200/255, blue: 62/255, alpha: 1.0))
    public static let blueBo: Color = Color(UIColor(red: 128/255, green: 193/255, blue: 193/255, alpha: 1.0))
    public static let blueBoFonce: Color = Color(UIColor(red: 69/255, green: 130/255, blue: 128/255, alpha: 1.0))
}



