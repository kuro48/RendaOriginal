//
//  ViewController.swift
//  RendaOriginal
//
//  Created by 黒川龍之介 on 2022/02/14.
//
import UIKit

class ViewController: UIViewController {
    

    @IBOutlet var countNumber: UILabel!
    @IBOutlet var countBtn: UIButton!
    @IBOutlet var timerNumber: UILabel!
    
    var number = 0
    var timerCount = 30.00
    var timer: Timer = Timer()
    var result = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func count() {
        number = number + 1
        countNumber.text = String(number)
    }
    
    @objc func down() {
        if timerCount < 0.01 {
            result = number
            self.performSegue(withIdentifier: "toNext", sender: result)
            timer.invalidate()
        }
        
        timerCount = timerCount - 0.01
        timerNumber.text = String(format: "%.2f",timerCount)

    }
    
    @IBAction func start(){
        timerCount = 30.00
        if !timer.isValid{
                    timer = Timer.scheduledTimer(timeInterval: 0.01,
                                                 target: self,
                                                 selector: #selector(self.down),
                                                 userInfo: nil,
                                                 repeats: true)
                }
    }
    
    override func prepare(for segue: UIStoryboardSegue,sender: Any?){
        if segue.identifier == "toNext" {
                let toNext = segue.destination as! NextViewController
                toNext.result = self.result
        }
    }
}


