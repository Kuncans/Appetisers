//
//  AppetiserDetailView.swift
//  Appetisers
//
//  Created by Duncan Kent on 20/01/2022.
//

import SwiftUI

struct AppetiserDetailView: View {
    
    let appetiser: Appetiser
    
    var body: some View {
        VStack {
            Image("asian-flank-steak")
                .resizable()
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
                VStack(spacing: 5) {
                    Text("Calories")
                        .bold()
                        .font(.caption)
                    Text("\(appetiser.calories)")
                        .foregroundColor(.secondary)
                        .fontWeight(.semibold)
                        .italic()
                }
                VStack(spacing: 5) {
                    Text("Carbs")
                        .bold()
                        .font(.caption)
                    Text("\(appetiser.carbs)")
                        .foregroundColor(.secondary)
                        .fontWeight(.semibold)
                        .italic()
                }
                VStack(spacing: 5) {
                    Text("Protein")
                        .bold()
                        .font(.caption)
                    Text("\(appetiser.protein)")
                        .foregroundColor(.secondary)
                        .fontWeight(.semibold)
                        .italic()
                }
            }
            
            Spacer()
            
            Button {
                print("Tap Tap!")
            } label: {
                Text("£\(appetiser.price, specifier: "%.2f") - Add to Order")
                    .font(.title3)
                    .fontWeight(.semibold)
                    .frame(width: 240)
                    .cornerRadius(16)
                    .padding(5)
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
            print("Dismiss")
        } label: {
            ZStack {
                Circle()
                    .frame(width: 40, height: 40)
                    .foregroundColor(.white)
                    .opacity(0.8)
                
                Image(systemName: "xmark")
                    .frame(width: 54, height: 54)
                    .foregroundColor(.black)
            }
        }, alignment: .topTrailing)

    }
}

struct AppetiserDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AppetiserDetailView(appetiser: MockData.sampleAppetiser)
            //.preferredColorScheme(.dark)
    }
}
