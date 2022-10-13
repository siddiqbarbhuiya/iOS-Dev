//
//  ContentView.swift
//  Instagram-App
//
//  Created by Siddiq Barbhuiya on 27/07/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Header()
            
            ScrollView(.vertical, showsIndicators: false) {
                
                Stories()
                
                Divider()
                
                Post()
                
                Post(name: "Tabish", image: "dog", description: "Almost 2 years old")
                Post(name: "Kirti", image: "profile3", description: "Me ans my daughter, after 5 years")
                Post(name: "Rupesh", image: "profile4", description: "Mai Ladka Bahot accha hoon")
                Post(name: "Siddiq Barbhuiya", image: "profile6", description: "Credit ~ @Kirti Naik")

            }
            
            
            TabBar()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Header: View {
    var body: some View {
        HStack {
            Image("logo")
            
            Spacer()
            
            HStack(spacing: 20.0) {
                Image("add")
                Image("heart")
                Image("messenger")
            }
        }
        .padding(.horizontal, 15)
        .padding(.vertical, 3)
    }
}

struct Story: View {
    
    var image:String = "profile"
    var name:String = "Sidd"
    
    var body: some View {
    
        VStack {
            VStack {
                Image(image)
                    .resizable()
                    .frame(width: 60, height: 60)
                    .cornerRadius(50)
            }
            .overlay(
                Circle()
                    .stroke(LinearGradient(colors: [.red, .purple, .red, .orange, .yellow, .orange], startPoint: .topLeading, endPoint: .bottomLeading),
                            lineWidth: 2.3)
                    .frame(width: 68, height: 68)
            )
            .frame(width: 70, height: 70)
            Text(name)
                .font(.caption)
        }
    }
}

struct Stories: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 15.0) {
                Story()
                Story(image: "profile2", name: "Mengo To")
                Story(image: "profile2", name: "Mengo To")
                Story(image: "profile3", name: "Teng to")
                Story(image: "profile4", name: "Mengo To")
                Story(image: "profile5", name: "Tabish")
                Story(image: "profile6", name: "Siddiq")
                Story(image: "profile7", name: "Tamannah")
                Story(image: "profile8", name: "Sumanta")
            }
            .padding(.horizontal, 8)
        }
        .padding(.vertical, 10)
    }
}

struct PostHeder: View {
    
    var name:String = "Sidd"
    var image:String = "profile"
    
    var body: some View {
        HStack {
            HStack {
                Image(image)
                    .resizable()
                    .frame(width: 30, height: 30)
                    .cornerRadius(50)
                
                Text(name)
                    .font(.caption)
                    .fontWeight(.bold)
                
            }
            Spacer()
            
            Image("more")
        }
        .padding(.vertical, 10)
        .padding(.horizontal, 8)
    }
}

struct PostContent: View {
    
    
    var image:String = "profile"
    
    
    var body: some View {
        VStack(spacing: 0){
            Image(image)
                .resizable()
                .frame(width: .infinity)
                .aspectRatio(contentMode: .fit)
            
            
            HStack {
                HStack {
                    Image("heart")
                    Image("comment")
                    Image("share")
                }
                
                Spacer()
                
                Image("bookmark")
            }
            .padding(.horizontal, 12)
            .padding(.vertical, 9)
        }
    }
}

struct Post: View {
    
    var name = "Sidd"
    var image:String = "profile"
    var description:String = "I miss travelling to Japan"
    
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0.0) {
            
            PostHeder(name: name, image: image)
            
            PostContent(image: image)
            
            Text("Liked by Meng to and others")
                .font(.footnote)
                .frame(width: .infinity)
                .padding(.horizontal, 12)
            
            Text(description)
                .font(.footnote)
                .frame(width: .infinity)
                .padding(.horizontal, 12)
            
            HStack {
                HStack(spacing: 7.0) {
                    Image(image)
                        .resizable()
                        .frame(width: 24, height: 24)
                        .cornerRadius(59)
                    
                    Text("Add Comments...")
                        .font(.caption)
                        .foregroundColor(.secondary)
                }
                
                Spacer()
                
                HStack {
                    Text("😍")
                    Text("😂")
                    Image(systemName: "plus.circle")
                        .foregroundColor(.secondary)
                    
                }
            }
            .padding(.horizontal, 12)
            .padding(.vertical, 10)
        }
    }
}

struct TabBar: View {
    var body: some View {
        VStack(spacing: 0.0) {
            HStack {
                
                Image("home")
                Spacer()
                Image("search")
                Spacer()
                Image("reels")
                Spacer()
                Image("shop")
                Spacer()
                Image("profile")
                    .resizable()
                    .frame(width: 21, height: 21)
                    .cornerRadius(50)
            }
            .padding(.horizontal, 25)
            .padding(.top, 10)
        }
    }
}
