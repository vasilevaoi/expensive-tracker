//
//  TabBarController.swift
//  expense calculator ExpenseCalculator
//
//  Created by Olga Vasileva on 04.10.2025.
//

import UIKit
enum Tabs: Int {
    case main
    case settings
    case common
}

final class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        configureViewControllers()
    }

    private func configureViewControllers() {
        tabBar.barTintColor = .red
        tabBar.backgroundColor = .black
        tabBar.tintColor = .white

        let mainTabController = MainController()
        let settingsTabController = SettingsController()
        let commonTabController = CommonTabController()

        let mainTabNavController = UINavigationController(rootViewController: mainTabController)
        let settingsTabNavController = UINavigationController(rootViewController: settingsTabController)
        let commonTabNavController = UINavigationController(rootViewController: commonTabController)

        mainTabNavController.tabBarItem = UITabBarItem(title: "Главная", image: nil, tag: Tabs.main.rawValue)
        settingsTabNavController.tabBarItem = UITabBarItem(title: "Настройки", image: nil, tag: Tabs.settings.rawValue)
        commonTabNavController.tabBarItem = UITabBarItem(title: "Общее", image: nil, tag: Tabs.common.rawValue)

        setViewControllers([mainTabNavController,
                            settingsTabNavController,
                            commonTabNavController
                           ], animated: false)
    }
}
