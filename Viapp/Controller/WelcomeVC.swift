//
//  ViewController.swift
//  Viapp
//
//  Created by Álvaro Romero Limón on 15/10/2018.
//  Copyright © 2018 Álvaro Romero Limón. All rights reserved.
//

import UIKit

class WelcomeVC: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    var location: Location!
    @IBOutlet weak var locationLbl: UILabel!
    @IBOutlet weak var locationPicker: UIPickerView!
    @IBOutlet weak var siguienteBtn: UIButton!
    
    
    let locations = ["Alquézar", "Bardujo", "Betanzos", "Calatañazor", "Crevillente", "Deià", "Hervás", "Gata", "La Alberca", "Mirambel", "Ochagavía", "Plasencia", "Trujillo", "Valencia de Alcántara", "Zafra"]
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return locations[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return locations.count
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        locationLbl.text = locations[row]
        location.pueblo = locations[row]
    }
    
 
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.setGradientColor(colorOne: Colors.colorCinco, colorTwo: Colors.colorSeis)
        
        location = Location()
        
        if location.isReadyToAdvance1() {
            print("\(location.pueblo!)")
            siguienteBtn.isEnabled = true
        }
        
    }
    
    

    @IBAction func onSiguienteTapped(_ sender: Any) {
        performSegue(withIdentifier: "SelectionVCSegue", sender: self)
    }
    
    @IBAction func unwindFromSelectionVC(unwindSegue: UIStoryboardSegue) {
        
    }

}
