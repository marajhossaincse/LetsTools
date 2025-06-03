//
//  LoadingView.swift
//  LetsTools
//
//  Created by Maraj Hossain on 19/5/24.
//

import SwiftUI

struct LoadingView: View {
    var body: some View {
        MainScreen()
            .redacted(reason: .placeholder)
    }
}

struct LoadingView_Previews: PreviewProvider {
    static var previews: some View {
        LoadingView()
    }
}
