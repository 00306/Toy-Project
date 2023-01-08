import SwiftUI

@main
struct MyApp: App {
    var body: some Scene {
        WindowGroup {
            SplashScreenView()
                .environmentObject(WeatherViewModel())
                .environmentObject(NetworkViewModel())
                .environmentObject(NewsKeywords())
                .environmentObject(EconomicCalendarViewModel())
                .environmentObject(NewsViewModel())
                .environmentObject(Scraping())
        }
        
    }
}
