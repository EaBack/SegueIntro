//
//  DisplayResultViewController.swift
//  SegueIntro
//
//  Created by Edgar Backer on 2023-03-14.
//

import UIKit

class DisplayResultViewController: UIViewController {

    @IBOutlet weak var displayResult: UILabel!
    
    var receivingName : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        displayResult.text = "Hej \(receivingName ?? " och välkommen")"
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
