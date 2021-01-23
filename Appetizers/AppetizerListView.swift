//
//  AppetizerListView.swift
//  Appetizers
//
//  Created by Christian Skorobogatow on 18/1/21.
//

import SwiftUI

struct AppetizerListView: View {
    
    @StateObject var viewModel = AppetizerListViewViewModel()
    
    var body: some View {
        NavigationView{
            List(viewModel.appetizers) { appetizer in
                AppetizerListCell(appetizer: appetizer)
            }
            .navigationTitle("🥑 Appetizers")
        }
        .onAppear{
            viewModel.getAppetizers()
        }
        .alert(item: $viewModel.alertItem) { alertItem in
            Alert(title: alertItem.title,
                  message: alertItem.message,
                  dismissButton: alertItem.dismissButton)
        }
    }
}

struct AppetizerListView_Previews: PreviewProvider {
    static var previews: some View {
        AppetizerListView()
    }
}
