//
//  EmptyStateOrder.swift
//  Appetisers
//
//  Created by Duncan Kent on 21/01/2022.
//

import SwiftUI

struct EmptyStateOrder: View {
    var body: some View {
        ZStack {
            
            Color(.systemBackground)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                
                Image("empty-order")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 150)
                
                Text("No items yet. \nGet ordering!")
                    .font(.title3)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.secondary)
                    .padding()
            }.offset(y: -50)
        }
    }
}

struct EmptyStateOrder_Previews: PreviewProvider {
    static var previews: some View {
        EmptyStateOrder()
    }
}
