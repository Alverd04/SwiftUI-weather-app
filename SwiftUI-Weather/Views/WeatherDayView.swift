//
//  Weather.swift
//  SwiftUI-Weather
//
//  Created by Albert Font Fernández on 25/2/24.
//

import SwiftUI

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




