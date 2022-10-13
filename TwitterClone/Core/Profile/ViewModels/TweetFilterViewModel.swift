//
//  TweetViewModel.swift
//  TwitterClone
//
//  Created by Siddiq Barbhuiya on 28/07/22.
//

import Foundation

enum TweetFilterviewModel: Int, CaseIterable {
    case tweets
    case replies
    case likes
    
    var title: String {
        switch self {
        case .tweets: return "Tweets"
        case .replies: return "Replies"
        case .likes: return "Likes"
        }
    }
}
