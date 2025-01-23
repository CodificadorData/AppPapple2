//
//  UserModel.swift
//  AppPapple2
//
//  Created by Christian Morante on 23/01/25.
//

struct UserModel: Decodable {
    let id: Int
    let email: String
    let token: String
    let name: String
    let surName: String
}
