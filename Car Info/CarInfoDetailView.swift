
import SwiftUI

struct CarInfoDetailView: View {
    var body: some View {
        HStack {
            column1
            Spacer()
            column2
            Spacer()
            column3
        }.padding(.top, 15)
    }
    
    var column1: some View {
        VStack(alignment: .leading) {
            Text("Transmission")
                .foregroundColor(.gray)
            Text("Automatic")
        }
    }
    
    var column2: some View {
        VStack(alignment: .leading) {
            Text("Class")
                .foregroundColor(.gray)
            Text("Luxury")
        }
    }
    
    var column3: some View {
        VStack(alignment: .leading) {
            Text("Year")
                .foregroundColor(.gray)
            Text("2024")
        }
    }
}

struct CarInfoDetailView_Previews: PreviewProvider {
    static var previews: some View {
        CarInfoDetailView()
            .previewLayout(.fixed(width: 400, height: 100))
    }
}
