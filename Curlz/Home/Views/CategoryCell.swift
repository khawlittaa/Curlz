//
//  CategoryCell.swift
//  Curlz
//
//  Created by khaoula hafsia on 10/12/20.
//  Copyright © 2020 khaoula hafsia. All rights reserved.
//

import SwiftUI

struct CategoryCell: View {
    static let column = 2
    static let row = 2
    let width = (UIScreen.main.bounds.width / 2) - 20
    
    var body: some View {
        ZStack(alignment: .leading) {
            RoundedRectangle(cornerRadius: 10).frame(width: width, height: 50).foregroundColor(.pink)
                .overlay(HStack{
                    Image(systemName: "person").foregroundColor(.white).imageScale(.large)
                        .padding(.trailing)
                    
                    Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/).foregroundColor(.white)
                })
            
        }
    }
}

struct CategoryCell_Previews: PreviewProvider {
    static var previews: some View {
        CategoryCell()
    }
}
