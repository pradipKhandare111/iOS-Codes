//
//  JsonModel.swift
//  SwiftyJsonWithStaticTableView
//
//  Created by NTS on 10/11/23.
//

import Foundation

struct JsonModel
{
    var id: String = ""
    var title: String = ""
    var body: String = ""
    
    init(){
        
    }
    
    init(json: JSON){
        id = json["id"].stringValue
        title = json["title"].stringValue
        body = json["body"].stringValue
    }
}
