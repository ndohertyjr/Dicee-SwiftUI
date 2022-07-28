//
//  DiceView.swift
//  Dicee-SwiftUI
//
//  Created by user220431 on 7/28/22.
//

import SwiftUI


struct DiceView: View {
    
    var diceNum: Int
    
    var body: some View {
        Image("dice\(diceNum)")
            .resizable()
            .aspectRatio(1, contentMode: .fit)
            .padding(.all)
    }
}

struct DiceView_Previews: PreviewProvider {
    static var previews: some View {
        DiceView(diceNum: 1)
            .previewLayout(.sizeThatFits)
    }
}
