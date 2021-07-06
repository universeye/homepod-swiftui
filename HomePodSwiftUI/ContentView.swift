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
//            Circle()
//                .fill(Color.black)
            ZStack {
                ForEach(0..<130) { index in
                    Circle()
                        .strokeBorder(Color(white: 0.15), lineWidth: 1.25)
                        .frame(width: 160, height: 160)
                        .offset(x: 120)
                }
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
