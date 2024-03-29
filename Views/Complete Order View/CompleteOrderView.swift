
import SwiftUI

struct CompleteOrderView: View {
    @EnvironmentObject var order:OrderViewModel
    
    var body: some View {
        VStack {
            TopOrderView().padding(.top, 20)
            BottomOrderView()
        }
        .background(Color.white)
        .edgesIgnoringSafeArea(.all)
    }
    
}

struct CompleteOrderView_Previews: PreviewProvider {
    static var previews: some View {
        CompleteOrderView()
    }
}
