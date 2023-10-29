//
//  ContentView.swift
//  Record Player
//
//  Created by python on 29/10/23.
//

import SwiftUI

struct ContentView: View {
    
    //MARK: Properties
    
    @State private var rotateRecord = false
    @State private var rotateArm = false
    @State private var shouldAnimate = false
    @State private var degree = 0.0
    
    //MARK: BODY
    var body: some View {
        ZStack{
            RadialGradient(gradient: Gradient(colors: [.white, .black]), center: .center, startRadius: 20, endRadius: 600)
                .scaleEffect(1.2)
            
            //MARK: Record Player Box
            
            RecardPlayerBox()
                .offset(y: -80)
            
            //MARK: Record
            
            VStack {
               RecordView(degree: $degree, shouldAnimate: $shouldAnimate)
                
            //MARK: ARM
                ArmView(rotationArm: $rotateArm)
            }
            
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
