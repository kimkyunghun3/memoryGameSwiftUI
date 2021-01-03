//
//  MemoryGame.swift
//  Memorize
//
//  Created by Kyunghun Kim on 2021/01/03.
//

struct MemoryGame<CardContent> {
    var cards: Array<Card>

    func choose(card: Card) {
        print("card chosen: \(card)")
    }

    init(numberOFPairsOfCards: Int, cardContentFacrtory: (Int) -> CardContent){
            cards = Array<Card>()
            for pairIndex in 0..<numberOFPairsOfCards {
                let content = cardContentFacrtory(pairIndex)
                cards.append(Card(isFaceUp: false, isMatched: false, content: content))
                cards.append(Card(isFaceUp: false, isMatched: false, content: content))
            }
        }
    
    struct Card {
        var isFaceUp: Bool
        var isMatched: Bool
        var content: CardContent
    }
}
