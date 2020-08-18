//
//  CW2.swift
//  SwiftUIProject
//
//  Created by Haider Alboloushi on 8/18/20.
//  Copyright © 2020 Haider. All rights reserved.
//

import SwiftUI

struct CW2: View {
    @State var pageNumber = ""
    var body: some View {
        ZStack{
            BG()
            VStack{
            Text("Page \(pageNumber)")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.white)
            TextField("Placeholder", text: $pageNumber)
                .keyboardType(.numberPad)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
                .multilineTextAlignment(.trailing)
                .frame(height: 90)
            }
        }
    }
}

struct CW2_Previews: PreviewProvider {
    static var previews: some View {
        CW2()
    }
}
