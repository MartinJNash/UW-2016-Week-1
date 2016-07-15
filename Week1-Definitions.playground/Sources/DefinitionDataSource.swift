import Foundation

private let dogEntry = DictionaryEntry(
    word: "Dog",
    pronunciations: [
        Pronunciation(ipa: "da:g", notes: nil)
    ],
    definitions:[
        Definition(partOfSpeech: "n", explanation: "An animal that barks.", example: nil),
        Definition(partOfSpeech: "v. t.", explanation: "follow (someone or their movements) closely and persistently.", example: "The paparazzi are known for dogging celebrities")
    ]
)

private let waterEntry = DictionaryEntry(
    word: "Water",
    pronunciations: [
        Pronunciation(ipa: "wa:tr", notes: nil),
        Pronunciation(ipa: "wa:da", notes: "Primarily in the northeast of America")
    ],
    definitions:[
        Definition(partOfSpeech: "n", explanation: "A liquid composed of hydrogen and oxygen.", example: nil),
        Definition(partOfSpeech: "v. t.", explanation: "To give liquid to someone or something.", example: "I watered the flowers before leaving for work.")
    ]
)



public struct DefinitionDataSource {
    
    public static var entries: [DictionaryEntry] {
        return [dogEntry, waterEntry]
    }
    
}

