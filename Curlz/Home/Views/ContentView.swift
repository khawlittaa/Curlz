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
    @State var searchText = ""
    
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
                    MainView(showMenu: self.$showMenu, searchText: self.$searchText)
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

struct MainView: View {
    @Binding var showMenu: Bool
    @Binding var searchText: String
    
    var body: some View {
        VStack {
            Wave(yOffset: 0.3)
                .fill(Color.purple)
                .frame(height: 200)
                .shadow(radius: 6)
                .overlay(HStack {
                    Text("Let your Curlz be Happy")
                        .font(.title)
                        .fontWeight(.semibold)
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.leading)
                        .padding(.trailing)
                        .padding(.top)
                    
                    Image("gingerCurlyHair")
                        .resizable()
                }
                .frame(height: 180)
                .padding()
            )
            
            SearchBar(text: $searchText)
                .padding(.top, 20)
            
            VStack(alignment: .leading) {
                Text("Category")
                    .padding(.leading,20)
                    .padding(.trailing)
                ScrollView(.vertical, showsIndicators: false, content: {
                    ForEach(0..<CategoryCell.row) { categoryRow in
                        HStack{
                            ForEach(0..<CategoryCell.column) { category in
                                CategoryCell()
                                
                            }
                        }
                    }
                    HStack{
                        Spacer()
                    Text("see all categories")
                        .foregroundColor(.gray)
                        .padding(.top,6)
                        .padding(.trailing,20)
                        .padding(.leading)
                        
                    }
                })

               
            }.padding(.top, 20)
            
            Spacer()
            
        }
            
        .edgesIgnoringSafeArea(.top)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
