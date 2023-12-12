//
//  ModelJson.swift
//  SwiftyJson2
//
//  Created by NTS on 09/11/23.
//

import Foundation


struct ModelJson
{
    var title: String = ""
    var body: String = ""
    
    
    init() {
        
    }
    
    init(json: JSON) {
        self.title = json["title"].stringValue
        self.body = json["body"].stringValue
    }
    
}
