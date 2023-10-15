import Foundation
import CarPlay

class CarPlaySceneDelegate: UIResponder, CPTemplateApplicationSceneDelegate {

    var interfaceController: CPInterfaceController?

    func templateApplicationScene(_ templateApplicationScene: CPTemplateApplicationScene,
                                  didConnect interfaceController: CPInterfaceController) {
        self.interfaceController = interfaceController

        let carPlayUI = CPListTemplate(title: "TEST", sections: [])

        interfaceController.setRootTemplate(carPlayUI, animated: true) { success, error in
            // optional completion handler once CarPlay UI is displayed
        }
    }

    func templateApplicationScene(_ templateApplicationScene: CPTemplateApplicationScene,
                                  didDisconnect interfaceController: CPInterfaceController,
                                  from window: CPWindow) {
        self.interfaceController = nil
    }
}
