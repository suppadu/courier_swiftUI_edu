//
//  ContentView.swift
//  Courier
//
//  Created by Дмитрий Константинов on 11.11.2020.
//

import SwiftUI

struct ContentView: View {
    
    @State var priceHour = ""
    @State var priceCheck = ""
    
    var body: some View {
        VStack(){
            PriceView(label: "Стоимость часа", price: priceHour)
            PriceView(label: "Стоимость чека", price: priceCheck)
            VStack {
                Text("Количество часов")
                Slider(value: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant(10)/*@END_MENU_TOKEN@*/)
                    .padding(.horizontal, 25)
            }
            VStack {
                Text("Количество чеков")
                Slider(value: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant(10)/*@END_MENU_TOKEN@*/)
                    .padding(.horizontal, 25)
                
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}

