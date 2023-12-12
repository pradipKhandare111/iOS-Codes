//
//  jsonModel.swift
//  SwiftJson3
//
//  Created by NTS on 09/11/23.
//

import Foundation


struct jsonModel
{
    var title: String = ""
    
    init() {
        
    }
    
    init(json: JSON) {
        self.title = json["title"].stringValue
    }
}
