//
//  FirstVC.swift
//  CatApp
//
//  Created by Azat IOS on 28.11.2017.
//  Copyright © 2017 Azat IOS. All rights reserved.
//

import UIKit

class FirstVC: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var infoLabel: UILabel!
    @IBOutlet weak var textFieldAge: UITextField!

    // global var
    var stringAlert = String()

    override func viewDidLoad() {
        super.viewDidLoad()



        // some properties
        textFieldAge.delegate = self
        textFieldAge.keyboardType = .numberPad
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
        textFieldAge.resignFirstResponder()
    }

    fileprivate func solvingAgeOfCat() {
        let numberFieldInput = textFieldAge.text
        if numberFieldInput == String(1) {
            stringAlert = "Your cat is 15 years old"
        } else if numberFieldInput == String(2) {
            stringAlert = "Your cat is 24 years old"
        } else if numberFieldInput == String(3) {
            stringAlert = "Your cat is 28 years old"
        } else if numberFieldInput == String(4) {
            stringAlert = "Your cat is 32 years old"
        } else if numberFieldInput == String(5) {
            stringAlert = "Your cat is 36 years old"
        } else if numberFieldInput == String(6) {
            stringAlert = "Your cat is 40 years old"
        } else if numberFieldInput == String(7) {
            stringAlert = "Your cat is 44 years old"
        } else if numberFieldInput == String(8) {
            stringAlert = "Your cat is 48 years old"
        } else if numberFieldInput == String(9) {
            stringAlert = "Your cat is 52 years old"
        } else if numberFieldInput == String(10) {
            stringAlert = "Your cat is 56 years old"
        } else if numberFieldInput == String(11) {
            stringAlert = "Your cat is 60 years old"
        } else if numberFieldInput == String(12) {
            stringAlert = "Your cat is 64 years old"
        } else if numberFieldInput == String(13) {
            stringAlert = "Your cat is 68 years old"
        } else if numberFieldInput == String(14) {
            stringAlert = "Your cat is 72 years old"
        } else if numberFieldInput == String(15) {
            stringAlert = "Your cat is 76 years old"
        } else if numberFieldInput == String(16) {
            stringAlert = "Your cat is 80 years old"
        } else if numberFieldInput == String(0) {
            stringAlert = "Your cat has not born yet!"
        } else if  numberFieldInput == String() {
            stringAlert = "Please enter the number"
        } else {
            stringAlert = "Your cat is phenomenal!"
        }
    }

    @IBAction func checkAgeBtn(_ sender: UIButton) {
        solvingAgeOfCat()
        textFieldAge.resignFirstResponder()

        // Alert Action Controller
        let alert = UIAlertController(title: nil, message: stringAlert, preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .cancel, handler: nil)

        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
}
