//
//  MainWeatherStatusView.swift
//  SwiftUI-Weather
//
//  Created by Albert Font Fernández on 25/2/24.
//

import SwiftUI

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

