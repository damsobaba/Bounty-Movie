//
//  ContentView.swift
//  Welcomequestion
//
//  Created by Inès Olivo-Marin on 02/02/2021.
//

import SwiftUI


struct SecondSelection : View {
 
    
    @State private var backgroundColor : Color =  Color.white
    @Binding var reponse: String
    
    var answers: [String] = []
    
    var body : some View {
        
        ZStack {
            VStack {
                
                VStack(alignment: .leading) {
                    TextField("Entrez votre texte...", text: $reponse)
                        
                        .padding()
              
                    
                    ForEach(FakeDatabase.shared.movies.filter{$0.title.contains(reponse)}, id: \.id) { movie in
                        if reponse == movie.title {
                            EmptyView()
                        } else {
                            Text(movie.title)
                                .onTapGesture {
                                    reponse = movie.title
                                }
                            
                            
                        }
                        
                    }
                    
                }
                
            }
        }
        
        
        
    }
    
    
}


struct QuestionTwo: View {
    
    @Binding var showModal: Bool
    
    @State var reponse1: String = ""
    @State var reponse2: String = ""
    @State var reponse3: String = ""
    @State var reponse4: String = ""
    @State var reponse5: String = ""
    
    var body: some View {
        
            ZStack {
                VStack{
                    HStack{
                        Image("popCoucou")
                            .resizable()
                            .frame(width: 50, height: 50, alignment: .leading)
                        Text("Quels sont vos 5 réalisateurs préférés ?")
                            .foregroundColor(.white)
                            .frame(width: 300, height: 20, alignment: .top)
                        
                    }
                    VStack {
                        VStack{
                            Selection(reponse: $reponse1)}.background(Color(.systemGray4))
                            .cornerRadius(10)
                        HStack{}.padding(5)
                        VStack{
                            Selection(reponse: $reponse2)}.background(Color(.systemGray4))
                            .cornerRadius(10)
                        HStack{}.padding(5)
                        VStack{
                            Selection(reponse: $reponse3)}.background(Color(.systemGray4))
                            .cornerRadius(10)
                        HStack{}.padding(5)
                        VStack{
                            Selection(reponse: $reponse4)}.background(Color(.systemGray4))
                            .cornerRadius(10)
                        HStack{}.padding(5)
                        VStack{
                            Selection(reponse: $reponse5)}.background(Color(.systemGray4))
                            .cornerRadius(10)
                        HStack{}.padding(5)
                        
                        
                        
                        
                        
                    }
                    
                    
                    HStack {}.padding(10)
                    
                    
                    VStack{
                        Button(action: { showModal = false }) {
                            Text("Valider")
                                .foregroundColor(.white)
                                .bold()
                        }
                    }
                    
                    .frame(width: 250, height: 80)
                    .background(LinearGradient(gradient: Gradient(colors: [Color.blueBo, Color.yellowBo]), startPoint: .bottomLeading, endPoint: .topTrailing))
                    .cornerRadius(10.0)
                    
                }
            }
            
            
            
            .padding(7)
            .padding(.horizontal, 25)
            
            .padding(.horizontal, 10)
            
            
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color(UIColor(red: 44/255, green: 51/255, blue: 51/255, alpha: 1.0))
                            .edgesIgnoringSafeArea(.all))
            .navigationBarTitle("Questionnaire d'accueil")
            
            
            
        
        
    
        
    }
    
}



struct QuestionView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            WelcomeQuestionView(showModal: .constant(true))
        }
    }
}






