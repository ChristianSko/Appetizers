//
//  Alert.swift
//  Appetizers
//
//  Created by Christian Skorobogatow on 23/1/21.
//

import SwiftUI

struct AlertItem: Identifiable {
    
    let id = UUID()
    let title: Text
    let message: Text
    let dismissButton: Alert.Button
}


struct AlertContext {
    
    //MARK: -NetworkAlerts
    static let invalidData       = AlertItem(title: Text("Server Error"),
                                            message: Text("The data received from the server was invalid pleas contact support."),
                                            dismissButton: .default(Text("OK")))
    
    static let invalidResponse  = AlertItem(title: Text("Server Error"),
                                            message: Text("Invalid response from the server. Please trya again later or contact support."),
                                            dismissButton: .default(Text("OK")))
    
    static let invalidURL       = AlertItem(title: Text("Server Error"),
                                            message: Text("There was an issue connecting to the server. If the issue persists, please contact support."),
                                            dismissButton: .default(Text("OK")))
    
    static let unableToComplete = AlertItem(title: Text("Server Error"),
                                            message: Text("Unable to your request at this time. Please check your internet connection."),
                                            dismissButton: .default(Text("OK")))
    
    //MARK: -AccountAlerts
    
    static let invalidForm = AlertItem(title: Text("Invalid"),
                                       message: Text("Please make sure all forms have been filled out."),
                                       dismissButton: .default(Text("OK")))
    
    
    static let invalidEmail = AlertItem(title: Text("Invalid Email"),
                                        message: Text("Invalid Email. Please ensure email entered is correct."),
                                        dismissButton: .default(Text("OK")))
}




