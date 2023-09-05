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
        print("It works!")
    }
    
}


