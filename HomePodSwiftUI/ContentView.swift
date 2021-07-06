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
                .scale(0.95)
                .shadow(color: Color(white: 0.15), radius: 10, y: 18)
            Circle()
                .fill(Color.black)
            
            //mesh
            mesh
            
            Circle()
                .scale(0.88)
                .fill(Color(white: 0.35))
                .blur(radius: 15)
                .mask(mesh)
                .blendMode(.screen)
                
            
            //user interface
            Group {
                Circle()
                    .scale(1.01)
                    .fill(Color.black)
                    .blur(radius: 5)
                Circle()
                    .fill(LinearGradient(gradient: Gradient(colors: [Color(white: 0.2), Color.black, .black]), startPoint: .top, endPoint: .bottom))
                Circle()
                    .strokeBorder(AngularGradient(gradient: Gradient(colors: [.white, .black,.white, .black,.white, .black,.white]), center: .center, startAngle: .degrees(-100), endAngle: .degrees(260)), lineWidth: 2)
                    .blur(radius: 1)
            }
            .scaleEffect(0.63)
            
            //siri circle
            
            Group {
                Circle()
                    .fill(AngularGradient(gradient: Gradient(colors: [Color.blue, Color.blue, Color(red: 0, green: 1, blue: 1).opacity(0.8), .purple, .purple, .purple, .blue]), center: .center, startAngle: .degrees(-100), endAngle: .degrees(260)))
                    .scaleEffect(0.17)
                    .blur(radius: 10)
                    .saturation(1.4)
                    .brightness(0.3)
                    .drawingGroup()
                Circle()
                    .scale(0.16)
                    .stroke(AngularGradient(gradient: Gradient(colors: [Color.blue, .green, .red, Color.blue]), center: .center, startAngle: .degrees(-100), endAngle: .degrees(260)), lineWidth: 3)
                    .blur(radius: 6)
                    .saturation(2)
                Circle()
                    .scale(0.075)
                    .fill(Color.white)
                    .blur(radius: 12)
            }
            .blur(radius: 4)
            .mask(Circle().scale(0.22).blur(radius: 7))
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
