//
//  Product.swift
//  Curlz
//
//  Created by khaoula hafsia on 10/26/20.
//  Copyright © 2020 khaoula hafsia. All rights reserved.
//

import Foundation
class Product {
    var productName: String = ""
    var brandname: String = ""
    var starRating: Int = 0
    var poductdescription: String = ""
    var productOptions: [String]
    
    init() {
        productOptions = ["cruelty free", "parabenFree", "organic", "noSulfate", "for sensitive skin", "biodegradable", "sustainable"]
    }
}
