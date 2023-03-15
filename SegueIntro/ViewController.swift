//
//  ViewController.swift
//  SegueIntro
//
//  Created by Edgar Backer on 2023-03-14.
//

import UIKit

class ViewController: UIViewController {
    
    let segueIdGOTOtwo = "goToTwo"
    let segueIdGOTOthree = "goToThree"

    @IBOutlet weak var nameTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func buttonPressed(_ sender: UIButton) {
        
        let random = Int.random(in: 1...2)
        
        if random == 1{
            performSegue(withIdentifier: segueIdGOTOtwo, sender: self)
        }else {
            performSegue(withIdentifier: segueIdGOTOthree, sender: self)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if segue.identifier == segueIdGOTOtwo{
            if let destinationVC = segue.destination as? DisplayResultViewController
            {
                destinationVC.receivingName = nameTextField.text
            }
        }
    }
    
    @IBAction func unwindToStart(segue: UIStoryboardSegue){}
    
}

