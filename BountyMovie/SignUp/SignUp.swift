//
//  SignUp.swift
//  BountyMovie
//
//  Created by nver davtyan on 04/02/2021.
//

import SwiftUI
//
let newUsername = ""
let newpassword = ""
let newEmail = ""
let lightGreyColor = Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0)

struct SignUp: View {
    
    @Binding var showModal: Bool
    
    @State var username: String = ""
    @State var password: String = ""
    @State var email: String = ""
    
    var body: some View {
        
        ScrollView(.vertical,showsIndicators:false){
            ZStack {
                
                
                //Background
                
                //  Color(red: 58 / 255, green: 87 / 255, blue: 91 / 255)
                
                
                VStack {
                    
                    HelloText()
                    LogoImage()
                    UsernameTextField(username: $username)
                    EmailTextField(email: $email)
                    PasswordSecureField(password: $password)
                    
                    
                    Button(action: {
                        showModal = false
                    }) {
                        CreateButtonContent(showModal: $showModal)
                        
                    }
                    
                }
                
                .padding()
                
            }
            
            
            
        }.background(Image("BGboquet")
                        .resizable()
                        .ignoresSafeArea())
        
        
        
    }
}
struct SignUp_Previews: PreviewProvider {
    static var previews: some View {
        SignUp(showModal: .constant(true))
    }
}

struct HelloText: View {
    var body: some View {
        Text("BountyMovie")
            
            .font(.largeTitle)
            .fontWeight(.semibold)
            .padding(.bottom, 20)
            .foregroundColor(.white)
        
    }
}

struct LogoImage: View {
    var body: some View {
        
        Image("popHello")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 150, height: 150)
            .clipped()
            .cornerRadius(150)
            .padding(.bottom, 75)
    }
}

struct LoginButtonContent: View {
    var body: some View {
        Text("S'identifier")
            .font(.headline)
            .foregroundColor(.white)
            .padding()
            .frame(width: 220, height: 60)
            .background(Color.black)
            .cornerRadius(35.0)
    }
}

struct CreateButtonContent: View {
    
    @Binding var showModal: Bool
    
    var body: some View {
        
        NavigationLink(
            destination: WelcomeQuestionView(showModal: $showModal)){
            Text("S'inscrire")
                .font(.headline)
                .foregroundColor(.white)
                .padding()
                .frame(width: 220, height: 60)
                .background(Color.black)
                .cornerRadius(35.0)
        }
        
    }
}



struct UsernameTextField: View {
    
    @Binding var username: String
    
    var body: some View {
        TextField("Pseudo", text: $username)
            .padding()
            .background(lightGreyColor)
            .cornerRadius(5.0)
            .padding(.bottom, 20)
    }
}

struct PasswordSecureField: View {
    
    @Binding var password: String
    
    var body: some View {
        SecureField("Mot de passe", text: $password)
            .padding()
            .background(lightGreyColor)
            .cornerRadius(5.0)
            .padding(.bottom, 20)
    }
}
struct EmailTextField: View {
    
    @Binding var email: String
    
    var body: some View {
        TextField("Email", text: $email)
            .padding()
            .background(lightGreyColor)
            .cornerRadius(5.0)
            .padding(.bottom, 20)
    }
}




