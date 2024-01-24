
import SwiftUI

struct VibrancyBackground: UIViewRepresentable {
    var style: UIBlurEffect.Style = .light
    
    func makeUIView(context: UIViewRepresentableContext<VibrancyBackground>) -> UIVisualEffectView {
        return UIVisualEffectView(effect: UIBlurEffect (style: style))
    }
    
    func updateUIView(_ uiView: UIVisualEffectView, context: Context) {
        uiView.effect = UIBlurEffect(style: style)
    }
}

