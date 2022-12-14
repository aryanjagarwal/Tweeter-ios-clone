//
//  TweetFilterViewModel.swift
//  Twitter Clone
//
//  Created by Aryan Jagarwal on 20/09/22.
//

import Foundation

enum TweetFilterViewModel: Int, CaseIterable {
    case tweets
    case replies
    case likes
    
    var title: String {
        switch self {
        case.tweets: return "Tweets"
        case.replies: return "Replies"
        case.likes: "Likes"
        }
        return "Likes"
    }
}

// Aryan
