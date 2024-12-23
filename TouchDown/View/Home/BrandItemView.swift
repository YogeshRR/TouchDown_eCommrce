//
//  BrandItemView.swift
//  TouchDown
//
//  Created by Yogesh Raut on 23/12/24.
//

import SwiftUI

struct BrandItemView: View {
    //MARK: - PROPERTIES
    var brand : Brand
    
    //MARK: - BODY
    var body: some View {
        Image(brand.image)
            .resizable()
            .scaledToFit()
            .padding()
            .background(Color.white.cornerRadius(12))
            .background(RoundedRectangle(cornerRadius: 12).stroke(Color.gray, lineWidth: 1))
    }
}
   //MARK: - PREVIEWS
struct BrandItemView_Previews: PreviewProvider {
    static var previews: some View {
        BrandItemView(brand: brands[0])
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
