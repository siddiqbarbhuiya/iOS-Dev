//
//  ContentView.swift
//  AngelaCard
//
//  Created by Angela Yu on 06/09/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color("View Color")
                .edgesIgnoringSafeArea(.all)
            VStack {
                
                Image("sidd")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150.0, height: 150.0)
                    .clipShape(Circle())
                    .overlay(
                        Circle().stroke(Color.white, lineWidth: 5)
                )
                Text("Siddiq Barbhuiya")
                    .font(Font.custom("Pacifico-Regular", size: 40))
                    .bold()
                    .foregroundColor(.white)
                Text("iOS Developer")
                    .foregroundColor(.white)
                    .font(.system(size: 25))
                Divider()
                InfoView(text: "angela@email.com", imageName: "envelope.fill")
                InfoView(text: "91 7002357790", imageName: "phone.fill")
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


