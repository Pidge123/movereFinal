//
//  GoalsViewController.swift
//  movere
//
//  Created by Scholar on 8/3/22.
//

import UIKit

class GoalsViewController: UIViewController {
    @IBOutlet weak var popButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    


    @IBAction func showPopUp(_ sender: Any) {
        let alert = UIAlertController(title: "If I was your father I would have left a long time ago", message: "This is a pop up for hoomans", preferredStyle: .alert)
        
        present(alert, animated: true, completion: nil)
    }
}
