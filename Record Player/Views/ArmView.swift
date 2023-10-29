//
//  ArmView.swift
//  Record Player
//
//  Created by python on 29/10/23.
//

import SwiftUI

struct ArmView: View {
    
    @Binding var rotationArm: Bool
    
    var body: some View {
    Image("playerArm")
            .resizable()
            .frame(width: 150, height: 150)
            .aspectRatio(contentMode: .fit)
            .shadow(color: .gray, radius: 2,x: 0, y: 0)
            .rotationEffect(Angle.degrees(-45), anchor: .topLeading)
            .rotationEffect(Angle.degrees(rotationArm ? 8 : 0), anchor: .topTrailing)
            .animation(Animation.linear(duration: 2))
            .offset(x: 70, y: -200)
    }
}

struct ArmView_Previews: PreviewProvider {
    static var previews: some View {
        ArmView(rotationArm: .constant(true))
    }
}
