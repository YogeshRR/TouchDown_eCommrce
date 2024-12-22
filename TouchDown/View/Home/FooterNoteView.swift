//
//  FooterNoteView.swift
//  TouchDown
//
//  Created by Yogesh Raut on 17/12/24.
//

import SwiftUI

struct FooterNoteView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 10) {
            Text("We offer the most cutting edge, comfortable, lightweight and durable football helmates in the market at affordable prices")
                .multilineTextAlignment(.center)
                .foregroundColor(.gray)
                .layoutPriority(2)
            
            Image("logo-lineal")
                .renderingMode(.template)
                .foregroundColor(.gray)
                .layoutPriority(0)
            Text("Copyright @ Yogesh Raut \nAll rights are reserved")
                .font(.footnote)
                .fontWeight(.bold)
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .layoutPriority(1)
            
        }
    }
}

struct FooterNoteView_Previews: PreviewProvider {
    static var previews: some View {
        FooterNoteView()
            .previewLayout(.sizeThatFits)
            .background(colorBackground)
    }
}
