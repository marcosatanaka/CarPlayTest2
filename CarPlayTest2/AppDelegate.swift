import UIKit

class AppDelegate: NSObject, UIApplicationDelegate {

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        UNUserNotificationCenter.current().getNotificationSettings { settings in
            print(settings.carPlaySetting.rawValue == 2 ? "supported" : settings.carPlaySetting.rawValue == 1 ? "disabled" : "unsupported")
        }

        UNUserNotificationCenter.current().requestAuthorization(options: [.carPlay, .sound, .alert, .badge]) { success, error in
            print(error?.localizedDescription ?? "no errors")
        }

        return true
    }

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        let configuration = UISceneConfiguration(name: nil, sessionRole: connectingSceneSession.role)
        if connectingSceneSession.role == .windowApplication {
            configuration.delegateClass = SceneDelegate.self
        }
        return configuration
    }

}
