import SwiftUI

@main
struct MyApp: App {
    var body: some Scene {
        WindowGroup {
            SplashView()
                .environmentObject(WeatherViewModel())
                .environmentObject(NetworkViewModel())
                .environmentObject(NewsKeywords())
                .environmentObject(DateViewModel())
                .environmentObject(NewsViewModel())
        }
        
    }
}
