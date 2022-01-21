//
//  AppetiserDetailView.swift
//  Appetisers
//
//  Created by Duncan Kent on 20/01/2022.
//

import SwiftUI

struct AppetiserDetailView: View {
    
   //
    @EnvironmentObject var order: Order

    let appetiser: Appetiser
    @Binding var isShowingDetail: Bool

    
    var body: some View {
        VStack {
            AppetiserRemoteImage(urlString: appetiser.imageURL)
                .aspectRatio(contentMode: .fit)
                .frame(width: 300, height: 225)
            
            Text(appetiser.name)
                .font(.title2)
                .fontWeight(.semibold)
            
            Text(appetiser.description)
                .multilineTextAlignment(.center)
                .font(.body)
                .padding()
                
            
            HStack(spacing: 40) {
                NutritionInfo(title: "Calories", value: appetiser.calories)
                NutritionInfo(title: "Carbs", value: appetiser.carbs)
                NutritionInfo(title: "Protein", value: appetiser.protein)
            }
            
            Spacer()
            
            Button {
                order.add(appetiser)
                isShowingDetail = false
            } label: {
                APButton(title: "£\(appetiser.price, specifier: "%.2f") - Add to Order")
            }
            .buttonStyle(.borderedProminent)
            .tint(.brandPrimary)
            .padding(.bottom, 30)
        }
        .frame(width: 300, height: 525)
        .background(Color(.systemGray6))
        .cornerRadius(12)
        .shadow(radius: 40)
        .overlay(Button {
            isShowingDetail = false
        } label: {
          XDismissButton()
        }, alignment: .topTrailing)

    }
}

struct AppetiserDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AppetiserDetailView(appetiser: MockData.sampleAppetiser, isShowingDetail: .constant(false))
            //.preferredColorScheme(.dark)
    }
}

struct NutritionInfo: View {
    
    let title: String
    let value: Int
    
    var body: some View {
        VStack(spacing: 5) {
            Text(title)
                .bold()
                .font(.caption)
            Text("\(value)")
                .foregroundColor(.secondary)
                .fontWeight(.semibold)
                .italic()
        }
    }
}
