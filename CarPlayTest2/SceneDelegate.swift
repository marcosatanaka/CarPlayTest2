import UIKit

class SceneDelegate: NSObject, UIWindowSceneDelegate, ObservableObject {

    @MainActor
    func windowScene(_ windowScene: UIWindowScene, performActionFor shortcutItem: UIApplicationShortcutItem) async -> Bool {
        // Do something with the shortcut...
        return true
    }

}
