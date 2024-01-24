
import SwiftUI

struct CancelOrderView: View {

    @EnvironmentObject var order:OrderViewModel

    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color.clear)
                .background(VibrancyBackground())
                .edgesIgnoringSafeArea(.all)

            ZStack {
                Rectangle()
                    .frame(minWidth: 0, maxWidth: .infinity)
                    .frame(height: 190)
                    .background(Color.black)
                    .cornerRadius(10)
                    .opacity(0.2)
                    .blur(radius: 10)

                CancelOrderDialog()
            }
            .padding(.horizontal, 10)
            .animation(.default)
        }
        .onAppear {
            self.order.isModalVisible = true
        }.onTapGesture {
            self.order.isCancelOrderVisible.toggle()
            self.order.isModalVisible.toggle()
        }
    }
}

struct CancelOrderView_Previews: PreviewProvider {
    static var previews: some View {
        CancelOrderView().environmentObject(OrderViewModel())
    }
}
