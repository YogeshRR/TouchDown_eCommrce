//
//  HeaderDetailView.swift
//  TouchDown
//
//  Created by Yogesh Raut on 24/12/24.
//

import SwiftUI

struct HeaderDetailView: View {
    //MARK: - PROPERTIES
    
    //MARK: - BODY
    var body: some View {
        VStack(alignment: .leading, spacing: 6, content: {
            Text("Protective Gear")
            Text(sampleProduct.name)
                .font(.largeTitle)
                .fontWeight(.black)
        })  // :- VSTACK
        .foregroundColor(.white)
        
    }
}
  //MARK: - PREVIEWS
struct HeaderDetailView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Color.gray)
    }
}
