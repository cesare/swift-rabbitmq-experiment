import Argo
import Curry
import Runes

struct Message {
    let title: String
    let text: String
}

extension Message: Decodable {
    static func decode(_ json: JSON) -> Decoded<Message> {
        return curry(Message.init)
            <^> json <| "title"
            <*> json <| "text"
    }
}
