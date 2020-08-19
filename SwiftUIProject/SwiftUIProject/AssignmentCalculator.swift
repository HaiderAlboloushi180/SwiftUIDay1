//
//  AssignmentCalculator.swift
//  SwiftUIProject
//
//  Created by Haider Alboloushi on 8/19/20.
//  Copyright © 2020 Haider. All rights reserved.
//

import SwiftUI

struct AssignmentCalculator: View {
    var body: some View {
        ZStack{
             Color.black
            .edgesIgnoringSafeArea(.all)
            HStack{
                Spacer()
                Text("555")
                .foregroundColor(.white)
                .font(.system(size: 60))
                .fontWeight(.light)
                .padding()
            }
            
        }
    }
}

struct AssignmentCalculator_Previews: PreviewProvider {
    static var previews: some View {
        AssignmentCalculator()
    }
}

struct GrayButtonModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundColor(.white)
            .font(.custom("", size: 50))
            .padding(.horizontal, 50)
            .padding(.vertical, 3)
            .padding(.bottom, -19)
            .background(Color.init( #colorLiteral(red: 0.5570569038, green: 0.5565273762, blue: 0.5783078074, alpha: 1)))
            .clipShape(Capsule())

    }
}

struct OrangeButtonModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundColor(.white)
            .font(.custom("", size: 50))
            .padding(.horizontal, 50)
            .padding(.vertical, 3)
            .padding(.bottom, -19)
            .background(Color.init( #colorLiteral(red: 0.9990305305, green: 0.5842646956, blue: 0, alpha: 1)))
            .clipShape(Capsule())

    }
}

