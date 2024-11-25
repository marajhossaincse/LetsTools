//
//  ContainerMenuScreen.swift
//  LetsTools
//
//  Created by Maraj Hossain on 13/7/24.
//

import SwiftUI

struct ContainerMenuScreen: View {
    var body: some View {
        Menu {
            Button(role: .destructive) {} label: {
                Label(
                    "Delete",
                    systemImage: "trash"
                )
            }

            Menu {
                Button("Share with friends") {}
                Button("Save on device") {}
            } label: {
                Label("Share", systemImage: "share.and.square.up")
            }

            Button {} label: {
                Label("Edit", systemImage: "pencil")
            }
        } label: {
            Label("More", systemImage: "ellipsis.circle")
        }
    }
}

struct ContainerMenuScreen_Previews: PreviewProvider {
    static var previews: some View {
        ContainerMenuScreen()
    }
}
