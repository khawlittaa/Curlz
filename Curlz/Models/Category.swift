//
//  Category.swift
//  Curlz
//
//  Created by khaoula hafsia on 10/14/20.
//  Copyright © 2020 khaoula hafsia. All rights reserved.
//

import SwiftUI

class Category{
    var categoryName: String
    var categoryImage: String
    var categoryBackgroudColor: Color
    
    init(categoryName: String, categoryImage: String, categoryBackgroudColor: Color ) {
        self.categoryName = categoryName
        self.categoryImage = categoryImage
        self.categoryBackgroudColor = categoryBackgroudColor
    }
}
