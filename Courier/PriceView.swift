//
//  priceView.swift
//  Courier
//
//  Created by Дмитрий Константинов on 15.11.2020.
//

import SwiftUI

struct PriceView: View {
    
    let label: String
    
    @State var price = ""
    
    var body: some View {
        RoundedRectangle(cornerRadius: 15)
            .fill(Color.gray)
            .frame(height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .overlay(
                HStack(alignment: .center) {
                    Text(label)
                        .font(.system(size: 25))
                        .padding(.trailing,20)
                    TextField("70", text: $price)
                        .multilineTextAlignment(.center)
                        .frame(width: 60.0, height: 30.0)
                })
            .padding(5)
    }
}

struct priceView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            PriceView(label: "Название", price: "30")
                .previewLayout(.sizeThatFits)
        }
    }
}
