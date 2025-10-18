
import UIKit

class CommonTabController: UIViewController {
    private lazy var commonLabel: UILabel = {
        let label = UILabel()
        label.text = "Общее"
        label.textColor = Color.purple
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 24, weight: .bold)

        return label
    }()

    private lazy var balanceLabel: UILabel = {
        let label = UILabel()
        label.text = "12 345"
        label.textColor = .black
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 18, weight: .semibold)

        return label
    }()

    private lazy var amountField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Сумма"
        textField.borderStyle = .roundedRect
        
        return textField
    }()

    private lazy var commentField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Комментарий"
        textField.borderStyle = .roundedRect
        
        return textField
    }()

    private lazy var addButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Добавить", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 18, weight: .semibold)
        button.layer.cornerRadius = 8
        button.setTitleColor(Color.black, for: .normal)
        button.backgroundColor = Color.green

        return button
    }()

    private lazy var transactionsTable: UITableView = {
        let table = UITableView(frame: .zero, style: .plain)
        table.dataSource = self
        table.delegate = self
        table.register(TransactionCell.self, forCellReuseIdentifier: "cell")
        table.separatorStyle = .none
        table.backgroundColor = .clear
        table.contentInset = UIEdgeInsets(top: 10, left: 0, bottom: 20, right: 0)

        return table
    }()

    private var mockData: [Transactions] = [
        Transactions(amount: "500 р", comment: "ЗП"),
        Transactions(amount: "300 р", comment: "ЗП"),
        Transactions(amount: "1105 р", comment: "ЗП"),
        Transactions(amount: "500 р", comment: "ЗП"),
        Transactions(amount: "500 р", comment: "ЗП"),
        Transactions(amount: "500 р", comment: "ЗП"),
    ]

    override func loadView() {
        super.loadView()

        let view = UIView()
        view.backgroundColor = .white
        self.view = view

        [commonLabel, balanceLabel, amountField, commentField, addButton, transactionsTable].forEach {
            view.addSubview($0)
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()

        let width = view.bounds.width
        let height = view.bounds.height
        let safeArea = view.safeAreaInsets.top / 2
        let fieldWidth = (width - 60) / 2

        commonLabel.frame = CGRect(x: 20, y: safeArea, width: width - 40, height: height * 0.05)
        balanceLabel.frame = CGRect(x: 20, y: commonLabel.frame.maxY, width: width - 40, height: height * 0.05)
        amountField.frame = CGRect(x: 20, y: balanceLabel.frame.maxY + 14, width: fieldWidth, height: height * 0.05)
        commentField.frame = CGRect(x: amountField.frame.maxX + 20, y: balanceLabel.frame.maxY + 14, width: fieldWidth, height: height * 0.05)
        addButton.frame = CGRect(x: 20, y: amountField.frame.maxY + 20, width: width - 40, height: height * 0.05)
        transactionsTable.frame = CGRect(x: 20, y: addButton.frame.maxY + 30, width: width - 40, height: view.bounds.height - addButton.frame.maxY)
    }
}

extension CommonTabController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        mockData.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TransactionCell
        let transaction = mockData[indexPath.row]
        cell.configure(with: transaction)

        return cell
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
}
