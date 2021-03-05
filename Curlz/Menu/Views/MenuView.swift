//
//  MenuView.swift
//  Curlz
//
//  Created by khaoula hafsia on 9/5/20.
//  Copyright © 2020 khaoula hafsia. All rights reserved.
//

import SwiftUI

@available(iOS 14.0, *)
struct MenuView: View {
    var isLogged =  true
    var items = ["Home","Search","Scan Ingredients","Find out Hair Type","Browse Tips"]
    var gridItems: [GridItem] = [GridItem()]
    var body: some View {
        ScrollView{
            
            LazyVGrid(columns: gridItems, alignment: .leading, spacing: 20){
                if isLogged{
                    MenuProfileItem()
                        .padding(.top,40)
                        .frame(width: UIScreen.main.bounds.width / 2 , alignment: .center)
                        
                }
                MenuRowItem(isSeletcte: true)
                ForEach(1...4, id: \.self){ item in
                    MenuRowItem()
                }
            }
        }
        .padding()
        .background(Color.blueberry)
        .edgesIgnoringSafeArea(.all)
    
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
