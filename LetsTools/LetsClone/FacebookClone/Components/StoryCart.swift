import SwiftUI

struct StoryCart: View {
    let users: [User] = [
        User(
            name: "John",
            profileImage: "https://picsum.photos/200",
            storyImage: "https://picsum.photos/id/10/200/300",
            isOnline: true
        ),
        User(
            name: "Anna",
            profileImage: "https://picsum.photos/200",
            storyImage: "https://picsum.photos/id/11/200/300",
            isOnline: false
        ),
        User(
            name: "Mark",
            profileImage: "https://picsum.photos/200",
            storyImage: "https://picsum.photos/id/12/200/300",
            isOnline: false
        ),
        User(
            name: "Grace",
            profileImage: "https://picsum.photos/200",
            storyImage: "https://picsum.photos/id/13/200/300",
            isOnline: true
        ),
        User(
            name: "Mike",
            profileImage: "https://picsum.photos/200",
            storyImage: "https://picsum.photos/id/14/200/300",
            isOnline: true
        )
    ]

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 20) {
                ForEach(users) { user in
                    ZStack(alignment: .topLeading) {
                        // Story Image
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color.gray.opacity(0.1))
                            .frame(width: 155, height: 250)

                        AsyncImage(url: URL(string: user.storyImage)) { image in
                            image.resizable()
                                .scaledToFill()
                                .clipShape(RoundedRectangle(cornerRadius: 10))
                                .frame(width: 155, height: 250)
                        } placeholder: {
                            Color.gray.opacity(0.3)
                                .frame(width: 155, height: 250)
                        }

                        ZStack(alignment: .center) {
                            // Profile Image
                            AsyncImage(url: URL(string: user.profileImage)) { profileImage in
                                profileImage
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 50, height: 50)
                                    .clipShape(Circle())
                            } placeholder: {
                                Circle()
                                    .scaledToFill()
                                    .frame(width: 55, height: 55)
                                    .clipShape(Circle())
                                    .overlay(Circle())
                            }

                            if user.isOnline {
                                Circle()
                                    .strokeBorder(.white)
                                    .background(Circle().fill(.green))
                                    .frame(width: 15, height: 15)
                                    .frame(width: 55, height: 55, alignment: .bottomTrailing)
                            }
                        }
                        .padding(.top, 5)
                        .padding(.leading, 5)
                    }
                }
            }
            .padding(.leading, 6)
        }
    }
}

struct StoryCart_Previews: PreviewProvider {
    static var previews: some View {
        StoryCart()
    }
}
