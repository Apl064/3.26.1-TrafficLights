//
//  ContentView.swift
//  TrafficLights
//
//  Created by Pavel Metelin on 12.05.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var tapCount = 0
    
    var body: some View {
        ZStack {
            backgroudColor
            VStack {
                TrafficLampView(lampColor: .red,
                                lampOpacity: tapCount != 1 ? 0.3 : 1.0)
                TrafficLampView(lampColor: .yellow,
                                lampOpacity: tapCount != 2 ? 0.3 : 1.0)
                TrafficLampView(lampColor: .green,
                                lampOpacity: tapCount != 3 ? 0.3 : 1.0)
                Spacer()
                ZStack {
                    switchButton
                }
            }
            .padding(EdgeInsets(top: 20, leading: 0, bottom: 20, trailing: 0))
        }
    }
    
    private var backgroudColor: some View {
        Color(.black)
            .ignoresSafeArea()
    }
    
    private var switchButton: some View {
        Button(action: { tapCount == 3 ? (tapCount = 1) : (tapCount += 1) }) {
            Text(tapCount != 0 ? "NEXT" : "START")
                .font(.title)
                .padding()
                .foregroundColor(.white)
                .background(
                    RoundedRectangle(cornerRadius: 20)
                    .stroke(Color.white, lineWidth: 4)
                    .background(Color.blue
                    .cornerRadius(20)))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
