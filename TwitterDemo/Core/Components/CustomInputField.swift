//
//  CustomInputFieldView.swift
//  TwitterDemo
//
//  Created by Marcelo Monsalve on 6/18/22.
//

import SwiftUI

struct CustomInputFieldView: View {
    let imageName: String
    let placeHolderText: String
    @Binding var text: String
    
    var body: some View {
        VStack {
            HStack {
                Image(systemName: imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20, height: 20)
                    .foregroundColor(.gray)
                TextField(placeHolderText, text: $text)
            }
            Divider()
                .background(Color(.darkGray))
        }
    }
}

struct CustomInputFieldView_Previews: PreviewProvider {
    static var previews: some View {
        CustomInputFieldView(imageName: "envelope",
                             placeHolderText: "Email",
                             text: .constant(""))
    }
}
