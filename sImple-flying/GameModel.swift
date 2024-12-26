//
//  GameModel.swift
//  sImple-flying
//
//  Created by taozhengyu on 2024/12/26.
//

import Foundation


enum Player{
    case red,blue
}

struct GamePiece {
    var position: Int
    var player: Player
}

class GameModel {
    var pieces: [GamePiece] = []
    var currentPlayer: Player = .red

    init() {
        // 初始化游戏棋子的起始位置
        for player in [Player.red, Player.blue] {
            for _ in 0..<2 {
                pieces.append(GamePiece(position: 0, player: player))
            }
        }
    }

    func rollDice() -> Int {
        return Int.random(in: 1...6)
    }

    func movePiece(piece: GamePiece, steps: Int) {
        // 移动棋子逻辑
        // 这里只是一个简单示例，可以根据实际需求进行扩展
        var newPiece = piece
        newPiece.position += steps
        if let index = pieces.firstIndex(where: { $0.position == piece.position && $0.player == piece.player }) {
            pieces[index] = newPiece
        }
    }
    
    func switchPlayer() {
           // 切换当前玩家
           currentPlayer = (currentPlayer == .red) ? .blue : .red
       }
    
    
}
