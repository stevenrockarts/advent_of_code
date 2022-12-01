import UIKit


let fileURL = Bundle.main.url(forResource: "input", withExtension: "txt")
let content = try String(contentsOf: fileURL!, encoding: String.Encoding.utf8)


let lines = content
    .components(separatedBy: "\n\n").map { line in
        line
            .split(separator: "\n")
            .map { Int($0)! }
            .reduce(0, +)
    }

print(lines.max()!.description)
print(lines.firstIndex(of: lines.max()!)!.description)

let top3 = lines.sorted(by: >)[..<3].reduce(0, +)
print(top3)
