//
//  CoinManager.swift
//  ByteCoin
//
//  Created by Angela Yu on 11/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

protocol MyPro {
    func didget(_ rate:Double)
}

struct CoinManager {
    
    let baseURL = "https://rest.coinapi.io/v1/exchangerate/BTC"
    let apiKey = "1B65A800-0839-432B-9020-9AD3D160D8DF"
    var delegte:MyPro?
    let currencyArray = ["AUD", "BRL","CAD","CNY","EUR","GBP","HKD","IDR","ILS","INR","JPY","MXN","NOK","NZD","PLN","RON","RUB","SEK","SGD","USD","ZAR"]

    func fetch(_ s:String) {
        let url="\(baseURL)/\(s)?apikey=\(apiKey)"
        
        let connect=URL(string: url)!
        
        let session=URLSession(configuration: .default)
        if connect != nil {
        let task = session.dataTask(with: connect){
            
            if $2 != nil{return}
            if $0 != nil {
                
                let jason = JSONDecoder()
                do{
           let result = try jason.decode(coin.self, from: $0!)
                    delegte?.didget(result.rate)
                }catch{}
                
            }
        }
        
        
            task.resume()}
        
    }
    
    
}
