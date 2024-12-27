//
//  ContentView.swift
//  TouchDown
//
//  Created by Yogesh Raut on 17/12/24.
//

import SwiftUI

struct ContentView: View {
    //MARK: - PROPERTIES
    @EnvironmentObject var shop : Shop
    //MARK: - BODY
    var body: some View {
        ZStack {
            if shop.showingProduct == false && shop.selectedProduct == nil {
                VStack (spacing: 10) {
                    NavigationBarView()
                        .padding(.horizontal, 15)
                        .padding(.bottom)
                        .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                        .background(Color.white)
                        .shadow(color: Color.black.opacity(0.05), radius: 5, x: 0, y: 5)
                    ScrollView(.vertical, showsIndicators: false, content: {
                       VStack(spacing : 0 ) {
                            FeaturedTabView()
                               .padding(.vertical, 20)
                               .frame(height: 256)
                            CategoryGridView()
                            TitleView(title: "Helmet")
                           LazyVGrid(columns: gridLayout, content: {
                               ForEach(products) { product in
                                   
                                   ProductItemView(product: product)
                                       .onTapGesture(perform: {
                                           withAnimation(.easeOut) {
                                               shop.selectedProduct = product
                                               shop.showingProduct = true
                                           }
                                       })
                               }
                           }) // :- LAZY GRID VIEW
                           .padding(15)
                           TitleView(title: "Brands")
                           BrandGridView()
                            FooterNoteView()
                                .padding()
                        } // :- VSTACK
                    }) // :- SCROLLVIEW
                   
                } // :- VSTACK
                .background(colorBackground.ignoresSafeArea(.all, edges: .all))
            } else {
                ProductDetailView()
            }
        } // :- ZSTACK
        .ignoresSafeArea(.all, edges: .top)
    }
}
  //MARK: - PREVIEWS
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(Shop())
    }
}
