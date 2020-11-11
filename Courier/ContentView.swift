//
//  ContentView.swift
//  Courier
//
//  Created by Дмитрий Константинов on 11.11.2020.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        VStack(spacing: 15.0){
            HStack(alignment: .center, spacing: 100.0) {
                Text("Стоимость часа:")
                    .font(.system(size: 25))
                TextField("70", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                    .multilineTextAlignment(.center)
                    .frame(width: 60.0, height: 30.0)
            }
            HStack(alignment: .center, spacing: 100.0){
                Text("Стоимость чека:")
                    .font(.system(size: 25))
                TextField("60", text: .constant(""))
                    .multilineTextAlignment(.center)
                    .frame(width: 60.0, height: 30.0)
            }
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
