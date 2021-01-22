//
//  AppetizerListViewViewModel.swift
//  Appetizers
//
//  Created by Christian Skorobogatow on 22/1/21.
//

import SwiftUI


final class AppetizerListViewViewModel: ObservableObject {
    
    @Published var appetizers: [Appetizer] = []
    
    func getAppetizers() {
        NetworkManager.shared.getAppetizers { result in
            DispatchQueue.main.async {
                switch result {
                case .success(let appetizers):
                    self.appetizers = appetizers
                case .failure(let error):
                    print(error.localizedDescription)
                }
            }
        }
    }
}
