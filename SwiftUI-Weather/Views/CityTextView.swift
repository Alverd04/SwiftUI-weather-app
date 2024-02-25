//
//  File.swift
//  SwiftUI-Weather
//
//  Created by Albert Font Fernández on 25/2/24.
//

import SwiftUI

struct CityTextView: View {
        
    var cityName: String
        
    var body: some View {
        Text("Barcelona, Spain")
            .font(.system(size: 32, weight: .medium , design: .default))
            .foregroundColor(.white)
            .padding()
    }
}

