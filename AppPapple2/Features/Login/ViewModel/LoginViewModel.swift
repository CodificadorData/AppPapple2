//
//  LoginViewModel.swift
//  AppPapple2
//
//  Created by Christian Morante on 23/01/25.
//

import Combine
import Foundation

class LoginViewModel: ObservableObject {
    
    @Published var users: UserModel? = nil
    @Published var emailInput: String = ""
    @Published var passwordInput: String = ""
            
    func validateUser() {
        UserService.shared.validateUser(email: emailInput, password: passwordInput) { (result: Result<UserModel, Error>) in
            DispatchQueue.main.async {
                switch result {
                case .success(let users):
                    self.users = users
                case .failure(let error):
                    print("Error: \(error.localizedDescription)")
                }
            }
        }
    }
    
}
