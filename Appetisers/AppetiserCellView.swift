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
                .frame(minWidth: 60, maxWidth: 100, minHeight: 40, maxHeight: 80, alignment: .leading)
                
        }
    }
}

struct AppetiserCellView_Previews: PreviewProvider {
    static var previews: some View {
        AppetiserCellView()
    }
}
