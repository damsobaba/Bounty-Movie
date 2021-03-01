//
//  Final.swift
//  BountyMovie
//
//  Created by Adam Mabrouki on 08/02/2021.
//


import SwiftUI

let lightGreyColor = Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0)

let storedUsername = "Nver"
let storedpassword = "abcabc"


//let gradient = LinearGradient(gradient: Gradient(colors: [.gray, .gray, .gray]), startPoint: .topLeading, endPoint: .bottomTrailing)

struct Final: View {
    
    @State var username: String = ""
    @State var password: String = ""
    @State var authenticationDidFail: Bool = false
    @State var authenticationDidSucceed: Bool = false
    
    var body: some View {
        NavigationView {
            
            ZStack {
                
                Color(red: 58 / 255, green: 87 / 255, blue: 91 / 255)
                //gradient
                VStack {
                    
                    HelloText()
                    LogoImage()
                    UsernameTextField(username: $username)
                    PasswordSecureField(password: $password)
                    if authenticationDidFail {
                        Text("Information not correct. Try again.")
                            .offset(y: -10)
                            .foregroundColor(.red)
                    }
                    
                    
                    Button(action: {
                        if self.username == storedUsername && self.password == storedpassword {
                            self.authenticationDidSucceed = true
                            self.authenticationDidFail = false
                        } else {
                            self.authenticationDidFail = true
                            self.authenticationDidSucceed = false
                        }
                    }) {
                        LoginButtonContent()
                    }
                    
                    Button(action: {
                        
                    }) {
                        CreateButtonContent()
 }
                    
                }
                
                .padding()
                
                if authenticationDidSucceed {
                    Text("Login succeeded!")
                        .font(.headline)
                        .frame(width: 250, height: 80)
                        .background(Color.yellow)
                        .cornerRadius(20.0)
                        .animation(Animation.default)
                }
                
            }.edgesIgnoringSafeArea(.all)
        }
        
    }
}

struct Final_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct HelloText: View {
    var body: some View {
        Text("BountyMovie")
            .font(.largeTitle)
            .fontWeight(.semibold)
            .padding(.bottom, 20)
            .foregroundColor(.yellow)
    }
}

struct LogoImage: View {
    var body: some View {
        Image("logoImage")
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
        NavigationLink(
            destination: newpage()){
            Text("S'identifier")
                .font(.headline)
                .foregroundColor(.white)
                .padding()
                .frame(width: 220, height: 60)
                .background(Color.black)
                .cornerRadius(35.0)
        }
    }
}

struct CreateButtonContent: View {
    var body: some View {
        NavigationLink(
            destination: SignUp()){
            Text("S'inscrire")
                .font(.headline)
                .foregroundColor(.white)
                .padding()
                .frame(width: 220, height: 60)
                .background(Color.black)
                .cornerRadius(35.0)
                .accentColor(.black)
        }
        
    }
}



struct UsernameTextField: View {
    
    @Binding var username: String
    
    var body: some View {
        TextField("Username", text: $username)
            .padding()
            .background(lightGreyColor)
            .cornerRadius(5.0)
            .padding(.bottom, 20)
    }
}

struct PasswordSecureField: View {
    
    @Binding var password: String
    
    var body: some View {
        SecureField("Password", text: $password)
            .padding()
            .background(lightGreyColor)
            .cornerRadius(5.0)
            .padding(.bottom, 20)
    }
}
