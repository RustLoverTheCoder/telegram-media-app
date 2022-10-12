//
//  AllowAccess.swift
//  telegram-media-app
//
//  Created by 马翔 on 2022/10/12.
//

import SwiftUI
import PermissionsKit
import PhotoLibraryPermission

struct AllowAccess: View {
    var body: some View {
        VStack {
        LottieView(lottieFile: "duck")
            .frame(width: 100, height: 100)
            Text("Access Your Photos and Videos").fontWeight(.bold)
            HStack {
                Button(action: {
                    print("Button tapped!")
                    Permission.photoLibrary.request {
                        
                    }
                }) {
                    Text("Allow Access").fontWeight(.semibold).font(.subheadline).padding(10).overlay(
                        RoundedRectangle(cornerRadius: 10.0)
                            .stroke(lineWidth: 2.0)
                    )
                }
            }
        }
        .padding()
    }
}

struct AllowAccess_Previews: PreviewProvider {
    static var previews: some View {
        AllowAccess()
    }
}
