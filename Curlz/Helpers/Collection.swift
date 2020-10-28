//
//  Collection.swift
//  Curlz
//
//  Created by khaoula hafsia on 10/26/20.
//  Copyright © 2020 khaoula hafsia. All rights reserved.
//

import SwiftUI

struct Collection<Content: View, Data: Hashable>: View {
    @Binding var data: [Data]
    let viewBuilder: (Data) -> Content
    let cols: Int
    let spacing: CGFloat
    
    init(data: Binding<[Data]>, cols: Int = 6, spacing: CGFloat = 20,_ viewBuilder: @escaping (Data) -> Content) {
        _data = data
        self.cols = cols
        self.spacing = spacing
        self.viewBuilder = viewBuilder
    }
    
    private func cell(colIndex: Int, rowIndex: Int) -> some View {
        let cellIndex = (rowIndex * cols) + colIndex
        return ZStack {
            if cellIndex < data.count {
                self.viewBuilder(data[cellIndex])
            }
        }
    }
    private func setupView(geometry: GeometryProxy) -> some View {
        let rowRemainder = Double(data.count).remainder(dividingBy: Double(cols))
        let rowCount = data.count / cols + (rowRemainder == 0 ? 0 : 1)
        let frame = geometry.frame(in: .global)
        let totalSpacing = Int(spacing) * (cols - 1)
        let cellWidth = (frame.width - CGFloat(totalSpacing))/CGFloat(cols)
        
        return VStack(alignment: .leading, spacing: spacing) {
            ForEach(0...rowCount-1, id: \.self) { row in
                HStack(spacing: self.spacing) {
                    ForEach(0...self.cols-1, id: \.self) { col in
                        self.cell(colIndex: col, rowIndex: row)
                            .frame(maxWidth: cellWidth)
                    }
                }
            }
            Spacer()
        }
    }
    
    
    var body: some View {
        GeometryReader { geometry in
            ScrollView {
            self.setupView(geometry: geometry).frame(minHeight: geometry.frame(in: .global).height)

            }
        }
    }
    
    
}

