//
//  AddToCartDetailView.swift
//  TouchDown
//
//  Created by Yogesh Raut on 26/12/24.
//

import SwiftUI

struct AddToCartDetailView: View {
    var body: some View {
        Button(action: {}, label: {
            Spacer()
            Text("Add to Cart".uppercased())
                .font(.system(.title3, design: .rounded))
                .fontWeight(.bold)
                .foregroundColor(.white)
            Spacer()
             })// :- BUTTON
                .padding(15)
                .background(Color(red: sampleProduct.red, green: sampleProduct.green, blue: sampleProduct.blue)
                )
                    .clipShape(Capsule())
    }
}

struct AddToCartDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AddToCartDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
