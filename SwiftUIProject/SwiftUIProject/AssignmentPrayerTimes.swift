//
//  AssignmentPrayerTimes.swift
//  SwiftUIProject
//
//  Created by Haider Alboloushi on 8/19/20.
//  Copyright © 2020 Haider. All rights reserved.
//

import SwiftUI

struct AssignmentPrayerTimes: View {
    @State var bgColor = UIColor(cgColor: #colorLiteral(red: 0.1019607857, green: 0.2784313858, blue: 0.400000006, alpha: 1))
    var body: some View {
        
        ZStack{
            
            Color.init(bgColor)
            .edgesIgnoringSafeArea(.all)
            
            VStack{
                
                HStack{
                    Image("kaaba")
                    .padding()
                    Spacer()
                    Image("settings")
                    .padding()
                }
                .padding()
                
                Text("02:10 ₁₀")
                    .font(.custom("BalooTamma2-Regular", size: 60))
                    .foregroundColor(.white)
                
                Text("مضى على الأذان")
                    .foregroundColor(.white)
                    .padding(.bottom)
                
                HStack{
                    Image("left arrow")
                    Spacer()
                    Text("19 أغسطس - 29 ذو الحجة ")
                        .foregroundColor(.white)
                    Spacer()
                    Image("right arrow")
                }
                .padding(.init(top: 20, leading: 10, bottom: 20, trailing: 10))
                .background(Color(#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 0.5)))
                
                HStack{
                    Text("3:54 AM")
                        .foregroundColor(.white)
                        .fontWeight(.semibold)
                        .padding(.init(top: 20, leading: 80, bottom: 20, trailing: 10))
                    Spacer()
                    Text("الفجر")
                        .foregroundColor(.white)
                        .fontWeight(.semibold)
                        .padding(.init(top: 20, leading: 10, bottom: 20, trailing: 80))
                        .onTapGesture {
                            self.bgColor = UIColor(cgColor: #colorLiteral(red: 0.1019607857, green: 0.2784313858, blue: 0.400000006, alpha: 1))
                    }
                }
                .modifier(PrayerTimesModifier())
                
                HStack{
                    Text("5:21 AM")
                        .foregroundColor(.white)
                        .fontWeight(.semibold)
                        .padding(.init(top: 20, leading: 80, bottom: 20, trailing: 10))
                    Spacer()
                    Text("الشروق")
                        .foregroundColor(.white)
                        .fontWeight(.semibold)
                        .padding(.init(top: 20, leading: 10, bottom: 20, trailing: 75))
                        .onTapGesture {
                            self.bgColor = UIColor(cgColor: #colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1))
                    }
                }
                .modifier(PrayerTimesModifier())
                
                HStack{
                    Text("11:54 AM")
                        .foregroundColor(.white)
                        .fontWeight(.semibold)
                        .padding(.init(top: 20, leading: 80, bottom: 20, trailing: 10))
                    Spacer()
                    Text("الظهر")
                        .foregroundColor(.white)
                        .fontWeight(.semibold)
                        .padding(.init(top: 20, leading: 10, bottom: 20, trailing: 80))
                        .onTapGesture {
                            self.bgColor = UIColor(cgColor: #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1))
                    }
                }
                .modifier(PrayerTimesModifier())
                
                HStack{
                    Text("3:29 AM")
                        .foregroundColor(.white)
                        .fontWeight(.semibold)
                        .padding(.init(top: 20, leading: 80, bottom: 20, trailing: 10))
                    Spacer()
                    Text("العصر")
                        .foregroundColor(.white)
                        .fontWeight(.semibold)
                        .padding(.init(top: 20, leading: 10, bottom: 20, trailing: 80))
                        .onTapGesture {
                            self.bgColor = UIColor(cgColor: #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1))
                    }
                }
                .modifier(PrayerTimesModifier())
                
                HStack{
                    Text("6:26 AM")
                        .foregroundColor(.white)
                        .fontWeight(.semibold)
                        .padding(.init(top: 20, leading: 80, bottom: 20, trailing: 10))
                    Spacer()
                    Text("المغرب")
                        .foregroundColor(.white)
                        .fontWeight(.semibold)
                        .padding(.init(top: 20, leading: 10, bottom: 20, trailing: 75))
                        .onTapGesture {
                            self.bgColor = UIColor(cgColor: #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1))
                    }
                }
                .modifier(PrayerTimesModifier())
                
                HStack{
                    Text("7:56 AM")
                        .foregroundColor(.white)
                        .fontWeight(.semibold)
                        .padding(.init(top: 20, leading: 80, bottom: 20, trailing: 10))
                    Spacer()
                    Text("العشاء")
                        .foregroundColor(.white)
                        .fontWeight(.semibold)
                        .padding(.init(top: 20, leading: 10, bottom: 20, trailing: 80))
                        .onTapGesture {
                            self.bgColor = UIColor(cgColor: #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1))
                    }
                }
                .modifier(PrayerTimesModifier())
            }
        }
    }
}

struct AssignmentPrayerTimes_Previews: PreviewProvider {
    static var previews: some View {
        AssignmentPrayerTimes()
    }
}

struct PrayerTimesModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
        .padding(.init(top: 6, leading: 10, bottom: 18, trailing: 10))
        .background(Color(#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 0.5)))
    }
}
