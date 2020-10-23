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
        
        VStack {
            Wave(yOffset: 0.3)
                .fill(Color.mainOrange)
                .frame(height: 250)
                .shadow(radius: 6)
                .overlay(
                    Text(category.categoryName)
                        .font(.system(size: 24.0))
                        .foregroundColor(Color.white)
                    
                )
            
            Spacer()
        }
        .edgesIgnoringSafeArea(.top)
    }
}

struct CategoryDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryDetailsView(category: Category(categoryName: "Category", categoryImage: "", categoryBackgroudColor: .mainBlue))
    }
}
