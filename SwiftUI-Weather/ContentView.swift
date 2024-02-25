//
//  ContentView.swift
//  SwiftUI-Weather
//
//  Created by Albert Font Fernández on 25/2/24.
//

import SwiftUI

struct ContentView: View {
        
    @State private var isNightMode = false
    
    var body: some View {
        ZStack{
            BackgroundView(isNightMode: $isNightMode)
            VStack {
                CityTextView(cityName: "Barcelona, Spain")
                MainWeatherStatusView(icon: isNightMode ? "moon.stars.fill" :"cloud.sun.fill", temperature: "12")
                HStack(spacing: 28) {
                    WeatherDayView(dayOfTheWeek: "TUE", icon: "cloud.sun.fill", temperature: "14")
                    WeatherDayView(dayOfTheWeek: "WED", icon: "sun.dust.fill", temperature: "11")
                    WeatherDayView(dayOfTheWeek: "THUR", icon: "cloud.bolt.fill", temperature: "14")
                    WeatherDayView(dayOfTheWeek: "FRI", icon: "smoke.fill", temperature: "14")
                    WeatherDayView(dayOfTheWeek: "SAT", icon: "cloud.rain.fill", temperature: "14")
                }
                Spacer()
                Button {
                    isNightMode.toggle()
                } label: {
                    WeatherButton(title: "Change day time", textColor: isNightMode ? .black : .blue, backgroundColor: .white
                    )
                }
                Spacer()
            }
        }
    }
}

#Preview {
    ContentView()
}

struct WeatherDayView: View {
        
    var dayOfTheWeek: String
    var icon: String
    var temperature: String
    
    init(dayOfTheWeek: String, icon: String, temperature: String) {
        self.dayOfTheWeek = dayOfTheWeek
        self.icon = icon
        self.temperature = temperature
    }
    
    var body: some View {
        VStack{
            Text(dayOfTheWeek)
                .font(.system(size: 16, weight: .medium , design: .default))
                .foregroundColor(.white)
            Image(systemName: icon)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 32, height: 32)
            Text("\(temperature)ºC")
                .font(.system(size: 21, weight: .medium , design: .default))
                .foregroundColor(.white)
        }
    }
}

struct BackgroundView: View {
    
    @Binding var isNightMode: Bool

    var body: some View {
        LinearGradient (colors: [isNightMode ? .black : .blue, isNightMode ? .gray : .lightBlue], startPoint: .topLeading, endPoint: .bottomTrailing)
            .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}


struct CityTextView: View {
        
    var cityName: String
        
    var body: some View {
        Text("Barcelona, Spain")
            .font(.system(size: 32, weight: .medium , design: .default))
            .foregroundColor(.white)
            .padding()
    }
}

struct MainWeatherStatusView: View {
        
    var icon: String
    var temperature: String
    
    var body: some View {
        VStack(spacing: 0){
            Image(systemName: icon)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180)
            Text("\(temperature)ºC")
                .font(.system(size: 70, weight: .medium))
                .foregroundColor(.white)
        }.padding(.bottom, 40)
    }
}

