//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Kyunghun Kim on 2021/01/03.
//

//viewModel
import SwiftUI

class EmojiMemoryGame: ObservableObject {
    @Published private var model: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
    
    private static func createMemoryGame() -> MemoryGame<String> {
        let emojis = ["👻","🎃","🕷"]
        return MemoryGame<String>(numberOFPairsOfCards: emojis.count) { pairIndex in
            return emojis[pairIndex]
            
            
        }//Int 타입과 반환하는 타입이 String인 것도 생략할 수 있따. 이미 MemoryGame에 선언했으므로
        //model call할 때 사용한다, emoji가 String이므로 String으로 선언
    }
    
    
    
    // MARK: - Access to the Model
    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }
        

    
    
    // MARK: - Intent(s)
    func choose(card:MemoryGame<String>.Card){
//        objectWillChange.send() //세계로 publish된다. 어떤 것이 변할 때마다 이걸 호출하면 된다. 언제든지! -> 이거대신 @Publishedq를 사용하여 번거로움을 줄인다
        model.choose(card: card)    //Model에 Card를 선택하라고 ask한다
    }
    func resetGame() {
        model = EmojiMemoryGame.createMemoryGame()
    }
}
