//
//  RecardPlayerBox.swift
//  Record Player
//
//  Created by python on 29/10/23.
//

import SwiftUI

struct RecardPlayerBox: View {
    var body: some View {
        ZStack{
            Rectangle()
                .frame(width: 345, height: 345)
                .cornerRadius(10)

            Image("woodGrain")
                .resizable()
                .frame(width: 325, height: 325)
                .shadow(color: .white, radius: 3, x: 0, y: 0)
        }
    }
}

struct RecardPlayerBox_Previews: PreviewProvider {
    static var previews: some View {
        RecardPlayerBox()
    }
}
