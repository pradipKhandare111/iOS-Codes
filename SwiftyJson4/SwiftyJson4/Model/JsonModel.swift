//
//  JsonModel.swift
//  SwiftyJson4
//
//  Created by NTS on 10/11/23.
//

import Foundation


struct JsonModel
{
    var body: String = ""
    
    init() {
        
    }
    
    init(json: JSON) {
        self.body = json["body"].stringValue
    }
    
}
