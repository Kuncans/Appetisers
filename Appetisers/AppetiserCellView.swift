//
//  AppetiserCellView.swift
//  Appetisers
//
//  Created by Duncan Kent on 18/01/2022.
//

import SwiftUI

struct AppetiserCellView: View {
    
    let appetiser: Appetiser
    
    var body: some View {
        
        HStack {
            Image("asian-flank-steak")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 120, height: 90)
                .cornerRadius(16)

            VStack (alignment: .leading, spacing: 5) {
                Text(appetiser.name)
                    .font(.title)
                    .fontWeight(.medium)
                
                Text("£\(appetiser.price, specifier: "%.2f")")
                    .fontWeight(.semibold)
                    .foregroundColor(.secondary)
            }
            .padding(.leading)
        }
    }
}

struct AppetiserCellView_Previews: PreviewProvider {
    static var previews: some View {
        AppetiserCellView(appetiser: MockData.sampleAppetiser)
    }
}
