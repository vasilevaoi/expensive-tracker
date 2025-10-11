//
//  LabelConfiguration.swift
//  ExpenseCalculator
//
//  Created by Алексей Кравцов on 11.10.2025.
//

import UIKit

struct LabelConfiguration {
    let attributedText: NSAttributedString
    let textAlignment: NSTextAlignment
    let numberOfLines: Int

    init(text: String,
         font: UIFont = .systemFont(ofSize: 18),
         color: UIColor = .black,
         alignment: NSTextAlignment = .center,
         numberOfLines: Int = 1
    ) {
        self.attributedText = NSAttributedString(string: text, attributes: [.font: font, .foregroundColor: color])
        self.textAlignment = alignment
        self.numberOfLines = numberOfLines
    }
}
