//
//  ContentView.swift
//  Dicee-SwiftUI
//
//  Created by user220431 on 7/28/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var leftDiceNum = 1
    @State var rightDiceNum = 1
    
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .ignoresSafeArea()
            VStack {
                Image("diceeLogo")
                Spacer()
                HStack {
                    DiceView(diceNum: leftDiceNum)
                    DiceView(diceNum: rightDiceNum)
                }
                .padding(.horizontal)
                Spacer()
                Button(action: {
                    self.leftDiceNum = Int.random(in: 1...6)
                    self.rightDiceNum = Int.random(in: 1...6)
                }) {
                    Text("Roll")
                        .font(.system(size: 50))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding(.horizontal)
                        .frame(width: 200, height: 100, alignment: .center)
                }
                .background(Color.red
                    )
                .cornerRadius(50.0)
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

