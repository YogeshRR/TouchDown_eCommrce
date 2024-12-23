//
//  BrandGridView.swift
//  TouchDown
//
//  Created by Yogesh Raut on 23/12/24.
//

import SwiftUI

struct BrandGridView: View {
    //MARK: - PROPERTIES
    
    //MARK: - BODY
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false, content: {
            LazyHGrid(rows: gridLayout, spacing: columnSpacing, content: {
                ForEach(brands) { brand in
                    BrandItemView(brand: brand)
                } // :- LOOP
            }) // :- LAZY GRID VIEW
            .frame(height: 200)
            .padding(15)
        }) // :- SCROLLVIEW
    }
}
  //MARK: - PREVIEWS
struct BrandGridView_Previews: PreviewProvider {
    static var previews: some View {
        BrandGridView()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
