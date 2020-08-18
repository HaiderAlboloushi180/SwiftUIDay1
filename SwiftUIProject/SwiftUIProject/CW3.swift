//
//  CW3.swift
//  SwiftUIProject
//
//  Created by Haider Alboloushi on 8/18/20.
//  Copyright © 2020 Haider. All rights reserved.
//

import SwiftUI

struct CW3: View {
    @State var thekr = athkar.randomElement()!
    @State var counter = "0"
    var body: some View {
        ZStack{
            BG()
            VStack{
                Text(thekr).modifier(ThekrModifier())

                Text(counter).modifier(CounterModifer())
            }
        }
        .onTapGesture {
            self.counter = String(Int(self.counter)! + 1)
        }
        .onLongPressGesture {
            self.thekr = athkar.randomElement()!
            self.counter = "0"
        }
    }
}

struct CW3_Previews: PreviewProvider {
    static var previews: some View {
        CW3()
    }
}

struct ThekrModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
        .font(.custom("Cairo-Regular", size: 25))
        .foregroundColor(.white)
        .multilineTextAlignment(.center)
        .padding()
        .animation(.interactiveSpring())
    }
}

struct CounterModifer: ViewModifier {
    func body(content: Content) -> some View{
         content
            .foregroundColor(.white)
            .font(.custom("Hiragino Mincho ProN", size: 50))
            .padding(.horizontal, 50)
            .padding(.vertical, 3)
            .background(Color.init( #colorLiteral(red: 0.5489003658, green: 0.8530963063, blue: 0.7255270481, alpha: 0.25)))
            .clipShape(Capsule())
 
   }
}
