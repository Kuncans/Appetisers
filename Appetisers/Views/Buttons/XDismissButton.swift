//
//  XDismissButton.swift
//  Appetisers
//
//  Created by Duncan Kent on 20/01/2022.
//

import SwiftUI

struct XDismissButton: View {
    var body: some View {
        ZStack {
            Circle()
                .frame(width: 40, height: 40)
                .foregroundColor(.white)
                .opacity(0.8)
            
            Image(systemName: "xmark")
                .frame(width: 54, height: 54)
                .foregroundColor(.black)
        }
    }
}

struct XDismissButton_Previews: PreviewProvider {
    static var previews: some View {
        XDismissButton()
    }
}
