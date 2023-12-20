import SwiftUI

struct ChatScreen: View {
    @State var message: String =  ""
    @State private var selectedTab: Tab = .person
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
            HStack(alignment: .center){
                HStack(alignment: .bottom, spacing: 8){
                    Image(systemName:"theatermasks.circle").font(.title)
                    TextField("Message", text: $message).padding(.bottom, 5)
                    Image(systemName: "paperclip").font(.title3).padding(.bottom, 2)
                    Image(systemName: "camera").font(.title3).padding(.bottom, 5)
                }
                .padding(10)
                .overlay(content: {
                    RoundedRectangle(cornerRadius: 30).stroke()
                })
                Button {
                    print("send Pressed")
                } label: {
                    ZStack{
                        Image(systemName: message.isEmpty ? "mic.fill" : "paperplane.fill").padding(12).foregroundColor(.white).font(.title3)
                    }.background(.primary).clipped().clipShape(Circle())
                }

            }.padding(.horizontal, 10)
        }.navigationBarHidden(true)
    }
}

struct ChatScreen_Previews: PreviewProvider {
    static var previews: some View {
        ChatScreen()
    }
}
