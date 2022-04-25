//
//  CustomTabController.swift
//  PrototypeCustomTabBar
//
//  Created by Garpepi Aotearoa on 25/04/22.
//

import UIKit

class CustomTabController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setupMiddleButton()
    }

    func setupMiddleButton() {
        let menuButton = UIButton(frame: CGRect(x: 0, y: 0, width: self.tabBar.frame.size.height, height: self.tabBar.frame.size.height))

        var menuButtonFrame = menuButton.frame
        menuButtonFrame.origin.y = 0
        menuButtonFrame.origin.x = self.tabBar.bounds.width/2 - menuButtonFrame.size.width/2
        menuButton.frame = menuButtonFrame

        menuButton.backgroundColor = UIColor.white
        menuButton.tintColor = UIColor.green
        menuButton.layer.cornerRadius = menuButtonFrame.height/2
        self.tabBar.addSubview(menuButton)

        menuButton.setImage(UIImage(systemName: "plus.circle.fill"), for: .normal)
        menuButton.contentMode = .scaleToFill
        menuButton.contentHorizontalAlignment = .fill
        menuButton.contentVerticalAlignment = .fill
        menuButton.addTarget(self, action: #selector(menuButtonAction(sender:)), for: .touchUpInside)

        view.layoutIfNeeded()
    }
    // MARK: - Actions

    @objc private func menuButtonAction(sender: UIButton) {
        selectedIndex = 2
    }

}
