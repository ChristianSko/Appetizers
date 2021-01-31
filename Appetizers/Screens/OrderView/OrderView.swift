//
//  OrderView.swift
//  Appetizers
//
//  Created by Christian Skorobogatow on 18/1/21.
//

import SwiftUI

struct OrderView: View {
    
    @State private var orderItems = MockData.orderItems
    
    var body: some View {
        NavigationView{
            VStack{
                List{
                    ForEach(orderItems) { appetizer in
                        AppetizerListCell(appetizer: appetizer)
                    }
                    .onDelete(perform: deleteItems)
                }
                .listStyle(PlainListStyle())
                
                
                Button {
                    print("order placed")
                } label: {
                    AppButton(title: "99.99€ - Place Order")
                }
                .padding(.bottom, 25)
                
            }
            .navigationTitle("🤩Orders")
        }
    }
    
    func deleteItems(at offsets: IndexSet) {
        orderItems.remove(atOffsets: offsets)
    }
}

struct OrderView_Previews: PreviewProvider {
    static var previews: some View {
        OrderView()
    }
}
