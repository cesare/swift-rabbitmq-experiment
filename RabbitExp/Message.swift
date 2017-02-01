import Foundation
import Unbox

struct Message {
    let title: String
    let text: String
}

extension Message: Unboxable {
    init(unboxer: Unboxer) throws {
        self.title = try unboxer.unbox(key: "title")
        self.text = try unboxer.unbox(key: "text")
    }

    static func parse(data: Data) throws -> Message {
        let message: Message = try unbox(data: data)
        return message
    }
}
