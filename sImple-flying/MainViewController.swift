//
//  ViewController.swift
//  sImple-flying
//
//  Created by taozhengyu on 2024/12/26.
//

import UIKit

class MainViewController: UIViewController {
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
        gameModel.movePiece(piece: gameModel.pieces[0], steps: diceValue) // 示例

        //UIKit 中的一种方法，用于通知系统需要重新绘制视图
        boardView.setNeedsDisplay()

        // 切换到下一个玩家
        gameModel.switchPlayer()
    }
}
