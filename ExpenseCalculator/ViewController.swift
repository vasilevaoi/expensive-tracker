
import UIKit

class MainController: UIViewController {
    override func loadView() {
        super.loadView()
        let view = UIView()
        view.backgroundColor = .tintColor
        view.frame = CGRect(x: 0, y: 0, width: 100, height: view.frame.height)
        self.view = view

        let myLabel = UILabel()
        myLabel.text = "Hello, World!"
        myLabel.textColor = .red
        myLabel.textAlignment = .center

        let xCor = view.frame.origin.x
        let xCor2 = view.frame.size.width
        myLabel.frame = CGRect(x: (xCor + xCor2) / 2 - (myLabel.frame.origin.x + myLabel.frame.width) / 2, y: 50, width: 200, height: 50)

        view.addSubview(myLabel)

        let myButton = UIButton(type: .system)
        myButton.setTitle("Tap me", for: .normal)
//        myButton.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        myButton.frame = CGRect(x: 100, y: myLabel.frame.origin.y + myLabel.frame.height + 10, width: 200, height: 50)
        view.addSubview(myButton)

        let myUITextField = UITextField()
        myUITextField.placeholder = "Enter your name"
        myUITextField.backgroundColor = .white
        myUITextField.frame = CGRect(x: 100, y: 400, width: 200, height: 50)
        view.addSubview(myUITextField)
    }

//    override func viewDidLoad() {
//        super.viewDidLoad()
//        // Do any additional setup after loading the view.
//        print("ViewDidLoad вызван.")
//    }
}
