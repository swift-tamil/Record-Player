//
//  RecordView.swift
//  Record Player
//
//  Created by python on 29/10/23.
//

import SwiftUI

struct RecordView: View {
    
    @Binding var degree: Double
    @Binding var shouldAnimate: Bool
    
    var body: some View {
        Image("record")
            .resizable()
            .frame(width: 275, height: 275)
            .shadow(color: .gray, radius: 1, x: 0, y: 0)
            .rotationEffect(.degrees(degree))
            .animation(Animation.linear(duration: shouldAnimate ? 60 : 0).delay(1.5))
    }
}

struct RecordView_Previews: PreviewProvider {
    static var previews: some View {
        RecordView(degree: .constant(2.0), shouldAnimate: .constant(true))
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
