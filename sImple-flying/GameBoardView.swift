//
//  GameBoardView.swift
//  sImple-flying
//
//  Created by taozhengyu on 2024/12/26.
//


import UIKit

class GameBoardView: UIView {

    var gameModel: GameModel!

    override func draw(_ rect: CGRect) {
        guard let context = UIGraphicsGetCurrentContext() else { return }

        // 绘制棋盘背景
        context.setFillColor(UIColor.lightGray.cgColor)
        context.fill(rect)

        // 绘制棋子
        for piece in gameModel.pieces {
            drawPiece(piece, in: context, rect: rect)
        }
    }

    private func drawPiece(_ piece: GamePiece, in context: CGContext, rect: CGRect) {
        let pieceSize: CGFloat = 20.0
        let position = getPosition(for: piece.position, in: rect)
        let pieceRect = CGRect(x: position.x, y: position.y, width: pieceSize, height: pieceSize)

        let color: UIColor = (piece.player == .red) ? .red : .blue
        context.setFillColor(color.cgColor)
        context.fillEllipse(in: pieceRect)
    }

    private func getPosition(for position: Int, in rect: CGRect) -> CGPoint {
        // 根据位置计算棋子的绘制位置
        // 这是一个简单的示例，可以根据实际需求进行调整
        let boardSize = min(rect.width, rect.height)
        let stepSize = boardSize / 10
        return CGPoint(x: CGFloat(position) * stepSize, y: CGFloat(position) * stepSize)
    }
}
