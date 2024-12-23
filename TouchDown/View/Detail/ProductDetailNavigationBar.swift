//
//  ProductDetailNavigationBar.swift
//  TouchDown
//
//  Created by Yogesh Raut on 24/12/24.
//

import SwiftUI

struct ProductDetailNavigationBar: View {
    //MARK: - PROPERTIES
    
    //MARK: - BODY
    var body: some View {
        HStack {
            Button(action: {}, label: {
                Image(systemName: "chevron.left")
                    .font(.title)
                    .foregroundColor(.white)
                Spacer()
                
                Button(action: {}, label: {
                    Image(systemName: "cart")
                        .font(.title)
                        .foregroundColor(.white)
                })
            })
        } // :- HSTACK
    }
}
  //MARK: - PREVIEWS
struct ProductDetailNavigationBar_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailNavigationBar()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Color.gray)
    }
}
