//
//  ContentView.swift
//  war
//
//  Created by Munir Ben Jemaa on 3/22/24.
//

import SwiftUI

struct ContentView: View {
    @State var playerCard = "card2"
    @State var cpuCard = "card3"
    
    @State var playerScore = 0
    @State var cpuScore = 0
    
    var body: some View {
        ZStack {
            Image("background-cloth")
                .resizable()
                .ignoresSafeArea()
            VStack {
                Spacer()
                Image("logo")
                Spacer()
                HStack {
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                Spacer()
                Button {
                    deal()
                } label: { Image("button")
                }
                Spacer()
                HStack {
                    Spacer()
                    VStack {
                        Text("Player")
                            .font(.headline)
                            .padding(.bottom, 10)
                        Text(String(playerScore))
                            .font(.largeTitle)
                    }
                    Spacer()
                    VStack {
                        Text("CPU")
                            .font(.headline)
                            .padding(.bottom, 10)
                        Text(String(cpuScore))
                            .font(.largeTitle)
                    }
                    Spacer()
                }
                .foregroundColor(.white)
                Spacer()
            }
            .padding()
        }
    }
    func deal() {
        var playerNum = Int.random(in:2...14)
        var cpuNum = Int.random(in:2...14)
        
        playerCard = "card" + String(playerNum)
        cpuCard = "card" + String(cpuNum)
        
        if(playerNum > cpuNum) {
            playerScore += 1
        }
        else if(cpuNum > playerNum) {
            cpuScore += 1
        }
    }
}

#Preview {
    ContentView()
}
