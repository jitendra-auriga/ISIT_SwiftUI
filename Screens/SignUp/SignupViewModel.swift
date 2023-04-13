//
//  SignupViewModel.swift
//  ISIT_SwiftUI
//
//  Created by mac on 2023-04-13.
//


import SwiftUI
import Combine

class SignupViewModel: ObservableObject {
    // Input
    @Published var email = ""
    
    // Output
    @Published var isEmailEmpty = false
    @Published var isEmailValid = false
    
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
        
    }
}
