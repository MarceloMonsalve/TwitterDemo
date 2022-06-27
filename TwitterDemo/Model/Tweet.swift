//
//  Tweet.swift
//  TwitterDemo
//
//  Created by Marcelo Monsalve on 6/26/22.
//

import FirebaseFirestoreSwift
import Firebase

struct Tweet: Identifiable, Decodable {
    @DocumentID var id: String?
    let caption: String
    let timestamp: Timestamp
    let uid: String
    var likes: Int
    var  user: User?
}
