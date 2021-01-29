//
//  AccountViewModel.swift
//  Appetizers
//
//  Created by Christian Skorobogatow on 29/1/21.
//

import SwiftUI

final class AccountViewModel: ObservableObject {
    
    @Published var firstName = ""
    @Published var lasttName = ""
    @Published var email = ""
    @Published var birthday = Date()
    @Published var napkins = false
    @Published var frequentRefills = false
    @Published var alertItem: AlertItem?
    
    var isValidForm: Bool {
        guard !firstName.isEmpty && !lasttName.isEmpty && !email.isEmpty else {
            alertItem = AlertContext.invalidForm
            
            return false
            
        }
        
        guard email.isValidEmail else {
            alertItem = AlertContext.invalidEmail
            return false
        }
        
        return true
    }
    
    func saveChanges() {
        guard isValidForm else {return}
        
        print("Saved")
    }
}
 
