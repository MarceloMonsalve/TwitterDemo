//
//  SideMenuViewModel.swift
//  TwitterDemo
//
//  Created by Marcelo Monsalve on 6/17/22.
//

import Foundation

enum SideMenuViewModel: Int, CaseIterable {
    case profile
    case listss
    case bookmarks
    case logout
    
    var title: String {
        switch self {
        case .profile: return "Profile"
        case .listss: return "Lists"
        case .bookmarks: return "Bookmarks"
        case .logout: return "Logout"
        }
    }
    
    var imageName: String {
        switch self {
        case .profile: return "person"
        case .listss: return "list.bullet"
        case .bookmarks: return "bookmark"
        case .logout: return "arrow.left.square"
        }
    }
    
    
}
