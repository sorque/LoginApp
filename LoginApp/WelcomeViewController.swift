//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by m.korovin on 06.07.2023.
//

import UIKit

final class WelcomeViewController: UIViewController {
    
    
    @IBOutlet var welcomeLabel: UILabel!
    
    
    var user = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLabel.text = "Welcome, \(user)!"
    }


}
