//
//  ContentView.swift
//  DrinkWater
//
//  Created by 肖霁航 on 2024/3/12.
//

import SwiftUI

struct ContentView: View {
    @State var isWatered = false
    
    var body: some View {
        VStack {
            ZStack {
                Circle()
                Image(systemName: isWatered ? "crown.fill" : "eyes.inverse")
                    .font(.system(size: 150))
                    .foregroundColor(isWatered ? .yellow: .white)
            }
            .frame(minHeight: 650)
            .shadow(radius: 10)
            
            Divider()
            
            Toggle(isOn: $isWatered) {
                Label("你喝水了吗？", systemImage: "drop.fill")
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

// Test of Branch
