//
//  AppetizerListViewViewModel.swift
//  Appetizers
//
//  Created by Christian Skorobogatow on 22/1/21.
//

import SwiftUI


final class AppetizerListViewViewModel: ObservableObject {
    
    @Published var appetizers: [Appetizer] = []
    @Published var alertItem:  AlertItem?
    @Published var isLoading = false
    
    @Published  var isShowingDetail = false
    @Published  var selectedAppetizer: Appetizer?
    
    func getAppetizers() {
        isLoading.toggle()
        NetworkManager.shared.getAppetizers { [self] result in
            DispatchQueue.main.async {
                isLoading.toggle()
                switch result {
                case .success(let appetizers):
                    self.appetizers = appetizers
                    
                case .failure(let error):
                    switch error {
                    case .invalidData:
                        alertItem = AlertContext.invalidData
                        
                    case .invalidURL:
                        alertItem = AlertContext.invalidURL
                        
                    case .invalidResponse:
                        alertItem = AlertContext.invalidResponse
                        
                    case .unableToComplete:
                        alertItem = AlertContext.unableToComplete
                    }
                }
            }
        }
    }
}
