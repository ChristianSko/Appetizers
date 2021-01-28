//
//  AccountView.swift
//  Appetizers
//
//  Created by Christian Skorobogatow on 18/1/21.
//

import SwiftUI

struct AccountView: View {
    
    @State private var firstName = ""
    @State private var lasttName = ""
    @State private var email = ""
    @State private var birthday = Date()
    @State private var napkins = false
    @State private var frequentRefills = false
    
    var body: some View {
        NavigationView{
            Form{
                Section(header: Text("Personal Info")) {
    
                    TextField("First Name", text: $firstName)
                    TextField("Last Name", text: $lasttName)
                    TextField("Email", text: $email)
                        .keyboardType(.emailAddress)
                        .autocapitalization(.none)
                        .disableAutocorrection(true)
                    
                    DatePicker("Birthday", selection: $birthday, displayedComponents: .date)
                    Button {
                        print("save")
                    } label: {
                        Text("Save changes")
                    }
                }
                
                Section(header: Text("Requests")) {
                    Toggle("Extra Napkins", isOn: $napkins)
                    Toggle("Frequent refills", isOn: $frequentRefills)
                }
                .toggleStyle(SwitchToggleStyle(tint: .brandPrimary))
            }
            .navigationTitle("👌Account")
        }
    }
    
}

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
    }
}
