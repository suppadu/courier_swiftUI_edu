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
    @State var numberHour = 10.0
    @State var numberCheck = 15.0
    
    var body: some View {
        VStack(){
            PriceView(label: "Стоимость часа", price: priceHour)
            PriceView(label: "Стоимость чека", price: priceCheck)
            NumberSliderView(label: "Количество часов", n: numberHour, r: 1...20)
            NumberSliderView(label: "Количество чеков", n: numberCheck, r: 0...35)
            
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

