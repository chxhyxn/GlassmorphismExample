//
//  GlassmorphismView.swift
//  GlassmorphismExample
//
//  Created by Sean Cho on 4/26/24.
//

import SwiftUI

struct GlassmorphismView: View {
    var body: some View {
        ZStack {
            // 배경 이미지
            Image("background")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
            
            // Glassmorphsim 효과를 적용할 뷰
            VStack {
                Text("Hello, World!")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                Text("Glassmorphism in SwiftUI")
                    .font(.title)
            }
            .padding()
            .background(VisualEffectBlur(blurStyle: .systemUltraThinMaterialLight))
            .cornerRadius(20)
            .padding()
        }
    }
}

// VisualEffectBlur은 UIKit의 UIVisualEffectView를 SwiftUI에서 사용할 수 있도록 만든 뷰입니다.
struct VisualEffectBlur: UIViewRepresentable {
    var blurStyle: UIBlurEffect.Style
    
    func makeUIView(context: Context) -> UIVisualEffectView {
        return UIVisualEffectView(effect: UIBlurEffect(style: blurStyle))
    }
    
    func updateUIView(_ uiView: UIVisualEffectView, context: Context) {
        uiView.effect = UIBlurEffect(style: blurStyle)
    }
}
