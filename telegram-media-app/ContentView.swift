//
//  ContentView.swift
//  telegram-media-app
//
//  Created by 马翔 on 2022/10/11.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
        LottieView(lottieFile: "duck")
            .frame(width: 80, height: 80)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
