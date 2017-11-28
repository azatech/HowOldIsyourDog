//
//  SecondVC.swift
//  CatApp
//
//  Created by Azat IOS on 27.11.2017.
//  Copyright © 2017 Azat IOS. All rights reserved.
//

import UIKit
import Foundation

class SecondVC: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var infoLabel: UILabel!
    @IBOutlet weak var textFieldLabel: UITextField!


    var stringAlert = String()

    override func viewDidLoad() {
        super.viewDidLoad()

        // some properties
        textFieldLabel.delegate = self
        textFieldLabel.keyboardType = .numberPad
    }

    // textField allow numbers only
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool
    {
        let allowedCharacters = CharacterSet.decimalDigits
        let characterSet = CharacterSet(charactersIn: string)
        return allowedCharacters.isSuperset(of: characterSet)
    }

    // method reisigns first responder
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }

    // a method that helps to resign first Responder
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        textFieldLabel.resignFirstResponder() 
    }

    fileprivate func solvingAgeOfDog() {
        let numberFieldInput = textFieldLabel.text
        if numberFieldInput == String(1) {
            stringAlert = "Your dog is 14 years old"
        } else if numberFieldInput == String(2) {
            stringAlert = "Your dog is 24 years old"
        } else if numberFieldInput == String(3) {
            stringAlert = "Your dog is 30 years old"
        } else if numberFieldInput == String(4) {
            stringAlert = "Your dog is 36 years old"
        } else if numberFieldInput == String(5) {
            stringAlert = "Your dog is 40 years old"
        } else if numberFieldInput == String(6) {
            stringAlert = "Your dog is 42 years old"
        } else if numberFieldInput == String(7) {
            stringAlert = "Your dog is 49 years old"
        } else if numberFieldInput == String(8) {
            stringAlert = "Your dog is 56 years old"
        } else if numberFieldInput == String(9) {
            stringAlert = "Your dog is 63 years old"
        } else if numberFieldInput == String(10) {
            stringAlert = "Your dog is 65 years old"
        } else if numberFieldInput == String(11) {
            stringAlert = "Your dog is 71 years old"
        } else if numberFieldInput == String(12) {
            stringAlert = "Your dog is 75 years old"
        } else if numberFieldInput == String(13) {
            stringAlert = "Your dog is 80 years old"
        } else if numberFieldInput == String(14) {
            stringAlert = "Your dog is 84 years old"
        } else if numberFieldInput == String(15) {
            stringAlert = "Your dog is 87 years old"
        } else if numberFieldInput == String(16) {
            stringAlert = "Your dog is 89 years old"
        } else if numberFieldInput == String(0) {
            stringAlert = "Your dog has not born yet!"
        } else if  numberFieldInput == String() {
            stringAlert = "Please enter the number"
        } else {
            stringAlert = "Your dog is phenomenal!"
        }
    }

    @IBAction func getAgeButton(_ sender: UIButton) {
        solvingAgeOfDog()
        textFieldLabel.resignFirstResponder()

        // Alert Action Controller
        let alert = UIAlertController(title: nil, message: stringAlert, preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .cancel, handler: nil)

        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
}


