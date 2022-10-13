//
//  UserRowView.swift
//  TwitterClone
//
//  Created by Siddiq Barbhuiya on 28/07/22.
//

import SwiftUI

struct UserRowView: View {
    var body: some View {
        HStack {
            Circle()
                .frame(width: 48, height: 48)
            
            VStack(alignment: .leading) {
                Text("joker")
                    .font(.subheadline).bold()
                    .foregroundColor(.black)
                
                
                Text("Heath Ledger")
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            Spacer()
        }
        .padding(.horizontal)
        .padding(.vertical, 4)
    }
}

struct UserRowView_Previews: PreviewProvider {
    static var previews: some View {
        UserRowView()
    }
}
