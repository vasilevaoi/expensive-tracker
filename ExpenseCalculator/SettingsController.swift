
import UIKit

class SettingsController: UIViewController {
    override func loadView() {
        super.loadView()
        let view = UIView()
        view.backgroundColor = .green
        view.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: view.frame.height)
        self.view = view

        let myLabel = UILabel()
        myLabel.text = "Настройки"
        myLabel.textColor = .purple
        myLabel.textAlignment = .center

        let xCor = view.frame.origin.x
        let xCor2 = view.frame.size.width
        myLabel.frame = CGRect(x: (xCor + xCor2) / 2 - (myLabel.frame.origin.x + myLabel.frame.width) / 2, y: 50, width: 200, height: 50)

        view.addSubview(myLabel)
    }
}
