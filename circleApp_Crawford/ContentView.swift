//
//  ContentView.swift
//  circleApp_Crawford
//
//  Created by AC Student on 5/4/23.
//

import SwiftUI

struct ContentView: View {
    let circleLineWidth = 100
    let circleWidthHeight = 250
    var body: some View {
        ZStack {
            Circle()
                .trim(from: 0.75, to: 1.0)
                .stroke(Color(.systemGreen), lineWidth: CGFloat(circleLineWidth+20))
                .frame(width: CGFloat(circleWidthHeight), height: CGFloat(circleWidthHeight))
                .shadow(color:.gray, radius: CGFloat(10), x:0, y:0)
                .overlay(alignment: .topTrailing) {
                    Text("25%")
                        .font(.system(size:40))
                        .fontWeight(.semibold)
                        .foregroundColor(Color.white)
                }
            Circle()
                .trim(from: 0.0, to: 0.4)
                .stroke(Color(.systemBlue), lineWidth: CGFloat(circleLineWidth))
                .frame(width: CGFloat(circleWidthHeight), height: CGFloat(circleWidthHeight))
            Circle()
                .trim(from: 0.4, to: 0.6)
                .stroke(Color(.systemOrange), lineWidth: CGFloat(circleLineWidth))
                .frame(width: CGFloat(circleWidthHeight), height: CGFloat(circleWidthHeight))
            Circle()
                .trim(from: 0.6, to: 0.75)
                .stroke(Color(.systemRed), lineWidth: CGFloat(circleLineWidth))
                .frame(width: CGFloat(circleWidthHeight), height: CGFloat(circleWidthHeight))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
