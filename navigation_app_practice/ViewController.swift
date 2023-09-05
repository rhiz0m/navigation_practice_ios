//
//  ViewController.swift
//  navigation_app_practice
//
//  Created by Andreas Antonsson on 2023-09-03.
//

import UIKit

class ViewController: UIViewController {
    
    // Lägg till denna IBOutlet om den inte redan finns
    
    @IBOutlet weak var ellipse1: UIImageView!
    
    @IBOutlet weak var lbl_name: UILabel!
    @IBOutlet weak var lbl_age: UILabel!
    @IBOutlet weak var lbl_epost: UILabel!
    
    
    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var age: UITextField!
    @IBOutlet weak var epost: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        /*
         if let ellipse = ellipse1 {
         // debugging. Kör ellipse som är garanterat inte nil
         print("It works!")
         } else {
         // Om ellipse1 är nil
         print("ellipse1 is nil")
         }*/
        
        ellipse1.isUserInteractionEnabled = true
        // Aktivera användargränssnittsinteraktioner för "Ellipse 1"
    }
    
    @IBAction func tapEllipse(_ sender: UITapGestureRecognizer) {
        // Kontroller för namn, ålder och epost
     
        var isValid = true
        
        lbl_name.text = ""
        lbl_age.text = ""
        lbl_epost.text = ""
        
        if let nameText = name.text, nameText.isEmpty {
            lbl_name.text = "Fyll i ditt namn"
            isValid = false
        }
        
        if let ageText = age.text, let ageValue = Int(ageText) {
            if ageValue < 18 {
                print("not old enough...")
            }
        } else {
            lbl_age.text = "Fyll i din ålder"
            isValid = false
        }
        
        if let epostText = epost.text, epostText.isEmpty {
            
            if !epostText.contains("@") && !epostText.contains(".") {
                lbl_epost.text = "Fyll i korrekt epost"
                isValid = false
            }
           
        }
        
        // Alla kontroller är godkända, utför segues
        if isValid {
            if name.text != nil && age.text != nil && epost.text != nil {
                if let ageText = age.text, let ageValue = Int(ageText), ageValue >= 18 {
                    performSegue(withIdentifier: "fromHomeToPassed", sender: self)
                } else {
                    performSegue(withIdentifier: "fromHomeToFailed", sender: self)
                    }
                }
            }
        }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "fromHomeToPassed" {
            // Hantera övergång till ett förbikommet läge (passed)
            print("The user have entered the passed screen")
        } else if segue.identifier == "fromHomeToFailed" {
            // Hantera övergång till ett misslyckat läge (failed)
            print("The user has entered the failed screen")
        }
    }
}
    




