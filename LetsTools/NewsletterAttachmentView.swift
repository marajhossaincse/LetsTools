//
//  NewsletterAttachmentView.swift
//  xPerimentGround
//
//  Created by Maraz Hossain on 5/14/25.
//

import SwiftUI

struct NewsletterAttachmentView: View {
    public let isPhone: Bool = UIDevice.current.userInterfaceIdiom == .phone

    var url = ""
    var type = ""

    var body: some View {
        VStack {
            if type == "photo" {
                Image(systemName: "square.and.arrow.up")
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .cornerRadius(8)
                    .accessibilityElement(children: .ignore)
            }
            else if type == "video" {
                if !url.isEmpty {
                    ZStack {
                        Image(systemName: "play.circle.fill")
                            .resizable()
                            .foregroundStyle(Color.white, Color.blue)
                            .frame(
                                width: isPhone ? 40 : 55,
                                height: isPhone ? 40 : 55
                            )
                            .accessibilityHidden(true)
                            .accessibilityIgnoresInvertColors(true)
                    }
                    .accessibilityElement(children: .ignore)
                }
                else {
                    Image(systemName: "")
                        .resizable()
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .cornerRadius(8)
                        .accessibilityIgnoresInvertColors(true)
                }
            }
            else {
                Image(systemName: "doc.fill")
                    .resizable()
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .cornerRadius(8)
                    .accessibilityIgnoresInvertColors(true)
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

#Preview {
    NewsletterAttachmentView(url: "", type: "any")
}

#Preview {
    NewsletterAttachmentView(url: "", type: "photo")
}

#Preview {
    NewsletterAttachmentView(url: "", type: "video")
}
