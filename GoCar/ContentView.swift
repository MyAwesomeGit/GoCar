
import SwiftUI

struct ContentView: View {
    @EnvironmentObject var order:OrderViewModel
    
    var body: some View {
        ZStack {
            NavigationView {
                ScrollView(.vertical) {
                    VStack(spacing: 0) {
                        CarDetailView()
                            .frame(height: 600)
                        FormView()
                            .environmentObject(order)
                            .frame(height: 450)
                    }
                    .padding(.top, 40)
                }
                .hideNavigationBar()
            }
            CompleteOrderView()
                .environmentObject(order)
                .opacity(order.isOrderCompleteVisible ? 1 : 0)
                .animation(.default)
                .padding(.bottom, 20)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



