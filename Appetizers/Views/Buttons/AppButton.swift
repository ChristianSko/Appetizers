//
//  AppButton.swift
//  Appetizers
//
//  Created by Christian Skorobogatow on 27/1/21.
//

import SwiftUI

struct AppButton: View {
    
    var title: LocalizedStringKey
    
    var body: some View {
        Text(title)
            .font(.system(size: 20, weight: .bold, design: .default))
            .frame(width: 260, height: 50)
            .foregroundColor(Color(.systemBackground))
            .background(Color.brandPrimary)
            .cornerRadius(10)
            .padding()
    }
}

struct AppButton_Previews: PreviewProvider {
    static var previews: some View {
        AppButton(title: "Add to Order")
    }
}
