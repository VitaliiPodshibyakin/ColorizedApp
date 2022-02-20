//
//  MainViewController.swift
//  HW 2
//
//  Created by Виталий Подшибякин on 20.02.2022.
//  Copyright © 2022 Alexey Efimov. All rights reserved.
//

import UIKit

protocol SettingsViewControllerDelegate {
    func setColor(for viewBackgroundColor: UIColor)
}

class MainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let settingsVC = segue.destination as? SettingsViewController else {return}
        settingsVC.viewColor = view.backgroundColor
        settingsVC.delegate = self
    }
}

extension MainViewController: SettingsViewControllerDelegate {
    func setColor(for viewBackgroundColor: UIColor) {
        view.backgroundColor = viewBackgroundColor
    }
}
