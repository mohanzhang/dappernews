i = Item.create(title: "Video of cat doing things cats actually do, like sit around",
                url: "http://example.com/cats",
                username: "mohanzhang")

c = i.comments.create(username: "mr_t",
                      content: "This was really funny")
