//
//  NextViewController.swift
//  RendaOriginal
//
//  Created by 黒川龍之介 on 2022/02/14.
//

import UIKit

class NextViewController: UIViewController {
    @IBOutlet var resultLabel : UILabel!
    @IBOutlet var resultTimer: UILabel!
    
    var result:Int = 0
    var resultText : String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultLabel.text = String(result)
        hantei()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func back(_ sender: Any) {
        self.presentingViewController?.presentingViewController?.dismiss(animated: true, completion: nil)
    }
    
    @objc func hantei(){
        if result >= 140{
            resultTimer.text = "WONDERFULL‼︎"
        }else if result >= 100{
            resultTimer.text = "PERFECT‼︎"
        }else if result >= 80{
            resultTimer.text = "GREAT‼︎"
        }else{
            resultTimer.text = "GOOD‼︎"
        }
    }
}
