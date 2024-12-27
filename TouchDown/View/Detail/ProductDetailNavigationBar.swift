//
//  ProductDetailNavigationBar.swift
//  TouchDown
//
//  Created by Yogesh Raut on 24/12/24.
//

import SwiftUI

struct ProductDetailNavigationBar: View {
    //MARK: - PROPERTIES
    @EnvironmentObject var shop : Shop
    //MARK: - BODY
    var body: some View {
        HStack {
            Button(action: {
                withAnimation(.easeIn){
                    feedback.impactOccurred()
                    shop.showingProduct = false
                    shop.selectedProduct = nil
                }
            }, label: {
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
            .environmentObject(Shop())
    }
}
