//
//  CategoryDetailsView.swift
//  Curlz
//
//  Created by khaoula hafsia on 10/20/20.
//  Copyright © 2020 khaoula hafsia. All rights reserved.
//

import SwiftUI

struct CategoryDetailsView: View {
    
    let category: Category
    var body: some View {
        Text(category.categoryName)
    }
}

struct CategoryDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryDetailsView(category: Category(categoryName: "Category", categoryImage: "", categoryBackgroudColor: .mainBlue))
    }
}
