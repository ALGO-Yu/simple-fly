//
//  ContentView.swift
//  sImple-flying
//
//  Created by taozhengyu on 2024/12/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("飞行棋")
                .font(.largeTitle)
                .padding()
            
            // 使用导入的棋盘图片
            Image("chessboard")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding()
            
            // 使用导入的棋子图片
            HStack {
                Image("red")
                    .resizable()
                    .frame(width: 50, height: 50)
                
                Image("blue")
                    .resizable()
                    .frame(width: 50, height: 50)
            }
            
            Spacer()
            
            // 掷骰子按钮
            Button(action: {
                // 处理掷骰子逻辑
                
            }) {
                Text("掷骰子")
                    .font(.title)
                    .padding()
                    .background(Color.pink)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            
            Spacer()
        }
    }
}
