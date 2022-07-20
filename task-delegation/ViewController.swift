//
//  ViewController.swift
//  task-delegation
//
//  Created by Muskan Jain on 04/05/22.
//

import UIKit

class ViewController: UIViewController, DesignationDeligate {
    
    func didSelectDesignation(designation: String = "None") {
        labelName.text = "My name is Muskan and my designation is "+designation
    }

    @IBOutlet weak var labelName: UILabel!
    
    @IBAction func actionDesignation(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier:"ViewControllerB") as! ViewControllerB
        vc.designationDelegate = self
        self.present(vc, animated: true, completion: nil)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }


}

