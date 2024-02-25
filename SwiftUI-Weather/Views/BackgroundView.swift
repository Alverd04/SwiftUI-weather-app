//
//  File.swift
//  SwiftUI-Weather
//
//  Created by Albert Font Fernández on 25/2/24.
//

import SwiftUI

struct BackgroundView: View {
    
    @Binding var isNightMode: Bool

    var body: some View {
        LinearGradient (colors: [isNightMode ? .black : .blue, isNightMode ? .gray : .lightBlue], startPoint: .topLeading, endPoint: .bottomTrailing)
            .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}
