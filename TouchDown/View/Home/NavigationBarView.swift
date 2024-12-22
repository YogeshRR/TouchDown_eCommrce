//
//  NavigationBarView.swift
//  TouchDown
//
//  Created by Yogesh Raut on 17/12/24.
//

import SwiftUI

struct NavigationBarView: View {
    //MARK: - PROPERTEIS
    @State var isAnimated : Bool = false
    //MARK: - BODY
    var body: some View {
        HStack {
            Button(action: { }, label: {
              Image(systemName: "magnifyingglass")
                    .font(.title)
                    .foregroundColor(.black)
            }) // :- BUTTON
            
            Spacer()
            
            LogoView()
                .opacity(isAnimated ? 1 : 0)
                .offset(x: 0, y: isAnimated ? 0 : -25)
                .onAppear(perform: {
                    withAnimation(.easeInOut(duration: 0.5)) {
                        isAnimated.toggle()
                    }
                })
            
            Spacer()
            
            Button(action: { }, label: {
                ZStack {
                    Image(systemName: "cart")
                        .font(.title)
                    .foregroundColor(.black)
                  Circle()
                        .fill(Color.red)
                        .frame(width: 14, height: 14, alignment: .center)
                        .offset(x: 13, y: -10)
                } // :- ZSTACK
            }) // :- BUTTON
        } // :- HSTACK
    }
}
  //MARK: - PREVIEWS
struct NavigationBarView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
