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
//    @StateObject var RootVM = RootViewModal()
    init() {
        let authorized = Permission.photoLibrary.authorized
        print(authorized)
//        RootVM.userFlow = .allowAccess
    }
    var body: some View {
        Group {
            AllowAccess()
              }
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

class RootViewModal: ObservableObject {
    enum UserFlow {
        case allowAccess
        case home
    }
    @Published var userFlow: UserFlow = .allowAccess
}
