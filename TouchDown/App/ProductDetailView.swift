//
//  ProductDetailView.swift
//  TouchDown
//
//  Created by Yogesh Raut on 24/12/24.
//

import SwiftUI

struct ProductDetailView: View {
    //MARK: - PROPERTIES
    
    //MARK: - BODY
    var body: some View {
        VStack(alignment: .leading, spacing: 5, content: {
            //NAVBAR
          ProductDetailNavigationBar()
                .padding(.horizontal)
                .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
            // HEADER
            HeaderDetailView()
                .padding(.horizontal)
            
            //DETAIL TOP PART
            
            TopPartDetailView()
                .padding(.horizontal)
            
            // DETAIL BOTTOM PART
            
            VStack (alignment: .leading, spacing: 0, content: {
                // RATINGS AND SIZES
                ScrollView(.vertical, showsIndicators: false, content: {
                    Text(sampleProduct.description)
                        .font(.system(.body, design: .rounded))
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.leading)
                }) // :- VSTACK
                .padding(.horizontal)
                .background(Color.white)
                // DESCRIPTION
                
                // QUANTITY AND FAVOURITE
                
                // ADD TO CART
                
                Spacer()
            })
            
            
        }) // :- VSTACK
        .ignoresSafeArea(.all, edges: .all)
        .background(
            Color(red: sampleProduct.red,
                  green: sampleProduct.green,
                  blue: sampleProduct.blue
                 ).ignoresSafeArea(.all, edges: .all)
        )
    }
}
    //MARK: - PREVIEWS
struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView()
            .previewLayout(.fixed(width: 375, height: 812))
    }
}
