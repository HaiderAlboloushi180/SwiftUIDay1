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
                        .modifier(DiffTimesModifier())
                        Image(systemName: "moon.stars.fill")
                            .foregroundColor(.white)
                        Text("22°")
                            .foregroundColor(.white)
                            .fontWeight(.light)
                    }
                    .padding(.leading)
                    VStack{
                        Text("5AM")
                        .modifier(DiffTimesModifier())
                        Image(systemName: "moon.stars.fill")
                            .foregroundColor(.white)
                        Text("22°")
                            .foregroundColor(.white)
                            .fontWeight(.light)
                    }
                    .padding(.leading)
                    VStack{
                        Text("6AM")
                        .modifier(DiffTimesModifier())
                        Image(systemName: "sunrise.fill")
                            .foregroundColor(.white)
                        Text("22°")
                            .foregroundColor(.white)
                            .fontWeight(.light)
                    }
                    .padding(.leading)
                    VStack{
                        Text("7AM")
                        .modifier(DiffTimesModifier())
                        Image(systemName: "cloud.sun.rain.fill")
                            .foregroundColor(.white)
                        Text("22°")
                            .foregroundColor(.white)
                            .fontWeight(.light)
                    }
                    .padding(.leading)
                    VStack{
                        Text("8AM")
                        .modifier(DiffTimesModifier())
                        Image(systemName: "moon.stars.fill")
                            .foregroundColor(.white)
                        Text("22°")
                            .foregroundColor(.white)
                            .fontWeight(.light)
                    }
                    .padding(.leading)
                    VStack{
                        Text("9AM")
                        .modifier(DiffTimesModifier())
                        Image(systemName: "moon.stars.fill")
                            .foregroundColor(.white)
                        Text("22°")
                            .foregroundColor(.white)
                            .fontWeight(.light)
                    }
                    .padding(.leading)
                    VStack{
                        Text("10AM")
                        .modifier(DiffTimesModifier())
                        Image(systemName: "moon.stars.fill")
                            .foregroundColor(.white)
                        Text("22°")
                            .foregroundColor(.white)
                            .fontWeight(.light)
                    }
                    .padding(.leading)
                    
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

struct DiffTimesModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
        .foregroundColor(.white)
        .font(.custom("", size: 17))
    }
}
