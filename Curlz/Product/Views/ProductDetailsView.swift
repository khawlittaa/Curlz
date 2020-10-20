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
                .fill(Color.mainOrange)
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
                        .position(x: 80, y: 240)
                        
                        Image("gingerCurlyHair")
                            .resizable()
                            .padding(.top, 10)
                            .position(x: 80, y: 200)
                        
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

struct ProductView: View {
    @State var showMenu = false
    
    var body: some View {
        
        let dragGesture = DragGesture()
            .onEnded {
                if $0.translation.width < -100 {
                    withAnimation {
                        self.showMenu = false
                    }
                }
        }
        /// using geometry reader(to know width and heigt of screen) to make MainView fill th whole screen
        return NavigationView {
            GeometryReader{ geometry in
                ZStack(alignment: .leading) {
                    ProductDetailsView()
                        .frame(width: geometry.size.width, height: geometry.size.height)
                        .offset(x: self.showMenu ? geometry.size.width/2 : 0)
                        .disabled(self.showMenu ? true : false)
                    
                    if self.showMenu{
                        MenuView()
                            .frame(width: geometry.size.width/2)
                            .transition(.move(edge: .leading))
                    }
                }
                .gesture(dragGesture)
            }
            .navigationBarItems(leading: (
                Button(action: {
                    withAnimation {
                        self.showMenu.toggle()
                    }
                }){
                    Image(systemName: "line.horizontal.3").foregroundColor(.white)
                        .imageScale(.large)
                    
                }
            ))
        }
        
    }
}

struct ProductDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        ProductView()
        
    }
}
