//
//  ViewController.swift
//  LoginApp
//
//  Created by m.korovin on 21.06.2023.
//

import UIKit





final class LoginViewController: UIViewController {
    
    
    @IBOutlet var userNameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    private var user = "Mike"
    private let password = "1234"
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let loginVC = segue.destination as? LoginViewController else { return }
        loginVC.user = user
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
        view.endEditing(true)
    }

    
    
//    @IBAction func logInPressed() {
//        guard userNameTextField.text == user, passwordTextField.text == password else {
//            showAlert(
//                title: "Invalid login or password",
//                message: "Please, enter correct login and password",
//                textField: passwordTextField
//            )
//            return
//        }
//        performSegue(withIdentifier: openWelcomeVC, sender: nil)
//    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        guard userNameTextField.text == user, passwordTextField.text == password else {
            showAlert(
                                title:"Invalid login or password",
                                message: "Please, try once again",
                                textField: passwordTextField
            )
            return false
        }
        return true
    }

    @IBAction func forgotRegisterData(_ sender: UIButton) {
        sender.tag == 0
        ? showAlert(title: "Oops!", message: "Your name is \(user)")
        : showAlert(title: "Oops", message: "Your password is \(password)")
    }
    
    
    @IBAction func unwindSegue(segue: UIStoryboardSegue) {
        userNameTextField.text = ""
        passwordTextField.text = ""
    }
    
    private func showAlert(title: String, message: String, textField: UITextField? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            textField?.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }

    
}

