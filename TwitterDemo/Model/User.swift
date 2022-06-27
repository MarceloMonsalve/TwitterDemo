//
//  User.swift
//  TwitterDemo
//
//  Created by Marcelo Monsalve on 6/23/22.
//

import FirebaseFirestoreSwift

struct User: Identifiable, Decodable {
    @DocumentID var id: String?
    let username: String
    let fullname: String
    let profileImageUrl: String
    let email: String
}
