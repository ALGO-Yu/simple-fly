//
//  GameViewController.swift
//  sImple-flying
//
//  Created by taozhengyu on 2024/12/26.
//

import UIKit

class GameViewController: UIViewController {
    var gameModel = GameModel()

    @IBOutlet weak var diceLabel: UILabel!
    @IBOutlet weak var boardView: GameBoardView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // 初始化游戏模型
        boardView.gameModel = gameModel
    }

    @IBAction func rollDice(_ sender: UIButton) {
        let diceValue = gameModel.rollDice()
        diceLabel.text = "Dice: \(diceValue)"

        // 移动当前玩家的棋子
        if let currentPiece = gameModel.pieces.first(where: { $0.player == gameModel.currentPlayer }) {
            gameModel.movePiece(piece: currentPiece, steps: diceValue)
        }

        // 重新绘制棋盘视图
        boardView.setNeedsDisplay()

        // 切换到下一个玩家
        gameModel.switchPlayer()
    }
}
