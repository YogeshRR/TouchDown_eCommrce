//
//  QuantityFavouriteDetailView.swift
//  TouchDown
//
//  Created by Yogesh Raut on 26/12/24.
//

import SwiftUI

struct QuantityFavouriteDetailView: View {
    //MARK: - PROPERTIES
    @State private var counter : Int = 0
    //MARK: - BODY
    var body: some View {
        HStack(alignment: .center, spacing: 6 ,content: {
            Button(action: {
                if counter > 0 {
                    feedback.impactOccurred()
                    counter =  counter - 1
                }
            }, label: {
                Image(systemName: "minus.circle")
            })
            
            Text("\(counter)")
                .fontWeight(.semibold)
                .frame(minWidth: 36)
            
            Button(action: {
                if counter < 100 {
                    feedback.impactOccurred()
                    counter += 1
                }
                    
            }, label: {
                Image(systemName: "plus.circle")
            })
            
            Spacer()
            Button(action: {
                feedback.impactOccurred()
            }, label: {
                Image(systemName: "heart.circle")
                    .foregroundColor(.pink)
            })
        }) // HSTACK
        .font(.system(.title3, design: .rounded))
        .foregroundColor(.black)
        .imageScale(.large)
        
        
    }
}
    //MARK: - PREVIEWS
struct QuantityFavouriteDetailView_Previews: PreviewProvider {
    static var previews: some View {
        QuantityFavouriteDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
