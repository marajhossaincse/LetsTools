import SwiftUI

struct StoryCart: View {
    let users = [
        ("John", "https://picsum.photos/id/10/200/300", true),
        ("Anna", "https://picsum.photos/id/11/200/300", false),
        ("Mark", "https://picsum.photos/id/12/200/300", true),
        ("Grace", "https://picsum.photos/id/13/200/300", true),
        ("Mike", "https://picsum.photos/id/14/200/300", true)
    ]

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 20) {
                ForEach(users, id: \.0) { user in
                    ZStack(alignment: .topLeading) {
                        // Story Image
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color.gray.opacity(0.1))
                            .frame(width: 155, height: 250)

                        AsyncImage(url: URL(string: user.1)) { image in
                            image.resizable()
                                .scaledToFill()
                                .clipShape(RoundedRectangle(cornerRadius: 10))
                                .frame(width: 155, height: 250)
                        } placeholder: {
                            Color.gray.opacity(0.3)
                                .frame(width: 155, height: 250)
                        }

                        ZStack(alignment: .bottomTrailing) {
                            // Profile Image
                            AsyncImage(url: URL(string: user.1)) { profileImage in
                                profileImage
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 55, height: 55)
                                    .clipShape(Circle())
                                    .overlay(Circle())

                            } placeholder: {
                                Circle()
                                    .scaledToFill()
                                    .frame(width: 55, height: 55)
                                    .clipShape(Circle())
                                    .overlay(Circle())
                            }

                            if user.2 {
                                Circle()
                                    .strokeBorder(.white)
                                    .background(Circle().fill(.green))
                                    .frame(width: 20, height: 20)
                            }
                        }
                    }
                }
            }
        }
    }
}

struct StoryCart_Previews: PreviewProvider {
    static var previews: some View {
        StoryCart()
    }
}
