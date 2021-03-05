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
                            .frame(width: geometry.size.width/2 + 50 )
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
    let homeVM = HomeViewModel()
    let linearGradient = LinearGradient(gradient: Gradient(colors: [.blueberry, .rosyPink]), startPoint: UnitPoint(x: 0.9, y: 0.9), endPoint: UnitPoint(x: 0.25, y: 0.25))
    var body: some View {
        VStack {
            Wave(yOffset: 0.3)
                .fill(linearGradient)
                .frame(height: 250)
                .shadow(radius: 6)
                .overlay(HStack(alignment: .center, spacing: 10) {
                    Text("Let your Curlz be Happy")
                        .font(.system(size: 24.0))
                        .fontWeight(.semibold)
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.leading)
                        .padding(.top,100)
                    
                    Image("gingerCurlyHair")
                        .resizable()
                        .padding(.top, 60)
                }
                .frame(height: 200)
                .padding(.all,20)
                .edgesIgnoringSafeArea(.top)
                )
            
            ScrollView(.vertical, showsIndicators: false, content: {
                
                SearchBar(text: $searchText)
                    .padding(.top, 20)
                
                VStack(alignment: .leading) {
                    Text("Category")
                        .foregroundColor(Color.midnightBlue71)
                        .font(.system(size: 20.0))
                        .padding(.leading,20)
                        .padding(.trailing)
                    ForEach(0..<CategoryCell.row) { categoryRow in
                        HStack{
                            ForEach(0..<CategoryCell.column) { category in
                                CategoryCell(category: self.homeVM.categories[category+categoryRow+categoryRow])
                                
                            }
                        }.padding(.leading,20)
                    }
                    
                    
                    
                    HStack{
                        Spacer()
                        Text("see all categories").foregroundColor(.dusk)
                            .font(.system(size: 12.0))
                            .padding(.top,6)
                            .padding(.trailing,20)
                            .padding(.leading)
                        
                    }
                    
                    Text("Best Products")
                        .foregroundColor(.dusk)
                        .font(.system(size: 20.0))
                        .padding(.leading,20)
                        .padding(.top,20)
                        .padding(.trailing)
                    
                    ScrollView(.horizontal, showsIndicators: false, content: {
                        HStack{
                            ForEach(0..<5){ product  in
                                NavigationLink(destination: ProductDetailsView() ){
                                    ProductCell()
                                }
                            }}
                    }).padding(.leading,20)
                    
                    
                }.padding(.top, 20)
            })
        }
        .edgesIgnoringSafeArea(.top)
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}
