//
//  OrderView.swift
//  Appetisers
//
//  Created by Duncan Kent on 18/01/2022.
//

import SwiftUI

struct OrderView: View {
    
    @EnvironmentObject var order: Order
    
    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    
                    List {
                        ForEach(order.items) { appetiser in
                            AppetiserCellView(appetiser: appetiser)
                                .swipeActions(edge: .leading) {
                                    
                                    Button (role: .destructive) {
                                        order.remove(appetiser)
                                    } label: {
                                        Image(systemName: "trash")
                                    }
                                }
                        }
                    }
                    .listStyle(PlainListStyle())
                    
                    Spacer()
                    
                    Button {
                        print("Order Placed!")
                    } label: {
                        APButton(title: "£\(order.totalPrice, specifier: "%.2f") - Place Order")
                    }
                    .buttonStyle(.borderedProminent)
                    .tint(.brandPrimary)
                    .padding(.bottom, 30)
                    
                }
                .navigationTitle("🧾 Orders")
            }
        }.navigationViewStyle(.stack)
    }
}

struct OrderView_Previews: PreviewProvider {
    static var previews: some View {
        OrderView()
    }
}
