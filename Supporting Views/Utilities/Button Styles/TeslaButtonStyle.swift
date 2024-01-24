
import SwiftUI

struct TeslaButtonStyle: ButtonStyle {

    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .frame(height: 64)
            .frame(minWidth: 0, maxWidth: .infinity)
            .padding(.horizontal, 20)
//            .buttonStyle(PlainButtonStyle())
    }
}
