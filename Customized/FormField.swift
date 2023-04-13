//
//  FormField.swift
//  ISIT_SwiftUI
//
//  Created by mac on 2023-04-13.
//

import SwiftUI


struct FormField: View {
    
    var fieldName = ""
    var icon = ""
    var isSecure = false
    @Binding var fieldValue: String
    var keyboardType = UIKeyboardType.default

    var iconTap: () -> () = {}

    var body: some View {
        
        VStack {
            HStack{
                if isSecure {
                    SecureField(fieldName, text: $fieldValue)
                        .font(.custom("poppins-medium", size: 16))
                    
                } else {
                    TextField(fieldName, text: $fieldValue)
                        .font(.custom("poppins-medium", size: 16))
                        .keyboardType(keyboardType)
                }
                
                if icon.isEmpty == false {
                    //Spacer()
                    Image(icon)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 20))
                        .frame(width: 40, height: 40)
                        .onTapGesture {
                            iconTap()
                        }
                }
                
            }
            
            Divider()
                .frame(height: 1)
                .background(Color(red: 240/255, green: 240/255, blue: 240/255))
            
        }
    }
}
