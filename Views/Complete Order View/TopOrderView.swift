
import SwiftUI

struct TopOrderView: View {
    @EnvironmentObject var order:OrderViewModel
    
    var body: some View {
        VStack {
            closeBtn
            carInfo
        }
        .padding(.horizontal, 10)
    }
    
    var closeBtn: some View {
        Group {
            HStack {
                Button(action: {
                    self.order.isOrderCompleteVisible.toggle() }) {
                        Image("close-btn")
                }
                Spacer()
            }
            .buttonStyle(PlainButtonStyle())
            
            Text("Order completed")
        }
    }
    
    var carInfo: some View {
        VStack(spacing: 0) {
            HStack {
                Spacer()
                Image(systemName: "info.circle")
                    .font(.system(size: 28))
                    .offset(x: -30)
            }
            ZStack {
                Image("car-bg-shape")
                Image("tesla-s")
                    .resizable()
                    .frame(width: 268, height: 125)
            }
            Text("Tesla Model S")
                .padding(.top, 30)
        }
    }
}

struct TopOrderView_Previews: PreviewProvider {
    static var previews: some View {
        TopOrderView()
    }
}
