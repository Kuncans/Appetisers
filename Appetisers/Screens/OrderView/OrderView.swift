//
//  OrderView.swift
//  Appetisers
//
//  Created by Duncan Kent on 18/01/2022.
//

import SwiftUI

struct OrderView: View {
    
    @StateObject private var viewModel = OrderViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                List {
                    ForEach(viewModel.orderItems) { appetiser in
                        AppetiserCellView(appetiser: appetiser)
                            .swipeActions(edge: .leading) {
                                
                                Button (role: .destructive) {
                                    viewModel.removeAppetiser(appetiser: appetiser)
                                } label: {
                                    Image(systemName: "trash")
                                }

                                
//                                Button("Delete", role: .destructive) {
//                                    viewModel.removeAppetiser(appetiser: appetiser)
//                                }
                            }
                    }
                }
                .listStyle(PlainListStyle())
                
                Spacer()
                
                Button {
                    print("Order Placed!")
                } label: {
                    APButton(title: "£40 - Place Order")
                }
                .buttonStyle(.borderedProminent)
                .tint(.brandPrimary)
                .padding(.bottom, 30)
                
            }
            .navigationTitle("🧾 Orders")
        }.navigationViewStyle(.stack)
    }
}

struct OrderView_Previews: PreviewProvider {
    static var previews: some View {
        OrderView()
    }
}
