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
    
    @State  var  productVM = ProductViewModel()
    
    @State var colors: [Color] = [.pink, .red, .orange, .yellow, .green, .blue, .purple, .gray, .black]
    
    
    var body: some View {
        VStack(alignment: .leading) {
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
                                
                                
                                Button(action: {
                                    //do action
                                }) {
                                    Text("100k reviews")
                                        .font(.system(size: 12.0))
                                        
                                }
                                .foregroundColor(Color.white)
                                .cornerRadius(10)
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
            
            HStack{
                Spacer()
                Button(action: {
                    //do action
                }) {
                    Text("add review")
                        .font(.system(size: 12.0))
                        .frame(width: 100 , height: 30, alignment: .center)
                        
                }
                .foregroundColor(Color.mainPurple)
                .frame(height: 40)
                .cornerRadius(10)
                .padding(.all, 10)
                
            }
            
           
            
            Collection(data: $productVM.product.productOptions) { option in
                // add cell content here
                VStack {
                    Image(option).resizable()
                        .frame(minWidth: 40, maxWidth: .infinity)
                }
                .frame(height: 60)
            }
            .padding(.all,20)
            .frame(height: 180)
            
            Text("Ingredients List: ")
                .font(.system(size: 20.0))
                .fontWeight(.semibold)
                .multilineTextAlignment(.leading)
                .padding(.trailing)
                .padding(.leading,20)
                .foregroundColor(.mainText)
            
            
            Collection(data: $productVM.product.productOptions, cols: 3, spacing: 10)  { option in
                // add cell content here
                VStack {
                   IngredientCell()
                }
                .frame( height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                
            }
            .cornerRadius(10)
            
            
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
