//
//  ViewController.swift
//  userdefaults
//
//  Created by 持田ゆうり on 2023/06/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var fruitstextfield: UITextField!
    @IBOutlet var vegetabletextfield: UITextField!
    @IBOutlet var saveButton: UIButton!
    
    var userdefaults = UserDefaults.standard

    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadDate()
       
    }
    
    @IBAction func saveButtonTapped(_ sender: Any) {
        if let fruits = fruitstextfield.text, let vegetables = vegetabletextfield.text {
            userdefaults.set(fruits, forKey: "fruits")
            userdefaults.set(vegetables, forKey: "vegetables")
            print("Fruits: \(fruits)")
            print("Vegetables: \(vegetables)")
           
        }
    }
    
    func loadDate() {
        if let fruits = userdefaults.string(forKey: "fruits") {
            fruitstextfield.text = fruits
            print("Fruits: \(fruits)")
        }
        if let vegetables = userdefaults.string(forKey: "vegetables") {
            vegetabletextfield.text = vegetables
            print("Vegetables: \(vegetables)")
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        loadDate()
    }

}

