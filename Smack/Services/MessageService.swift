//
//  MessageService.swift
//  Smack
//
//  Created by Raghav Vashisht on 02/08/17.
//  Copyright © 2017 Raghav Vashisht. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON


class MessageService {
    
    static let instance = MessageService()
    var channels = [Channel]()
    
    func findAllChannel(completion: @escaping CompletionHandler) {
        
        Alamofire.request(URL_GET_CHANNELS, method: .get, parameters: nil, encoding: JSONEncoding.default, headers: BEARER_HEADER).responseJSON { (response) in
            
            if response.result.error != nil {
                
                guard let data = response.data else { return }
                if let json = JSON(data: data).array {
                    for item in json {
                        let name = item["name"].stringValue
                        let channelDesc = item["description"].stringValue
                        let id = item["_id"].stringValue
                        
                        let channel = Channel(channelTitle: name, channelDescription: channelDesc, id: id)
                        self.channels.append(channel)
                    }
                    completion(true)
                }
                
                
                
            } else {
                completion(false)
                debugPrint(response.result.error as Any)
            }
            
        }
        
        
    }
    
}
