//
//  ProductRow.swift
//  ShoppingApp
//
//  Created by Al-Amin on 2023/06/14.
//

import SwiftUI

struct ProductRow: View {
    @EnvironmentObject var cartManager: CartManager
    var product: Product
    
    var body: some View {
        HStack(spacing: 20) {
            Image(product.image)
                .resizable()
                .scaledToFit()
                .frame(width: 50)
                .cornerRadius(10)
            
            VStack(alignment: .leading, spacing: 10) {
                Text(product.name)
                    .bold()
                
                Text("$\(product.price)")
            }
            
            Spacer()
            
            Image(systemName: "trash")
                .foregroundColor(Color(hue: 1.0, saturation: 0.85, brightness: 0.727))
                .onTapGesture {
                    cartManager.removeFromCart(product: product)
                }
        }
        .padding(.horizontal)
        .frame(maxWidth: .infinity, alignment: .leading)
        
    }
}

struct ProductRow_Previews: PreviewProvider {
    static var previews: some View {
        ProductRow(product: productList[0])
            .environmentObject(CartManager())
    }
}
