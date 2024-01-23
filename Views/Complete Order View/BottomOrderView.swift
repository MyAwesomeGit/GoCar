
import SwiftUI

struct BottomOrderView: View {
    @EnvironmentObject var order:OrderViewModel
    
    var body: some View {
        VStack {
            info
            map
            button
            Spacer()
        }.padding(.horizontal, 10)
    }
    
    var info: some View {
        HStack {
            HStack (spacing: 4) {
                Text("1")
                Text("car")
            }
            Spacer()
            
            HStack(spacing: 4) {
                Text("2")
                Text("hours")
            }
            Spacer()
            HStack(spacing: 4) {
                Text("$160")
            }
        }
        .padding(.horizontal, 15)
        .frame(height: 55)
        .frame(minWidth: 0, maxWidth: .infinity)
        .background(Color.clear)
        .cornerRadius(10)
    }
    
    var map: some View {
        ZStack(alignment: Alignment(horizontal: .center, vertical: .bottom)) {
            Image("sample-map")
                .resizable()
                .scaledToFit()
                .padding(.bottom, 30)
            
            HStack {
                Image(systemName: "clock")
                HStack(spacing: 4) {
                    Text("The car will arrive in")
                    Text("20 mins")
                }
                Spacer()
                Image("disclosure-indicator")
            }
            .frame(height: 40)
            .padding(.horizontal, 5)
            .background(Color.white)
            .cornerRadius(5)
            .offset(y: -35)
            .padding(.horizontal, 5)
        }
        .frame(maxWidth: 370)
    }
    
    var button: some View {
        Button(action: {self.order.isCancelOrderVisible.toggle() }) {
            Text("Cancel Order")
        }
        .frame(height: 55)
        .frame(minWidth: 0, maxWidth: .infinity)
        .background(Color.clear)
        .buttonStyle(PlainButtonStyle())
        .cornerRadius(10)
        .foregroundColor(.cardinal)
    }
    
}

struct BottomOrderView_Previews: PreviewProvider {
    static var previews: some View {
        BottomOrderView()
            .previewLayout(.fixed(width: 320, height: 400))
    }
}

