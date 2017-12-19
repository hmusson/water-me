//
//  AddPlantViewController.swift
//  WaterMe-Musson
//
//  Created by Hannah Musson on 10/30/17.
//  Copyright © 2017 Hannah Musson. All rights reserved.
//

import UIKit

protocol PlantSaver {
    func savePlant(plant:Plant)
}

class AddPlantViewController: UIViewController {
    
    var delegate:PlantSaver!
    
    @IBOutlet weak var newPlantName: UITextField!
    @IBOutlet weak var newPlantInterval: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    
    @IBAction func saveButtonTapped(_ sender: Any) {
        let newPlant = Plant(name: newPlantName.text!, wateringInterval: Int(newPlantInterval.text!)!)
        delegate.savePlant(plant: newPlant)
        navigationController?.popViewController(animated: true)
    }
    
}
