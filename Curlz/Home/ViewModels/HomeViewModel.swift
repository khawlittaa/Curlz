//
//  HomeViewModel.swift
//  Curlz
//
//  Created by khaoula hafsia on 10/14/20.
//  Copyright © 2020 khaoula hafsia. All rights reserved.
//

import Foundation

class HomeViewModel{
    
    var categories:[Category] = [Category]()
    
    init() {
        let cat1 = Category(categoryName: "Scan Ingredients", categoryImage: "", categoryBackgroudColor: .blueberry)
        let cat2 = Category(categoryName: "Styling Tips", categoryImage: "", categoryBackgroudColor: .rosyPink)
        let cat3 = Category(categoryName: "find out Hair Type", categoryImage: "", categoryBackgroudColor: .orangeish)
        let cat4 = Category(categoryName: "Wash Day Tips", categoryImage: "", categoryBackgroudColor: .softBlue)
        
        categories = [cat1, cat2, cat3, cat4]
    }
}
