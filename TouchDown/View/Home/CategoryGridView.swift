//
//  CategoryGridView.swift
//  TouchDown
//
//  Created by Yogesh Raut on 23/12/24.
//

import SwiftUI

struct CategoryGridView: View {
    //MARK: - PROPERTIES
    
    //MARK: - BODY
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false, content: {
            LazyHGrid(rows: gridLayout, alignment: .center, spacing: columnSpacing, content: {
                Section(header: SectionView(rotateClockwise: false), footer: SectionView(rotateClockwise: true)) {
                    ForEach(categories) { category in
                      CategoryItemView(category: category)
                    } // :- LOOP
                } // :- SECTION
            }) // LAZY HGRID
            .frame(height: 140)
            .padding(.horizontal, 15)
            .padding(.vertical, 15)
            
        }) // :- SCROLLVIEW
    }
}
  //MARK: - PREVIEW
struct CategoryGridView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryGridView()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
