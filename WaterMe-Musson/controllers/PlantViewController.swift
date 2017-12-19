//
//  PlantViewController.swift
//  WaterMe-Musson
//
//  Created by Hannah Musson on 10/30/17.
//  Copyright © 2017 Hannah Musson. All rights reserved.
//

import UIKit

class PlantViewController: UIViewController {

    var plant:Plant!
    
    
    @IBOutlet weak var plantInstruction: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = plant.name
        
        plantInstruction.text = "Water me every \(plant.wateringInterval) days!"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
