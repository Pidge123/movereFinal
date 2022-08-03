//
//  OpeningViewController.swift
//  movere
//
//  Created by Scholar on 8/3/22.
//

import UIKit

class OpeningViewController: UIViewController {
    @IBOutlet weak var homeButtonOutlet: UIButton!
    @IBOutlet weak var nameEntered: UITextField!
    @IBOutlet weak var textRevealed: UILabel!
    @IBOutlet weak var imageRevealed: UIImageView!
    @IBOutlet weak var otherTextRvealed: UILabel!
    @IBOutlet weak var theOtherTextrevealed: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textRevealed.isHidden = true
        imageRevealed.isHidden = true
        otherTextRvealed.isHidden = true
        theOtherTextrevealed.isHidden = true
        homeButtonOutlet.isHidden = true
        
    }
    
    @IBAction func nextButtonTapped(_ sender: Any) {
      
        var text = nameEntered.text
        var textCount = text?.count

        if text!.count >= 1 {
            textRevealed.isHidden = false
            imageRevealed.isHidden = false
            otherTextRvealed.isHidden = false
            theOtherTextrevealed.isHidden = false }
        
        homeButtonOutlet.isHidden = false

    }
    
}
