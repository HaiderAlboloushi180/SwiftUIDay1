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
            VStack{
            HStack{
                Spacer()
                Text("555")
                .foregroundColor(.white)
                .font(.system(size: 90))
                .fontWeight(.light)
                .padding()
            }
                CalculatorButtons1()
                CalculatorButtons2()
                CalculatorButtons3()
                CalculatorButtons4()
                CalculatorButtons5()
           }
            .padding(.top, 250)
            .padding(.leading, 10)
            .padding(.trailing,10)
            .padding(.bottom, 100)
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
            .font(.custom("", size: 30))
            .padding(.horizontal, 35)
            .padding(.vertical, 35)
            .background(Color.init( #colorLiteral(red: 0.5570569038, green: 0.5565273762, blue: 0.5783078074, alpha: 1)))
            .clipShape(Circle())
    }
}

struct OrangeButtonModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundColor(.white)
            .font(.custom("", size: 35))
            .padding(.horizontal, 35)
            .padding(.vertical, 35)
            .background(Color.init( #colorLiteral(red: 0.9990305305, green: 0.5842646956, blue: 0, alpha: 1)))
            .clipShape(Circle())
    }
}

struct CapsuleButtonModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundColor(.white)
            .font(.custom("Helvetica Neue", size: 36.88))
            .padding(.horizontal, 85)
            .padding(.vertical, 19)
            .background(Color.init( #colorLiteral(red: 0.5570569038, green: 0.5565273762, blue: 0.5783078074, alpha: 1)))
            .clipShape(Capsule())
            .padding(.trailing, -3)
    }
}

struct CalculatorButtons1: View {
    var body: some View {
        HStack{
            Text("C").modifier(GrayButtonModifier())
            Text("±").modifier(GrayButtonModifier())
            Text("%").modifier(GrayButtonModifier())
            Text("÷").modifier(OrangeButtonModifier())
        }
    }
}

struct CalculatorButtons2: View {
    var body: some View {
        HStack{
            Text("7").modifier(GrayButtonModifier())
            Text("8").modifier(GrayButtonModifier())
            Text("9").modifier(GrayButtonModifier())
            Text("×").modifier(OrangeButtonModifier())
        }
    }
}

struct CalculatorButtons3: View {
    var body: some View {
        HStack{
            Text("4").modifier(GrayButtonModifier())
            Text("5").modifier(GrayButtonModifier())
            Text("6").modifier(GrayButtonModifier())
            Text("-").modifier(OrangeButtonModifier())
        }
    }
}

struct CalculatorButtons4: View {
    var body: some View {
        HStack{
            Text("1").modifier(GrayButtonModifier())
            Text("2").modifier(GrayButtonModifier())
            Text("3").modifier(GrayButtonModifier())
            Text("+").modifier(OrangeButtonModifier())
        }
    }
}

struct CalculatorButtons5: View {
    var body: some View {
        HStack{
            Text("0").modifier(CapsuleButtonModifier())
            Text(".").modifier(GrayButtonModifier())
            Text("=").modifier(OrangeButtonModifier())
        }
    }
}
