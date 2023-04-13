//
//  ContentView.swift
//  ISIT_SwiftUI
//
//  Created by mac on 2023-04-13.
//

import SwiftUI

struct Login: View {
    
    @ObservedObject private var loginViewModal = LoginViewModal()
    @State var showPassword = false
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>

    
    var body: some View {
        VStack(){
            //Spacer(minLength: 26)
            Image("logoLogin")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height * 0.135)
                .edgesIgnoringSafeArea(.all)
                .padding(EdgeInsets(top: 26, leading: 0, bottom: 0, trailing: 0))
            
            Text("WELCOME BACK!")
                .font(.custom("Poppins-Bold", size: 30))
            Text("Please login to your account.")
                .font(.custom("Poppins-Regular", size: 15))
                .foregroundColor(Color(hex: 0x999999))
            
            FormField(fieldName: "Email", icon: "messageSm", isSecure: false, fieldValue: $loginViewModal.email, keyboardType: .emailAddress).padding(EdgeInsets(top: 50, leading: 025, bottom: 0, trailing: 25))
            
            FormField(fieldName: "Password", icon: showPassword ? "eyeClosed" : "eyeOpened" , isSecure: showPassword ? false : true, fieldValue: $loginViewModal.password, iconTap: {
                showPassword.toggle()
            }).padding(EdgeInsets(top: 30, leading: 25, bottom: 0, trailing: 25))
                
            
            HStack{
                Spacer()
                NavigationLink(destination: ForgotPassword(), label: {
                    Text("Forgot Password?")
                    .font(.custom("Poppins-Regular", size: 12))
                    .foregroundColor(Color("buttonLink"))
                    .padding(EdgeInsets(top: 30, leading: 0, bottom: 30, trailing: 30))
                })
            }
            
            GeometryReader { gr in
                Button {
                    loginViewModal.loginTapped()
                } label: {
                    Text("Login")
                }
                .frame(width: gr.size.width - 60, height: 50)
                .background(LinearGradient(gradient: Gradient(colors: [Color("startGradientOrange"), Color("endGradientOrange")]), startPoint: .leading, endPoint: .trailing))
                .foregroundColor(.white)
                .clipShape(Capsule())
                .padding(.leading, 30)
            }
            Spacer()
            HStack() {
                Text("Don't have an account?")
                    .font(.custom("Poppins-Regular", size: 13))
                Text("Sign Up")
                    .font(.custom("Poppins-Bold", size: 13))
                    .foregroundColor(Color("buttonLink"))
                    .onTapGesture {
                        print("Sign up")
                    }
            }
            Spacer()
        }
        .background(LinearGradient(gradient: Gradient(colors: [.white, .white, Color("gradientOrange")]), startPoint: .top, endPoint: .bottom))
        .alert(isPresented: $loginViewModal.showAlert) {
            Alert(title: Text("Alert"),
                  message: Text(loginViewModal.alertMessage),
                  dismissButton: .default(Text("Ok"), action: { self.presentationMode.wrappedValue.dismiss()
            }))
        }
    }
}

struct Login_Previews: PreviewProvider {
    static var previews: some View {
        Login()
    }
}
