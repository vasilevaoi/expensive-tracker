//
//  LabelView.swift
//  ExpenseCalculator
//
//  Created by Алексей Кравцов on 11.10.2025.
//
import UIKit

final class LabelView: UIView {

    private var label = UILabel()

    init(config: LabelConfiguration) {
        super.init(frame: .zero)

        label.attributedText = config.attributedText
        label.textAlignment = config.textAlignment
        label.numberOfLines = config.numberOfLines

        addSubview(label)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        label.frame = bounds
    }
}
