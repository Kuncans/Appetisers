//
//  Alert.swift
//  Appetisers
//
//  Created by Duncan Kent on 18/01/2022.
//

import SwiftUI

struct AlertItem: Identifiable {
    let id = UUID()
    let title: Text
    let message: Text
    let dismissButton: Alert.Button
}

struct AlertContext {
    
    //MARK: - Network Alerts
    static let invalidURL       = AlertItem(title: Text("Server Error"),
                                            message: Text("The data received from the error was invalid."),
                                            dismissButton: .default(Text("OK")))
    
    static let invalidResponse  = AlertItem(title: Text("Server Error"),
                                            message: Text("Invalid response from the server."),
                                            dismissButton: .default(Text("OK")))
    
    static let invalidData      = AlertItem(title: Text("Server Error"),
                                            message: Text("There was an issue connecting to the server."),
                                            dismissButton: .default(Text("OK")))
    
    static let unableToComplete = AlertItem(title: Text("Server Error"),
                                            message: Text("Unable to complete your request at this time."),
                                            dismissButton: .default(Text("OK")))
    
    //MARK: - Account Alerts
    static let invalidForm      = AlertItem(title: Text("Invalid Form"),
                                            message: Text("Please ensure your form is complete."),
                                            dismissButton: .default(Text("OK")))
    
    static let invalidEmail     = AlertItem(title: Text("Invalid Email"),
                                            message: Text("Please ensure your email is correct."),
                                            dismissButton: .default(Text("OK")))
    
    static let saveSuccess      = AlertItem(title: Text("Changes Saved"),
                                            message: Text("Profile information successfully saved."),
                                            dismissButton: .default(Text("OK")))
    
    static let saveFailed       = AlertItem(title: Text("Save Failed"),
                                            message: Text("The app failed to save your profile information."),
                                            dismissButton: .default(Text("OK")))
    
    static let invalidUserData  = AlertItem(title: Text("Invalid Data"),
                                            message: Text("The app failed to load your user preferences."),
                                            dismissButton: .default(Text("OK")))
}
