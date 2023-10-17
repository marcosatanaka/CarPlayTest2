import UIKit
import CarPlay

class TemplateApplicationSceneDelegate: NSObject {

    var interfaceController: CPInterfaceController?

}

// MARK: CPTemplateApplicationSceneDelegate

extension TemplateApplicationSceneDelegate: CPTemplateApplicationSceneDelegate {

    func templateApplicationScene(_ templateApplicationScene: CPTemplateApplicationScene, didConnect interfaceController: CPInterfaceController) {
        self.interfaceController = interfaceController

        let carPlayUI = CPListTemplate(title: "TEST", sections: [])

        interfaceController.setRootTemplate(carPlayUI, animated: true) { success, error in
            // optional completion handler once CarPlay UI is displayed
        }
    }

    func templateApplicationScene(_ templateApplicationScene: CPTemplateApplicationScene,
                                  didDisconnectInterfaceController interfaceController: CPInterfaceController) {
        self.interfaceController = nil
    }
}
