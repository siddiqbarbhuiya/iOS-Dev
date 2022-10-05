//
//  ContentView.swift
//  APIData
//
//  Created by Siddiq Barbhuiya on 09/08/22.
//

import SwiftUI


struct Quote: Codable {
    var quote_id: Int
    var quote: String
    var author: String
    var series: String
}

struct ContentView: View {
    @State private var quotes = [Quote]()
    
    var body: some View {
        NavigationView {
            List(quotes, id: \.quote_id) { quote in
                VStack(alignment: .leading) {
                    Text(quote.author)
                        .font(.headline)
                        .foregroundColor(Color("skyBlue"))
                    
                    Text(quote.quote)
                        .font(.body)
                        .foregroundColor(.secondary)
                }
            }
            .navigationTitle("Quotes")
            .task {
                await fetchData()
            }
        }
    }
    func fetchData() async {
        //create url
        guard let url = URL(string: "https://www.breakingbadapi.com/api/quotes") else {
            print("No Data Found")
            return
        }
        
        //fetch data
        do {
            let (data, _) = try await URLSession.shared.data(from: url)
            
            //decode that data
            if let decodedResponse = try? JSONDecoder().decode([Quote].self, from: data) {
                quotes = decodedResponse
            }
        } catch {
            print("Error found")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
