//
//  ContentView.swift
//  Curlz
//
//  Created by khaoula hafsia on 9/3/20.
//  Copyright © 2020 khaoula hafsia. All rights reserved.
//

import SwiftUI

struct ContentView: View {
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
    ///          Zstack stacks View on top of each other
                ZStack(alignment: .leading) {
                    MainView(showMenu: self.$showMenu)
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
//            .navigationBarTitle(" home with mEnu",displayMode: .inline)
            .navigationBarItems(leading: (
                Button(action: {
                    withAnimation {
                        self.showMenu.toggle()
                    }
                }){
                    Image(systemName: "line.horizontal.3").foregroundColor(.pink)
                        .imageScale(.large)
                    
                }
            ))
        }
        
    }
}

struct MainView: View {
    @Binding var showMenu: Bool
    
    var body: some View {
        Button(action: {
            withAnimation{
                self.showMenu = true
            }
        })
        {
            Text("show sidde Menu")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
