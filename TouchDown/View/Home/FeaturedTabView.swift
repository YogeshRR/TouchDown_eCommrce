//
//  FeaturedTabView.swift
//  TouchDown
//
//  Created by Yogesh Raut on 22/12/24.
//

import SwiftUI

struct FeaturedTabView: View {
    //MARK: - PROPERIES
    
    //MARK: - BODY
    var body: some View {
        TabView {
            ForEach(players) { player in
                FeaturedItemView(player: player)
                    .padding(.top, 10)
                    .padding(.horizontal, 15)
            } // :- LOOP
        } // :-  TAB VIEW
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
    }
}
   //MARK: - PREVIEWS
struct FeaturedTabView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedTabView()
            .background(Color.gray)
    }
}
