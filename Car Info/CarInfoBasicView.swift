
import SwiftUI

struct CarInfoBasicView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 0)
        {
            HStack {
                Text("Tesla Model S")
                Spacer()
                Image(systemName: "info.circle")
                    .font(.system(size: 28))
                    .offset(y: -2)
            }
            VStack(alignment: .leading, spacing: 4) {
                Text("$80/hr")
                    .foregroundColor(.gray)
                HStack {
                    ForEach(0..<5) { _ in
                        Image(systemName: "star.fill")
                            .font(.system(size: 15))
                    }
                }
            }
        }
    }
}

struct CarInfoBasicView_Previews: PreviewProvider {
    static var previews: some View {
        CarInfoBasicView()
            .previewLayout(.fixed(width: 400, height: 100))
    }
}
