//
//  MainScreen.swift
//  LetsTools
//
//  Created by Maraj Hossain on 19/5/24.
//

import SwiftUI

struct MainScreen: View {
    var body: some View {
        VStack {
            Image("NSU")
                .resizable()

            Text("North South University")

            HStack {
                Image(systemName: "hand.thumbsup")

                Spacer()

                Image(systemName: "hand.thumbsdown")
            }

            Button("Visit website!") {}

            Text("North South University (NSU), the first private university in Bangladesh, was established in 1992 by the then Foundation for Promotion of Education and Research (FPER), a charitable, non-profit, non-commercial and non-political organization. The FPER later was renamed as the NSU Foundation and is presently called The North South Foundation for Education and Research. The Foundation is comprised of a group of eminent industrialists, prominent patrons of education, notable philanthropists, widely experienced academics and senior civil servants of the country. In the early 1990s, they had a dream to set up a world-class university as a center of excellence in higher education in the private sector. Their dedication, tireless efforts, and hard work paved the way for the approval of the establishment of NSU.")
        }
        .padding( )
    }
}

struct MainScreen_Previews: PreviewProvider {
    static var previews: some View {
        MainScreen()
    }
}
