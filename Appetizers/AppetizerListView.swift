//
//  AppetizerListView.swift
//  Appetizers
//
//  Created by Christian Skorobogatow on 18/1/21.
//

import SwiftUI

struct AppetizerListView: View {
    var body: some View {
        NavigationView{
            Text("AppetizerListView")
                .navigationTitle("🥑Appetizers")
        }
        
    }
}

struct AppetizerListView_Previews: PreviewProvider {
    static var previews: some View {
        AppetizerListView()
    }
}
