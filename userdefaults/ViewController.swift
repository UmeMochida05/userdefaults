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
        
        loadSavedDate()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        loadSavedDate()
    }
    
    func loadSavedDate() {
        if let savedFruits = userdefaults.string(forKey: "fruits") {
            fruitstextfield.text = savedFruits
            print("Fruits: \(savedFruits)")
        }
        
        if let savedVegetables = userdefaults.string(forKey: "vegetables") {
            vegetabletextfield.text = savedVegetables
            print("Vegetables: \(savedVegetables)")
        }
    }
    
    @IBAction func saveButtonTapped(_ sender: Any) {
        if let fruits = fruitstextfield.text, let vegetables = vegetabletextfield.text {
            UserDefaults.standard.set(fruits, forKey: "fruits")
            UserDefaults.standard.set(vegetables, forKey: "vegetables")
            print("Fruits: \(fruits)")
            print("Vegetables: \(vegetables)")
           
        }
    }
    
   

}

