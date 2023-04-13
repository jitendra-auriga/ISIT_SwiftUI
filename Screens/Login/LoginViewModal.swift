//
//  LoginViewModal.swift
//  ISIT_SwiftUI
//
//  Created by mac on 2023-04-13.
//

import SwiftUI
import Combine

class LoginViewModal: ObservableObject {
    // Input
    @Published var email = ""
    @Published var password = ""
    
    // Output
    @Published var isEmailEmpty = false
    @Published var isEmailValid = false
    @Published var isPasswordEmpty = false
    
    @Published var showAlert = false
    @Published var alertMessage = ""

    private var cancellableSet: Set<AnyCancellable> = []
    
    init() {
        $email
            .receive(on: RunLoop.main)
            .map { emailAddress in
                return emailAddress.count == 0
            }
            .assign(to: \.isEmailEmpty, on: self)
            .store(in: &cancellableSet)
        
        $email
            .receive(on: RunLoop.main)
            .map { emailAddress in
                return emailAddress.isValidEmail
            }
            .assign(to: \.isEmailValid, on: self)
            .store(in: &cancellableSet)
        
        $password
            .receive(on: RunLoop.main)
            .map { password in
                return  password.isAllEmpty
            }
            .assign(to: \.isPasswordEmpty, on: self)
            .store(in: &cancellableSet)
        
    }
    
    func loginTapped() {
        alertMessage = ""
        
        if isEmailEmpty {
            alertMessage = Messages.account.enterEmail
        }
        else if isEmailValid == false {
            alertMessage = Messages.account.invalidEmail
        }
        else if isPasswordEmpty {
            alertMessage = Messages.account.enterPassword
        }
        
        if alertMessage.isEmpty == false {
            showAlert = true
        }
        else {
            print("Call Login api")
        }
    }
}
