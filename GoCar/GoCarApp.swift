
import SwiftUI

@main
struct GoCarApp: App {
    @StateObject private var order = OrderViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(order)
        }
    }
}
