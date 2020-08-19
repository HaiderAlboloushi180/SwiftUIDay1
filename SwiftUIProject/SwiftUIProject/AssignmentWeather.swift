//
//  AssignmentWeather.swift
//  SwiftUIProject
//
//  Created by Haider Alboloushi on 8/19/20.
//  Copyright © 2020 Haider. All rights reserved.
//

import SwiftUI

struct AssignmentWeather: View {
    var body: some View {
        ZStack{
            WeatherBG()
            VStack{
                VStack{
                    Text("Mishrif")
                        .font(.largeTitle)
                        .foregroundColor(.white)
                        .fontWeight(.medium)
                    Text("Mostly Clear")
                        .foregroundColor(.white)
                    Text("22°")
                        .font(.system(size: 70))
                        .foregroundColor(.white)
                        .fontWeight(.thin)
                }
                .padding()
                HStack{
                    HStack{
                    Text("Tuesday ")
                        .foregroundColor(.white)
                        .fontWeight(.medium)
                    Text("TODAY")
                        .font(.custom("Helvetica Neue", size: 13))
                        .foregroundColor(.white)
                        .fontWeight(.medium)
                    }
                .padding()
                Spacer()
                    HStack{
                        Text("31")
                            .fontWeight(.medium)
                            .modifier(HighestLowestModifier())
                        Text("24")
                            .fontWeight(.medium)
                            .modifier(HighestLowestModifier())
                    }
                .padding()
                }
                HStack{
                    VStack{
                        Text("Now")
                        .modifier(WeatherModifier())
                        Image(systemName: "moon.stars.fill")
                            .foregroundColor(.white)
                        Text("22°")
                            .foregroundColor(.white)
                            .fontWeight(.light)
                    }
                    .padding(.leading)
                    .padding(.bottom)
                    VStack{
                        Text("5AM")
                        .modifier(WeatherModifier())
                        Image(systemName: "moon.stars.fill")
                            .foregroundColor(.white)
                        Text("22°")
                            .foregroundColor(.white)
                            .fontWeight(.light)
                    }
                    .padding(.leading)
                    .padding(.bottom)
                    VStack{
                        Text("6AM")
                        .modifier(WeatherModifier())
                        Image(systemName: "sunrise.fill")
                            .foregroundColor(.white)
                        Text("22°")
                            .foregroundColor(.white)
                            .fontWeight(.light)
                    }
                    .padding(.leading)
                    .padding(.bottom)
                    VStack{
                        Text("7AM")
                        .modifier(WeatherModifier())
                        Image(systemName: "cloud.sun.rain.fill")
                            .foregroundColor(.white)
                        Text("22°")
                            .foregroundColor(.white)
                            .fontWeight(.light)
                    }
                    .padding(.leading)
                    .padding(.bottom)
                    VStack{
                        Text("8AM")
                        .modifier(WeatherModifier())
                        Image(systemName: "moon.stars.fill")
                            .foregroundColor(.white)
                        Text("22°")
                            .foregroundColor(.white)
                            .fontWeight(.light)
                    }
                    .padding(.leading)
                    .padding(.bottom)
                    VStack{
                        Text("9AM")
                        .modifier(WeatherModifier())
                        Image(systemName: "moon.stars.fill")
                            .foregroundColor(.white)
                        Text("22°")
                            .foregroundColor(.white)
                            .fontWeight(.light)
                    }
                    .padding(.leading)
                    .padding(.bottom)
                    VStack{
                        Text("10AM")
                        .modifier(WeatherModifier())
                        Image(systemName: "moon.stars.fill")
                            .foregroundColor(.white)
                        Text("22°")
                            .foregroundColor(.white)
                            .fontWeight(.light)
                    }
                    .padding(.leading)
                    .padding(.bottom)
                }
                VStack{
                    BottomOfPage()
                    BottomOfPage()
                    BottomOfPage()
                    BottomOfPage()
                    BottomOfPage()
                    BottomOfPage()
                }
            }
        }
   }
}

struct AssignmentWeather_Previews: PreviewProvider {
    static var previews: some View {
        AssignmentWeather()
    }
}

struct WeatherBG: View {
    var body: some View {
        ZStack{
            Image("Weather")
                .resizable()
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct HighestLowestModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
        .font(.custom("Helvetica Neue", size: 13))
        .foregroundColor(.white)
    }
}

struct WeatherModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
        .foregroundColor(.white)
        .font(.custom("", size: 17))
    }
}

struct BottomPageModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundColor(.white)
            .padding(.init(top: 0, leading: 10, bottom: 10, trailing: 10))
    }
}

struct BottomOfPage: View {
    var body: some View {
        HStack{
            Text("Wednsday").modifier(WeatherModifier())
                .padding(.init(top: 0, leading: 10, bottom: 10, trailing: 10))
            Spacer()
            Image(systemName: "cloud.sun.rain.fill").modifier(BottomPageModifier())
            Spacer()
            Text("29").modifier(BottomPageModifier())
            Text("24")
                .foregroundColor(.init(red: 230.0, green: 230.0, blue: 230.0, opacity: 0.7))
                .padding(.init(top: 0, leading: 10, bottom: 10, trailing: 10))
        }
    }
}
