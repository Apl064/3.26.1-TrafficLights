//
//  TrafficLampView.swift
//  TrafficLights
//
//  Created by Pavel Metelin on 13.05.2022.
//

import SwiftUI

struct TrafficLampView: View {
    let lampColor: Color
    let lampOpacity: Double
    
    var body: some View {
        Circle()
            .foregroundColor(lampColor)
            .opacity(lampOpacity)
            .frame(width: 120, height: 120)
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
    }
}

struct TrafficLampView_Previews: PreviewProvider {
    static var previews: some View {
        TrafficLampView(lampColor: Color(.black), lampOpacity: 0.0)
    }
}
