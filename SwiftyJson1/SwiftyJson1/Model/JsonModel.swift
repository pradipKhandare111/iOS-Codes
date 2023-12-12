//
//  JsonModel.swift
//  SwiftyJson1
//
//  Created by NTS on 09/11/23.
//

import Foundation


struct JsonModel
{
    var title: String = ""
    var body: String = ""
    var id: String = ""
    
    init() {
        
    }
    
    init(json: JSON) {
      title = json["title"].stringValue
       body = json["body"].stringValue
        id = json["id"].stringValue
    }
}
