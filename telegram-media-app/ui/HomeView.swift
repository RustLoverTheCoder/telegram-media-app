//
//  HomeView.swift
//  telegram-media-app
//
//  Created by 马翔 on 2022/10/12.
//

import SwiftUI
import Photos

struct HomeView: View {
    @State private var allPhotos = []
    init() {
        print(PHAsset.fetchAssets(with: .image, options: PHFetchOptions()))
    }
    var body: some View {
        ScrollView {
            Image(systemName: "folder")
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
