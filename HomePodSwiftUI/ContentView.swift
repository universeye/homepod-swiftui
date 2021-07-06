//
//  ContentView.swift
//  HomePodSwiftUI
//
//  Created by Terry Kuo on 2021/7/6.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack {
            //base
            Circle()
                .fill(Color.black)
            
            //mesh
            mesh
            
            Circle()
                .scale(0.88)
                .fill(Color(white: 0.35))
                .blur(radius: 15)
                .blendMode(.screen)
                .mask(mesh)
            
            //user interface
            Group {
                Circle()
                    .fill(Color.black)
                Circle()
                    .strokeBorder(AngularGradient(gradient: Gradient(colors: [.white, .black,.white, .black,.white, .black,.white]), center: .center, startAngle: .degrees(-100), endAngle: .degrees(260)), lineWidth: 1.5)
                    .blur(radius: 1)
            }
            .scaleEffect(0.63)
        }
    }
    
    var mesh: some View {
        ZStack {
            ForEach(0..<130) { index in
                Circle()
                    .strokeBorder(Color(white: 0.15), lineWidth: 1.25)
                    .frame(width: 160, height: 160)
                    .offset(x: 120)
                    .rotationEffect(.degrees(2.7692 * Double(index)))
            }
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    struct HomePodTopView_Harness: View {
        var body: some View {
            ContentView()
                .frame(width: 400, height: 400)
                .padding(50)
        }
    }
    static var previews: some View {
        HomePodTopView_Harness()
            .previewLayout(.sizeThatFits)
    }
}
