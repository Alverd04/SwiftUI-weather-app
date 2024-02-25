//
//  ContentView.swift
//  SwiftUI-Weather
//
//  Created by Albert Font Fernández on 25/2/24.
//

import SwiftUI

struct WeatherInfo {
    let name: String
    let icon: String
    let temperature: String
    let id = UUID()
}

struct ContentView: View {
    let response: [WeatherInfo] = fetchWeatherData(city: "Barcelona", days: "5")

    @State private var isNightMode = false
    
    var body: some View {
        ZStack{
            BackgroundView(isNightMode: $isNightMode)
            VStack {
                CityTextView(cityName: "Barcelona, Spain")
                MainWeatherStatusView(icon: isNightMode ? "moon.stars.fill" :"cloud.sun.fill", temperature: "12")
                HStack(spacing: 28) {
                    ForEach(response, id: \.id) {
                        day in WeatherDayView(dayOfTheWeek: day.name, icon: day.icon, temperature: day.temperature)
                    }
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

func fetchWeatherData(city: String, days: String) -> [WeatherInfo] {

    return [
        WeatherInfo(name: "TUE", icon: "cloud.sun.fill", temperature: "12"),
        WeatherInfo(name: "WED", icon: "sun.dust.fill", temperature: "11"),
        WeatherInfo(name: "THU", icon: "cloud.bolt.fill", temperature: "13"),
        WeatherInfo(name: "FRI", icon: "smoke.fill", temperature: "15"),
        WeatherInfo(name: "SAT", icon: "cloud.rain.fill", temperature: "10"),
    ]
}


#Preview {
    ContentView()
}

