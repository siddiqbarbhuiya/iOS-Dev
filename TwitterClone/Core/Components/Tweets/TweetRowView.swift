//
//  TweetRowView.swift
//  TwitterClone
//
//  Created by Siddiq Barbhuiya on 28/07/22.
//

import SwiftUI

struct TweetRowView: View {
    var body: some View {
        
        VStack(alignment: .leading) {
            
            //profile image + user info + tweet
            HStack(alignment: .top, spacing: 12) {
                Circle()
                    .frame(width: 56, height: 56)
                    .foregroundColor(Color(.systemBlue))
                
                VStack(alignment: .leading, spacing: 4) {
                    //user info
                    HStack {
                        Text("Bruce Wayne")
                            .font(.subheadline).bold()
                        
                        Text("@batman")
                            .foregroundColor(.gray)
                            .font(.caption)
                        
                        Text("2w")
                            .foregroundColor(.gray)
                            .font(.caption)
                    }
                    
                    //Tweet Caption
                    Text("I belive in Herby Dent")
                        .font(.subheadline)
                        .multilineTextAlignment(.leading)
                }
            }
            
            //action buttons
            HStack {
                Button {
                    //code
                } label: {
                    Image(systemName: "bubble.left")
                        .font(.subheadline)
                }
                
                Spacer()
                
                Button {
                    //code
                } label: {
                    Image(systemName: "arrow.2.squarepath")
                        .font(.subheadline)
                }
                
                Spacer()
                
                Button {
                    //code
                } label: {
                    Image(systemName: "heart")
                        .font(.subheadline)
                }
                
                Spacer()
                
                
                Button {
                    //code
                } label: {
                    Image(systemName: "bookmark")
                        .font(.subheadline)
                }
            }
            .padding()
            .foregroundColor(.gray)
            
            Divider()
        }        
    }
}

struct TweetRowView_Previews: PreviewProvider {
    static var previews: some View {
        TweetRowView()
    }
}
