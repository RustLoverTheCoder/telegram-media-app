//
//  ContentView.swift
//  telegram-media-app
//
//  Created by 马翔 on 2022/10/11.
//

import SwiftUI
import PermissionsKit
import PhotoLibraryPermission

struct ContentView: View {
    @State private var isShown = Permission.photoLibrary.authorized
    
    init() {
        let authorized = Permission.photoLibrary.authorized
    }
    var body: some View {
        Group {
            if(isShown){
                HomeView()
            }else {
                AllowAccess()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
