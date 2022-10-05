//
//  CoinManager.swift
//  ByteCoin
//
//  Created by Angela Yu on 11/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

//by convention, swift protocols are written on the file that has the class/struct which will call the delegate mehods i.e. the CoinManager

protocol CoinManagerDelegate {
    func didUpdatePrice(price: String, currency: String)
    func didFailWithError(error: Error)
}

struct CoinManager {
    
    //create an option delegate that will have to implement the delegate methods
    var delegate: CoinManagerDelegate?
    
    let baseURL = "https://rest.coinapi.io/v1/exchangerate/BTC"
    let apiKey = "C885EBAC-5DFD-4C7A-995B-B6FE5451A253"
    
    let currencyArray = ["AUD", "BRL","CAD","CNY","EUR","GBP","HKD","IDR","ILS","INR","JPY","MXN","NOK","NZD","PLN","RON","RUB","SEK","SGD","USD","ZAR"]
    
    
    func getCoinPrice(for currency: String) {
        //use string concat to unwrap the url thats created from the string
        let urlSTring = "\(baseURL)/\(currency)?apikey=\(apiKey)"
        
        //use optional binding to unwrap the url thats created from the url string
        if let url = URL(string: urlSTring) {
            
            //create new URL session object with default configuration
            let session = URLSession(configuration: .default)
            
            //create a new tak for the URLSession
            let task = session.dataTask(with: url) { (data, response, error) in
                if error != nil {
                    self.delegate?.didFailWithError(error: error!)
                    print(error!)
                    return
                }
                
                //                //else format the data we got back as a string to be able to print it
                //                let dataAsString = String(data: data!, encoding: .utf8)
                //                print(dataAsString)
                
                if let safeData = data {
                    if let bitcoinPrice = self.parseJSOn(safeData){
                        
                        //round the price down to 2 decimal
                        let priceSTring = String(format: "%.2f", bitcoinPrice)
                        
                        self.delegate?.didUpdatePrice(price: priceSTring, currency: currency)
                        print(priceSTring)
                    }
                }
            }
            //start task to fetch data from bitcoins average server
            task.resume()
        }
    }
    
    func parseJSOn(_ data: Data)-> Double? {
        
        //create a JSON DEcoder
        let decoder = JSONDecoder()
        
        do {
            //try to decode the data using coindata struct
            let decodedData = try decoder.decode(CoinData.self, from: data)
            
            //get the last property from the decoded data
            let lastPrice = decodedData.rate
            print(lastPrice)
            return lastPrice
        } catch {
            self.delegate?.didFailWithError(error: error)
            print(error)
            return nil
        }
    }
}
