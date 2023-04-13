//
//  SignUp.swift
//  ISIT_SwiftUI
//
//  Created by mac on 2023-04-13.
//
//
//import SwiftUI
//
//struct SignUp: View {
//    
//    @ObservedObject private var signupViewModel = SignupViewModel()
//    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
//
//    
//    var body: some View {
//        VStack(){
//            HStack{
//                Button {
//                    self.presentationMode.wrappedValue.dismiss()
//                    
//                } label: {
//                    Image("arrowBack")
//                        .frame(width: 50, height: 46)
//                }
//                .padding(.leading, 10)
//                .foregroundColor(.black)
//                Spacer()
//            }
//            Image("forgotPassword")
//                .resizable()
//                .aspectRatio(contentMode: .fit)
//                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height * 0.135)
//                .edgesIgnoringSafeArea(.all)
//                .padding(EdgeInsets(top: 26, leading: 0, bottom: 0, trailing: 0))
//            
//            Text("Forgot Password")
//                .font(.custom("Poppins-Bold", size: 30))
//            
//            Text("Please enter your email address to reset your password")
//                .font(.custom("Poppins-Regular", size: 15))
//                .foregroundColor(.black)
//            
//            FormField(fieldName: "Email", icon: "messageSm", isSecure: false, fieldValue: $forgotPasswordViewModal.email).padding(EdgeInsets(top: 50, leading: 025, bottom: 0, trailing: 25))
//            
//            Spacer()
//            Button("Already have a code") {
//                
//            }
//            .font(.custom("Poppins-Medium", size: 15))
//            .foregroundColor(Color("buttonLink"))
//            .padding(EdgeInsets(top: 30, leading: 0, bottom: 50, trailing: 30))
//            
//            GeometryReader { gr in
//                Button {
//                    
//                } label: {
//                    Text("Submit")
//                }
//                .frame(width: gr.size.width - 60, height: 50)
//                .background(LinearGradient(gradient: Gradient(colors: [Color("startGradientOrange"), Color("endGradientOrange")]), startPoint: .leading, endPoint: .trailing))
//                .foregroundColor(.white)
//                .clipShape(Capsule())
//                .padding(.leading, 30)
//            }
//       }
//        .background(LinearGradient(gradient: Gradient(colors: [.white, .white, Color("gradientOrange")]), startPoint: .top, endPoint: .bottom))
//        .navigationBarTitle("", displayMode: .inline)
//        .navigationBarHidden(true)
//        
//
//    }
//}
//
//struct SignUp_Previews: PreviewProvider {
//    static var previews: some View {
//        SignUp()
//    }
//}
