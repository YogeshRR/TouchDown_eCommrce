//
//  AddToCartDetailView.swift
//  TouchDown
//
//  Created by Yogesh Raut on 26/12/24.
//

import SwiftUI

struct AddToCartDetailView: View {
    //MARK: - PROPERTIES
    @EnvironmentObject var shop : Shop
    //MARK: - BODY
    var body: some View {
        Button(action: {
            feedback.impactOccurred()
        }, label: {
            Spacer()
            Text("Add to Cart".uppercased())
                .font(.system(.title3, design: .rounded))
                .fontWeight(.bold)
                .foregroundColor(.white)
            Spacer()
             })// :- BUTTON
                .padding(15)
                .background(Color(red: shop.selectedProduct?.red ?? sampleProduct.red, green: shop.selectedProduct?.green ?? sampleProduct.green, blue:shop.selectedProduct?.blue ?? sampleProduct.blue)
                )
                    .clipShape(Capsule())
    }
}
  //MARK: - PREVIEWS
struct AddToCartDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AddToCartDetailView()
            .environmentObject(Shop())
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
