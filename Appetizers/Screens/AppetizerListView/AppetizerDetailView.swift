//
//  DetailView.swift
//  Appetizers
//
//  Created by Christian Skorobogatow on 25/1/21.
//

import SwiftUI

struct AppetizerDetailView: View {
    
    let appetizer: Appetizer
    @Binding var isShowingDetail: Bool
    
    var body: some View {
        VStack{
            AppetizerRemoteImage(urlString: appetizer.imageURL)
                .aspectRatio(contentMode: .fit)
                .frame(maxWidth: .infinity,minHeight: 150)
            VStack{
                Text(appetizer.name)
                    .font(.title)
                    .fontWeight(.bold)
                
                Text(appetizer.description)
                    .font(.body)
                    .multilineTextAlignment(.center)
                    .padding()
                
            }
            Spacer()
            
            HStack(spacing: 40){
                NutritionInfo(title: "Carbs", value: appetizer.carbs)
                NutritionInfo(title: "Calories", value: appetizer.calories)
                NutritionInfo(title: "Protein", value: appetizer.protein)
            }
            Spacer()
            
            Button{
                print("tapped")
            } label: {
                AppButton(title:"\(appetizer.price, specifier: "%.2f")€ - Add to Order")
            }
        }
        .frame(width: 300, height: 525)
        .background(Color(.systemBackground))
        .cornerRadius(12)
        .shadow(radius: 40)
        .overlay(Button{
            isShowingDetail.toggle()
        } label: {
            XDismissButton()
        }, alignment: .topTrailing)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        AppetizerDetailView(appetizer: MockData.sampleAppetizer, isShowingDetail: .constant(true))
    }
}


struct NutritionInfo: View {
    let title: String
    let value: Int
    
    var body: some View {
        VStack(spacing: 5){
            Text(title)
                .font(.caption)
                .fontWeight(.medium)
            
            Text("\(value)")
                .foregroundColor(.secondary)
                .fontWeight(.semibold)
                .italic()
        }
    }
}
