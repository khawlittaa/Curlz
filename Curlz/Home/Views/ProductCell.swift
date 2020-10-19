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
        
        ZStack(alignment: .trailing) {
            
            RoundedRectangle(cornerRadius: 10).frame(width: 150, height: 150).foregroundColor(.white)
                .opacity(0.7)
                .shadow(color: .gray, radius: 1, x: 1, y: 1)
                
                .overlay(   ZStack(){ VStack{
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
                    
                    
                    }

                    HStack(alignment: .center, spacing: 4){
                            Image("star-filled").resizable()
                                .frame(width: 15, height: 15)
                                .padding(.leading)
                                
                            Text("4.5").foregroundColor(.black)
                        }
                    .frame(height: 15)
                .position(CGPoint(x: 120, y: 20))
                })
              
    
        
            
            
            
            
        }
        
    }
}

struct ProductCell_Previews: PreviewProvider {
    static var previews: some View {
        ProductCell()
    }
}
