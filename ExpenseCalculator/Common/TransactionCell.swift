//
//  TransactionCell.swift
//  ExpenseCalculator
//
//  Created by Алексей Кравцов on 18.10.2025.
//

import UIKit

final class TransactionCell: UITableViewCell {
    private lazy var amountLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .left
        label.font = .systemFont(ofSize: 18, weight: .bold)
        label.textColor = Color.white

        return label
    }()

    private lazy var commentLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .right
        label.font = .systemFont(ofSize: 16, weight: .regular)
        label.textColor = Color.white
        
        return label
    }()

    private lazy var cardView: UIView = {
        let view = UIView()
        view.layer.cornerRadius = 12
        view.layer.masksToBounds = true
        view.backgroundColor = Color.black

        return view
    }()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        backgroundColor = .clear

        contentView.addSubview(cardView)
        cardView.addSubview(amountLabel)
        cardView.addSubview(commentLabel)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func configure(with transaction: Transactions) {
        amountLabel.text = transaction.amount
        commentLabel.text = transaction.comment
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        
        cardView.frame = CGRect(
            x: 12,
            y: 8,
            width: contentView.bounds.width - 20,
            height: contentView.bounds.height - 8
        )

        amountLabel.frame = CGRect(x: 16, y: 16, width: cardView.bounds.width - 32, height: 24)
        commentLabel.frame = CGRect(x: 16, y: 16, width: cardView.bounds.width - 32, height: 24)
    }
}
