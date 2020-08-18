//
//  ContentView.swift
//  SwiftUIProject
//
//  Created by Haider Alboloushi on 8/18/20.
//  Copyright © 2020 Haider. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var thekr = "سبحان الله"
    var body: some View {
        ZStack{
            Image("BACKGROUND")
                .resizable()
            VStack{
                Image("Header")
                    .resizable()
                    .scaledToFit()
                Spacer()
                Image("Mosque")
                    .resizable()
                    .scaledToFit()
            }
            Text(thekr)
                .font(.largeTitle)
                .foregroundColor(.white)
                .multilineTextAlignment(.center)
                .padding()
                .onTapGesture {
                    self.thekr = athkar.randomElement()!
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
