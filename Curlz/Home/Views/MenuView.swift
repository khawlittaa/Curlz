//
//  MenuView.swift
//  Curlz
//
//  Created by khaoula hafsia on 9/5/20.
//  Copyright © 2020 khaoula hafsia. All rights reserved.
//

import SwiftUI

struct MenuView: View {
    var body: some View {
        VStack(alignment: .leading){
            
            HStack{
                Image(systemName: "person").foregroundColor(.white).imageScale(.large)
                Text("Profile").foregroundColor(.white)
                    .font(.headline)
            }
            .padding(.top, 100)
            
            HStack{
                Image(systemName: "magnifyingglass").foregroundColor(.white).imageScale(.large)
                Text("Search").foregroundColor(.white)
                    .font(.headline)
            }
            .padding(.top,30)
            
            HStack{
                Image(systemName: "gear").foregroundColor(.white).imageScale(.large)
                Text("Settings").foregroundColor(.white)
                    .font(.headline)
            }
            .padding(.top, 30)
            
            Spacer()
        }
        .padding()
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(Color.purple)
        .edgesIgnoringSafeArea(.all)
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
