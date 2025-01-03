//
//  LogoView.swift
//  TouchDown
//
//  Created by Yogesh Raut on 22/12/24.
//

import SwiftUI

struct LogoView: View {
    var body: some View {
        HStack(spacing : 4) {
            Text("Touch".uppercased())
                .font(.title3)
                .foregroundColor(.black)
                .fontWeight(.bold)
             Image("logo-dark")
                .resizable()
                .scaledToFit()
                .frame(width: 30, height: 30, alignment: .center)
            Text("Down".uppercased())
                .font(.title3)
                .foregroundColor(.black)
                .fontWeight(.bold)
        } // HSTACK
    }
}

struct LogoView_Previews: PreviewProvider {
    static var previews: some View {
        LogoView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
