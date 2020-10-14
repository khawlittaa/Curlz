//
//  ProductCell.swift
//  Curlz
//
//  Created by khaoula hafsia on 10/14/20.
//  Copyright © 2020 khaoula hafsia. All rights reserved.
//

import SwiftUI

struct ProductCell: View {
    
    var body: some View {
        ZStack(alignment: .leading) {
            RoundedRectangle(cornerRadius: 10).frame(width: 150, height: 150).foregroundColor(.white)
            .shadow(color: .gray, radius: 2)
                .overlay(   VStack{
                    Image("gingerCurlyHair")
                        .resizable()
                    Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                    
                    
                    Button(action: {
                           //do action
                    }) {
                        Text("Hair Product")
                            .frame(width: 150 , height: 30, alignment: .center)
                    }
                     .background(Color.blue)
                     .foregroundColor(Color.white)
                     .cornerRadius(10)
                    
                    
                })
                
            
        }
        
    }
}

struct ProductCell_Previews: PreviewProvider {
    static var previews: some View {
        ProductCell()
    }
}
