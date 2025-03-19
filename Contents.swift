import Cocoa

let playground = "Hello, playground"
var mutablePlayground = "Hello, mutable playground"

mutablePlayground += "!"

//let quote = "I wanted to \"say\":\n\(playground)"
let quote = #"I wanted to \"say\":\n\(playground)"# // raw string

print(quote)

for c: Character in mutablePlayground {
    print("'\(c)'")
}

let snowman = "\u{2603}"
print(snowman)

let aAcute = "\u{0061}\u{0301}"
print(aAcute)

for scalar in playground.unicodeScalars {
    print("\(scalar.value)")
}

let aACutePrecomposed = "\u{00E1}"
print(aACutePrecomposed)

let b = (aAcute == aACutePrecomposed)
print(b)

aAcute.count
aACutePrecomposed.count

let singleCharacter: Character = "a" // type annotation was required, otherwise it would create a string with count == 1

let start = playground.startIndex
let end = playground.index(start, offsetBy: 4)
let fifthCharacter = playground[end] // yields "o"

let range: ClosedRange<String.Index> = start...end // closed range
//let range: Range<String.Index> = start..<end // half-open range
let firstFiveChars = playground[range]

//let anotherRange: PartialRangeThrough<String.Index> = ...end // one-sided range
//let anotherRange: PartialRangeUpTo<String.Index> = ..<end // one-sided range
let anotherRange: PartialRangeFrom<String.Index> = end... // one-sided range
let otherChars = playground[anotherRange]

let empty = ""
var isEmpty = (empty.startIndex == empty.endIndex)
isEmpty = empty.isEmpty

var tale = """
    It was the best of times,
    it was the worst of times.
"""
print(tale)

tale = """
    It was the best of times,
    it was the worst of times.
    """
print(tale)
