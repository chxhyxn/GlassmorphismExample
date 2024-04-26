//
//  ContentView.swift
//  GlassmorphismExample
//
//  Created by Sean Cho on 4/26/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            ZStack {
                // 배경 이미지 먼저 적용
                Image("switz")
                    .resizable()  // 이미지가 뷰의 크기에 맞게 조절되도록 설정
                    .scaledToFill()  // 콘텐츠 비율을 유지하면서 뷰를 채움
                    .edgesIgnoringSafeArea(.all)  // 안전 영역을 무시하고 화면 전체에 이미지를 표시
                
                // Glassmorphism 효과 뷰
                GlassmorphismView()
            }
        }
    }
}
