//
//  ProfileView.swift
//  TwitterClone
//
//  Created by Siddiq Barbhuiya on 28/07/22.
//

import SwiftUI

struct ProfileView: View {
    
    @State private var selectionFilter: TweetFilterviewModel = .tweets
    @Environment(\.presentationMode) var mode
    @Namespace var animation
    
    var body: some View {
        
        //blue profile area on top
        VStack(alignment: .leading) {
            HeaderView
            
            ActionButtons
            
            userInfoDetails
            
            tweetFilterBar
            
            tweetsView
            

            
            Spacer()
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}

extension ProfileView {
    var HeaderView: some View {
        ZStack(alignment: .bottomLeading) {
            Color(.systemBlue)
                .ignoresSafeArea()
            
            VStack {
                
                Button {
                    //action
                    mode.wrappedValue.dismiss()
                } label: {
                    Image(systemName: "arrow.left")
                        .resizable()
                        .frame(width: 20, height: 16)
                        .foregroundColor(.white)
                        .offset(x: 16, y: 12)
                }
                
                
                Circle()
                    .frame(width: 72, height: 72)
                    .offset(x: 16, y: 24)
                
            }
        }
        .frame(height: 96)
    }
    
    var ActionButtons: some View {
        
        HStack(spacing: 12) {
            Spacer()
            
            Image(systemName: "bell.badge")
                .font(.title)
                .padding(6)
                .overlay(Circle().stroke(Color.gray, lineWidth: 0.75))
            
            
            Button {
                //action
            } label: {
                Text("Edit Profile")
                    .font(.subheadline)
                    .frame(width: 120, height: 32)
                    .foregroundColor(.black)
                    .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.gray, lineWidth: 0.75))
            }

        }
        .padding(.trailing)
    }
    
    
    var userInfoDetails: some View {
        VStack(alignment: .leading, spacing: 4) {
            //for name
            HStack {
                Text("Heath Ledger")
                    .font(.title)
                    .bold()
                
                //for tick
                Image(systemName: "checkmark.seal.fill")
                    .foregroundColor(Color(.systemBlue))
            }
            
            //for username
            Text("@joker")
                .foregroundColor(.gray)
            
            //profile bio
            Text("My favorite Villain")
                .font(.subheadline)
                .padding(.vertical)
            
            
            //inof
            HStack(spacing: 24) {
                HStack {
                    Image(systemName: "mappin.and.ellipse")
                    
                    Text("Gotham, NY")
                }
                                    
                HStack {
                    Image(systemName: "link")
                    
                    Text("www.joker.com")
                }
            }
            .font(.caption)
            .foregroundColor(.gray)
            
            UserStatsView()
            .padding(.vertical)
        }
        .padding(.horizontal)
    }
    
    
    var tweetFilterBar: some View {
        HStack {
            ForEach(TweetFilterviewModel.allCases, id: \.rawValue) { item in
                VStack {
                    Text(item.title)
                        .font(.subheadline)
                        .fontWeight(selectionFilter == item ? .semibold : .regular)
                        .foregroundColor(selectionFilter == item ? .black : .gray)
                    
                    if selectionFilter == item {
                        Capsule()
                            .foregroundColor(Color(.systemBlue))
                            .matchedGeometryEffect(id: "filter", in: animation)
                            .frame(height: 3)
                    }
                    else {
                        Capsule()
                            .foregroundColor(Color.clear)
                            .frame(height: 3)
                    }
                }
                .onTapGesture {
                    withAnimation {
                        self.selectionFilter = item
                    }
                }
            }
        }
        .overlay(Divider().offset(x: 0, y: 16))
    }
    
    var tweetsView: some View {
        ScrollView {
            LazyVStack {
                ForEach(0...9, id: \.self) { _ in
                    TweetRowView()
                        .padding()
                }
            }
        }
    }
}
