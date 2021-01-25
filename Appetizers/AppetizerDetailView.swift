//
//  DetailView.swift
//  Appetizers
//
//  Created by Christian Skorobogatow on 25/1/21.
//

import SwiftUI

struct AppetizerDetailView: View {
    
    let appetizer: Appetizer
    
    var body: some View {
        VStack{
            Image("asian-flank-steak")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(maxWidth: .infinity,minHeight: 150)
            VStack{
                Text(appetizer.name)
                    .font(.title)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                
                Text(appetizer.description)
                    .font(.body)
                    .multilineTextAlignment(.center)
                    .padding()
                
            }
            Spacer()
            
            HStack(spacing: 40){
                VStack(spacing: 5){
                    Text("Carbs")
                        .font(.caption)
                        .fontWeight(.medium)
                    
                    Text("\(appetizer.calories)")
                        .foregroundColor(.secondary)
                        .fontWeight(.semibold)
                        .italic()
                }
                VStack(spacing: 5){
                    Text("Calories")
                        .font(.caption)
                        .fontWeight(.medium)
                    
                    Text("\(appetizer.carbs)")
                        .foregroundColor(.secondary)
                        .fontWeight(.semibold)
                        .italic()
                }
                VStack(spacing: 5){
                    Text("Protein")
                        .font(.caption)
                        .fontWeight(.medium)
                    
                    Text("\(appetizer.protein)")
                        .foregroundColor(.secondary)
                        .fontWeight(.semibold)
                        .italic()
                }
                
                
                
            }
            Spacer()
            
            Button{
                print("tapped")
            } label: {
                Text("\(appetizer.price, specifier: "%.2f")€ - Add to Order")
                    .font(.system(size: 20, weight: .bold, design: .default))
                    .frame(width: 260, height: 50)
                    .foregroundColor(Color(.systemBackground))
                    .background(Color.brandPrimary)
                    .cornerRadius(10)
                    .padding()
            }
        }
        .frame(width: 300, height: 525)
        .background(Color(.systemBackground))
        .cornerRadius(12)
        .shadow(radius: 40)
        .overlay(Button{
            print("Dismiss")
        } label: {
            ZStack{
                Circle()
                    .frame(width: 30, height: 30)
                    .foregroundColor(.white)
                    .opacity(0.6)
                
                Image(systemName: "xmark")
                    .imageScale(.small)
                    .frame(width: 44, height: 44)
                    .foregroundColor(.black)
            }
            
        }, alignment: .topTrailing)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        AppetizerDetailView(appetizer: MockData.sampleAppetizer)
    }
}
