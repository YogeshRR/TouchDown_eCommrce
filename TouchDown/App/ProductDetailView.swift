//
//  ProductDetailView.swift
//  TouchDown
//
//  Created by Yogesh Raut on 24/12/24.
//

import SwiftUI

struct ProductDetailView: View {
    //MARK: - PROPERTIES
    @EnvironmentObject var shop : Shop
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
                .zIndex(1)
            
    
            // DETAIL BOTTOM PART
            
            VStack (alignment: .leading, spacing: 0, content: {
                // RATINGS AND SIZES
    
                RatingsandSizesDetailView()
                    
                    .padding(.top, -20)
                    .padding(.bottom, 10)
                
                // DESCRIPTION
                ScrollView(.vertical, showsIndicators: false, content: {
                    Text(shop.selectedProduct?.description ?? sampleProduct.description)
                        .font(.system(.body, design: .rounded))
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.leading)
                }) // :- VSTACK
                
                // QUANTITY AND FAVOURITE
                
                QuantityFavouriteDetailView()
                    .padding(.vertical, 30)
                
                // ADD TO CART
                
                AddToCartDetailView()
                    .padding(.bottom, 20)
            }) // :- VSTACK
            .padding(.horizontal)
            .background(Color.white
                .clipShape(CustomShape()
                          ).padding(.top, -105))
           
            
            
        }) // :- VSTACK
            .zIndex(0)
        .ignoresSafeArea(.all, edges: .all)
        .background(
            Color(red: shop.selectedProduct?.red ??
                     sampleProduct.red,
                  green: shop.selectedProduct?.green ?? sampleProduct.green,
                  blue: shop.selectedProduct?.blue ?? sampleProduct.blue
                 ).ignoresSafeArea(.all, edges: .all)
        )
    }
}
    //MARK: - PREVIEWS
struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView()
            .previewLayout(.fixed(width: 375, height: 812))
            .environmentObject(Shop())
    }
}
