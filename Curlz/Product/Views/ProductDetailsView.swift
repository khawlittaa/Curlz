//
//  ProductDetailsView.swift
//  Curlz
//
//  Created by khaoula hafsia on 10/20/20.
//  Copyright © 2020 khaoula hafsia. All rights reserved.
//

import SwiftUI

struct ProductDetailsView: View {
    
    //    @Binding var showMenu: Bool
    
    var body: some View {
        
        VStack {
            Wave(yOffset: 0.3)
                .fill(Color.mainPurple)
                .frame(height: 250)
                .shadow(radius: 6)
                .overlay(
                    HStack(alignment: .center, spacing: 10) {
                        VStack(alignment: .leading){
                            Text("Product Name")
                                .font(.system(size: 24.0))
                                .fontWeight(.semibold)
                                .foregroundColor(Color.white)
                                .multilineTextAlignment(.leading)
                            
                            Text("Brand Name")
                                .font(.system(size: 20.0))
                                .fontWeight(.semibold)
                                .foregroundColor(Color.white)
                                .multilineTextAlignment(.leading)
                            
                            
                            HStack(alignment: .center, spacing: 4){
                                Image("star-filled")
                                    .resizable()
                                    .frame(width: 15, height: 15)
                                    .foregroundColor(.white)
                                
                                Text("4.5")
                                    .foregroundColor(.white)
                                    .font(.system(size: 12.0))
                            }
                            .frame(height: 15)
                            
                            
                            Text(" Product description here bla bla bla blablablaa")
                                .font(.system(size:12.0))
                                .fontWeight(.regular)
                                .foregroundColor(Color.white)
                                .multilineTextAlignment(.leading)
                            
                        }
                        .position(x: 80, y: 120)
                        
                        Image("natureBoxShampoo")
                            .resizable()
                            .padding(.top, 10)
                            .position(x: 100, y: 100)
                        
                    }
                    .frame(height: 200)
                    .padding(.all,20)
                    .edgesIgnoringSafeArea(.top)
            )
            
            Spacer()
        }
        .edgesIgnoringSafeArea(.top)
    }
}

struct ProductDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailsView()
        
    }
}
