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
//        let messages = [
//          "Now is the time for all good men to come to the aid of their country",
//          "Vini, vidi, vichi",
//          "I regret that I have but one life to give for my country",
//          "Illegitimi non carborundum"
//          ]
//
//        let index = arc4random_uniform(UInt32(messages.count))
//        let aQuote = messages[arc4random]
        
        
        let alert = UIAlertController(title: "Really? Another bag of chips?", message: "Motivate #1", preferredStyle: .alert)
        let  okayAction = UIAlertAction(title: "Okay", style: .default) { (action)in
            print(action)
            
        }
        
        alert.addAction(okayAction)
        
        present(alert, animated: true, completion: nil)
    }
}
