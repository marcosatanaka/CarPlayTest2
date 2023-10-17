import SwiftUI
import CarPlay

@main
struct CarPlayTest2App: App {

    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }

}
