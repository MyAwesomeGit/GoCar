
import SwiftUI

struct CancelOrderDialog: View {
    @EnvironmentObject var order:OrderViewModel
    
    var body: some View {
        VStack(spacing: 20) {
            cancelOrderInfo
            HStack {
                noKeepItBtn
                Spacer()
                yesCancelBtn
            }
        }
        .padding(.horizontal, 10)
        .frame(minWidth: 0, maxWidth: .infinity)
        .frame(height: 190)
        .background(Color.white)
        .cornerRadius(10)
    }
    
    var cancelOrderInfo: some View {
        HStack {
            VStack(alignment: .leading, spacing: -10) {
                Text("Cancel order?")
                    .font(.title).bold()
                Text("You'll return to the car details")
                    .font(.callout)
            }
            Spacer()
        }
    }
    
    var yesCancelBtn: some View {
        Button(action: {
            self.order.isCancelOrderVisible.toggle()
            self.order.isModalVisible.toggle()
        }) {
            Text("Yes, cancel")
        }
        .buttonStyle(PlainButtonStyle())
        .background(Color.cardinal)
        .cornerRadius(8)
        .foregroundColor(.white)
    }
    
    var noKeepItBtn: some View {
        Button(action: {
            self.order.isCancelOrderVisible.toggle()
            self.order.isModalVisible.toggle()
        }) {
            Text("No, keep it")
        }
        .buttonStyle(PlainButtonStyle())
        .background(Color.green)
        .cornerRadius(8)
        .foregroundColor(.white)
    }
}

struct CCancelOrderDialog_Previews: PreviewProvider {
    static var previews: some View {
        CancelOrderDialog()
    }
}
