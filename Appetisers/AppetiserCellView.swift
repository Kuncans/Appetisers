//
//  AppetiserCellView.swift
//  Appetisers
//
//  Created by Duncan Kent on 18/01/2022.
//

import SwiftUI

struct AppetiserCellView: View {
    var body: some View {
        HStack {
            Image("asian-flank-steak")
                .resizable()
                .frame(width: 120, height: 80, alignment: .leading)
            VStack {
                Text("Buffalo Chicken Bites")
                    .font(.title2)
            }
        }
    }
}

struct AppetiserCellView_Previews: PreviewProvider {
    static var previews: some View {
        AppetiserCellView()
    }
}
