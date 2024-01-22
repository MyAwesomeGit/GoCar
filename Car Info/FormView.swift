
import SwiftUI
import Combine

struct FormView: View {
    @EnvironmentObject var order: OrderViewModel
    
    init() {
    }
    
    var body: some View {
        VStack {
            Form {
                rentalPeriod
                numberOfCars
                pickupTime
                location
                drivers
                orderComplete
            }
        }.frame(minWidth: 0, maxWidth: .infinity)
    }
    
    var rentalPeriod: some View {
        Section {
            Picker(selection: $order.prototypeAmt, label: Text("Rental period")) {
                ForEach (0 ..< order.prototypeArray.count, id: \.self) { value in
                    Text("\(self.order.prototypeArray[value])")
                        .tag(value)
                }
            }
        }.listRowBackground(Color.gray)
    }
    
    var numberOfCars: some View {
        Section {
            Picker(selection: $order.prototypeAmt, label: Text("Number of cars")) {
                ForEach (0 ..< order.prototypeArray.count, id: \.self) {
                    value in
                    Text("\(self.order.prototypeArray[value])")
                        .tag(value)
                }
            }
        }.listRowBackground(Color.gray)
    }
    
    var pickupTime: some View {
        Section {
            Picker(selection: $order.prototypeAmt, label: Text("Pick-up time")) {
                ForEach (0 ..< order.prototypeArray.count, id: \.self) {
                    value in
                    Text("In \(self.order.prototypeArray[value]) mins")
                        .tag(value)
                }
            }
        }.listRowBackground(Color.gray)
    }
    
    var location: some View {
        Section {
            Picker (selection: $order.prototypeAmt, label: Text("Pick-up location")) {
                ForEach (0 ..< order.prototypeArray.count, id: \.self) {
                    value in
                    Text("\(self.order.prototypeArray[value])")
                        .tag(value)
                }
            }
            Picker(selection: $order.prototypeAmt, label: Text("Return location")) {
                ForEach (0 ..< order.prototypeArray.count, id: \.self) {
                    value in
                    Text("\(self.order.prototypeArray[value])")
                        .tag(value)
                }
            }
        }.listRowBackground(Color.gray)
    }
    
    var drivers: some View {
        Section {
            Toggle(isOn: $order.prototypeBoolean) {
                Text("Drivers")
            }.toggleStyle(SwitchToggleStyle(tint: .green))
        }.listRowBackground(Color.gray)
    }
    
    var orderComplete: some View {
        Group {
            Section {
                HStack (alignment: .center) {
                    Spacer()
                    Text("$160")
                    Spacer()
                }
            }
            Section {
                Button (action: {
                    self.order.isOrderCompleteVisible.toggle()
                }) {
                    Text("Complete order")
                }
                .frame(minWidth: 0, maxWidth: .infinity)
                .frame(height: 60)
                .foregroundColor(.white)
                .background(Color.green)
                .cornerRadius(10)
            }
        }
    }
}

struct FormView_Previews: PreviewProvider {
    static var previews: some View {
        FormView()
    }
}

