import SwiftUI

struct ChatScreen: View {
    var messages: [String] = ["!", "How are you", "What's up", "How You doing", "ok but how will I be able to look like a pro even though I am not even competent enough to sit in front of the computer", "You gotta Find out", "!", "How are you", "What's up", "How You doing", "ok but how will I be able to look like a pro even though I am not even competent enough to sit in front of the computer", "You gotta Find out"]
    
    var sections: [SectionModel] = [
        SectionModel(title: "16/12/2023", messages: ["Hello", "How are you"]),
        SectionModel(title: "yesterday", messages: ["What's up", "How You doing"]),
        SectionModel(title: "Today", messages: ["You gotta Find out", "Another message"])
    ]
    
    struct SectionModel: Identifiable {
        var id = UUID()
        var title: String
        var messages: [String]
    }
    @State private var isEven: Bool = true
    
    var body: some View {
        VStack {
            ChatNav()
            List {
                ForEach(sections) { section in
                    
                    Section(header: MessageDateHeader(text: section.title).padding(.vertical, -20) ) {
                        ForEach(section.messages, id: \.self) { message in
                            HStack {
                                MessageItem(message: message, isMe: true)
                                    .padding(.horizontal, -10) // Adjusted horizontal padding to 0
                                    .padding(.vertical, 0)   // Adjusted vertical padding to 0
                            }
                        }
                    }
                }
            }
            .onAppear {
                UITableView.appearance().separatorStyle = .none
                isEven.toggle()
            }
            .onDisappear {
                UITableView.appearance().separatorStyle = .singleLine
            }
            .listStyle(PlainListStyle())
        }
    }
}

struct ChatScreen_Previews: PreviewProvider {
    static var previews: some View {
        ChatScreen()
    }
}
