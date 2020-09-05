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
                Image(systemName: "person").foregroundColor(.pink).imageScale(.large)
                Text("Profile").foregroundColor(.pink)
                    .font(.headline)
            }
            .padding(.top, 100)
            
            HStack{
                Image(systemName: "envelope").foregroundColor(.pink).imageScale(.large)
                Text("Messages").foregroundColor(.pink)
                    .font(.headline)
            }
            .padding(.top,30)
            
            HStack{
                Image(systemName: "gear").foregroundColor(.pink).imageScale(.large)
                Text("Settings").foregroundColor(.pink)
                    .font(.headline)
            }
            .padding(.top, 30)
            
            Spacer()
        }
    .padding()
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(Color(UIColor.lightGray))
        .edgesIgnoringSafeArea(.all)
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
