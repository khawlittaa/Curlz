//
//  MenuRowItem.swift
//  Curlz
//
//  Created by khaoula hafsia on 5/3/2021.
//  Copyright © 2021 khaoula hafsia. All rights reserved.
//

import SwiftUI

struct MenuRowItem: View {
    var isSeletcte = false
    
    var body: some View {
        HStack{
            if isSeletcte{
                selectedItem
                    .cornerRadius(20)
            }else{
                notSelectedItem
          
        }
        }
    }
    
    var notSelectedItem: some View{
        return HStack{
            Image("icons8-home-page-50 (1)")
                .imageScale(.large)
            
            Text("Home")
                .foregroundColor(.white)
                .font(.headline)
        }
        .padding(10)
        .background(Color.blueberry)
        
    }
    
    var selectedItem: some View{
        return HStack{
                Image(systemName: "home")
                    .imageScale(.large)
            
                Text("Home").foregroundColor(.black)
                    .font(.headline)
        }
        .padding(10)
        .background(Color.white)
    }
}

struct MenuRowItem_Previews: PreviewProvider {
    static var previews: some View {
        MenuRowItem()
    }
}
