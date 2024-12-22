//
//  SectionView.swift
//  TouchDown
//
//  Created by Yogesh Raut on 23/12/24.
//

import SwiftUI

struct SectionView: View {
    //MARK: - PROPERTIES
    @State var rotateClockwise : Bool = false
    //MARK: - BODY
    var body: some View {
        VStack (spacing: 0) {
            Spacer()
            Text("Categories".uppercased())
                .font(.footnote)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .rotationEffect(Angle(degrees: rotateClockwise ? 90 : -90))
            Spacer()
        } // :- VSTACK
        .background(Color.gray.cornerRadius(12))
    }
}
   //MARK: - PREVIEW
struct SectionView_Previews: PreviewProvider {
    static var previews: some View {
        SectionView(rotateClockwise: true)
            .previewLayout(.fixed(width: 120, height: 240))
            .padding()
            .background(colorBackground)
        
    }
}
