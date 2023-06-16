//
//  CartView.swift
//  ShoppingApp
//
//  Created by Al-Amin on 2023/06/14.
//

import SwiftUI

struct CartView: View {
    @EnvironmentObject var cartManager: CartManager
    
    var body: some View {
        ScrollView {
            if cartManager.products.isEmpty {
                Text("Your cart is empty")
            }
            else {
                ForEach(cartManager.products, id: \.id) { product in
                    ProductRow(product: product)
                }
                
                HStack {
                    Text("Your cart total is")
                    Spacer()
                    Text("$\(cartManager.total).00")
                        .bold()
                }
                .padding()
                
                PaymentButton(action: {})
                    .padding()
            }
        }
        .navigationTitle(Text("My Cart"))
        .padding(.top)
    }
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView()
            .environmentObject(CartManager())
    }
}
