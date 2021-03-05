//
//  MenuprofileItem.swift
//  Curlz
//
//  Created by khaoula hafsia on 5/3/2021.
//  Copyright © 2021 khaoula hafsia. All rights reserved.
//

import SwiftUI

struct MenuProfileItem: View {
    var body: some View {
        VStack{
            Image("happy-teenage-girl-with-curly-hair-holds-modern-mobile-phone-takeout-coffee-orders-taxi-via-online-application-types-text-message-wears-yellow-clothing-people-modern-lifestyle-technology")
                .resizable()
                .frame(width: 60, height: 60)
                .cornerRadius(30)
            
            Text("User Name ")
                .foregroundColor(.white)
                .font(.headline)
        }
    }
}

struct MenuprofileItem_Previews: PreviewProvider {
    static var previews: some View {
        MenuProfileItem()
    }
}
