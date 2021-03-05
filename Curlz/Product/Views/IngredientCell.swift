//
//  IngredientCell.swift
//  Curlz
//
//  Created by khaoula hafsia on 10/23/20.
//  Copyright © 2020 khaoula hafsia. All rights reserved.
//

import SwiftUI

struct IngredientCell: View {
    var body: some View {
        
        let width = (UIScreen.main.bounds.width / 3) - 20
        ZStack(alignment: .leading) {
            
            RoundedRectangle(cornerRadius: 10).frame(width: width, height: 40)
            .foregroundColor(.pink)
            .overlay(
                Text("Sodium Loreth sulfate")
                    .multilineTextAlignment(.center)
                    .foregroundColor(.white)
                    .font(.system(size: 10.0))
//                    .padding(10)
                
            )
        
    }
    }
}

struct IngredientCell_Previews: PreviewProvider {
    static var previews: some View {
        IngredientCell()
    }
}
