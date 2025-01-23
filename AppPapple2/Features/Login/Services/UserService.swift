//
//  UserService.swift
//  AppPapple2
//
//  Created by Christian Morante on 23/01/25.
//
import Foundation
import Alamofire

struct UserService {
    
    static let shared = UserService()
    let url = "www.localhost.com/getUser?="
    
    func validateUser(email: String, password: String, completion: @escaping (Result <UserModel, Error>) -> Void) {
        AF.request(url)
            .validate()
            .responseDecodable(of: UserModel.self) { response in
                switch response.result {
                case .success(let data):
                    completion(.success(data))
                case .failure(let error):
                    completion(.failure(error))
                }
            }
    }
}
