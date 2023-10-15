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

// MARK: - AppDelegate

//@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        return true
    }

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        if (connectingSceneSession.role == UISceneSession.Role.carTemplateApplication) {
            let scene =  UISceneConfiguration(name: "CarPlay Configuration", sessionRole: connectingSceneSession.role)
            scene.delegateClass = CarPlaySceneDelegate.self
            return scene
        } else {
            return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
        }
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
    }

}

// MARK: - SceneDelegate

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        print(scene.debugDescription)
        print(session.debugDescription)
        print(connectionOptions.debugDescription)

        // Create the SwiftUI view that provides the window contents.
        let contentView = ContentView()

        // Use a UIHostingController as window root view controller.
        if let windowScene = scene as? UIWindowScene {
            let window = UIWindow(windowScene: windowScene)
            window.rootViewController = UIHostingController(rootView: contentView)
            self.window = window
            window.makeKeyAndVisible()
        }

    }

    func sceneDidDisconnect(_ scene: UIScene) {
        print(scene.debugDescription)
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        print(scene.debugDescription)
    }

}
