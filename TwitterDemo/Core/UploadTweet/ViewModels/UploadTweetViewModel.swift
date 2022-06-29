//
//  UploadTweetViewModel.swift
//  TwitterDemo
//
//  Created by Marcelo Monsalve on 6/26/22.
//

import Foundation

class UploadTweetViewModel: ObservableObject {
    @Published var didUploadTweet = false
    let service = TweetService()
    
    func uploadTweet(withCaption caption: String) {
        service.uploadTweet(caption: caption) { success in
            if success {
                self.didUploadTweet = true
            } else {
                
            }
        }
    }
    
}
