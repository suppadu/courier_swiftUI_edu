//
//  NumberSliderView.swift
//  Courier
//
//  Created by Дмитрий Константинов on 15.11.2020.
//

import SwiftUI

struct NumberSliderView: View {
    
    let label: String
    @State var n: Double
    let r: ClosedRange<Double>
    
    var body: some View {
        VStack {
            Text(label)
                .font(.system(size: 20))
            
            HStack {
                Button(action: {
                    if case r = n {
                        n -= 1
                    }else{
                        n = r.lowerBound
                    }
                }, label: {
                    Image(systemName: "minus")
                        .foregroundColor(.gray)
                })
                
                Slider(value: $n, in: r, step: 1)
                    .accentColor(Color.gray)
                
                Button(action: {
                    if case r = n {
                        n += 1
                    }else{
                        n = r.upperBound
                    }
                }, label: {
                    Image(systemName: "plus")
                        .foregroundColor(.gray)
                })
            }
            .padding(.horizontal, 13)
        }
    }
}

struct NumberSliderView_Previews: PreviewProvider {
    static var previews: some View {
        NumberSliderView(label: "Название", n: 10.0, r: 1...20).previewLayout(.sizeThatFits)
    }
}
