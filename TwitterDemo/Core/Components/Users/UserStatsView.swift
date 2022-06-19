//
//  UserStatsView.swift
//  TwitterDemo
//
//  Created by Marcelo Monsalve on 6/17/22.
//

import SwiftUI

struct UserStatsView: View {
    var body: some View {
        HStack(spacing: 24) {
            HStack(spacing: 4) {
                Text("808").bold()
                    .font(.subheadline)
                Text("Following")
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            HStack(spacing: 4) {
                Text("4.6m").bold()
                    .font(.subheadline)
                Text("Followers")
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
        }
    }
}

struct UserStatsView_Previews: PreviewProvider {
    static var previews: some View {
        UserStatsView()
    }
}
