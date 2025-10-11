
import UIKit

class CommonTabController: UIViewController {
    private lazy var commonLabel: LabelView = {
        let config = LabelConfiguration(
            text: "Общее",
            font: .boldSystemFont(ofSize: 24),
            color: Color.purple
        )
        return LabelView(config: config)
    }()

    private lazy var balanceLabel: LabelView = {
        let config = LabelConfiguration(
            text: "12 345",
        )
        return LabelView(config: config)
    }()

    override func loadView() {
        super.loadView()

        let view = UIView()
        view.backgroundColor = .white
        self.view = view

        view.addSubview(commonLabel)
        view.addSubview(balanceLabel)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()

        let width = view.bounds.width
        let height = view.bounds.height
        let safeArea = view.safeAreaInsets.top / 2

        commonLabel.frame = CGRect(x: 20, y: safeArea, width: width - 40, height: height * 0.05)
        balanceLabel.frame = CGRect(x: 20, y: commonLabel.frame.maxY, width: width - 40, height: height * 0.05)
    }
}
