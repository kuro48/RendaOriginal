//
//  StartViewController.swift
//  RendaOriginal
//
//  Created by 黒川龍之介 on 2022/02/21.
//

import UIKit

class StartViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
//    
//    @IBAction func start(){
//        self.performSegue(withIdentifier: "toRenda", sender: nil)
//        number = 0
//        countNumber.text = String(number)
//        timerCount = 30.00
//        if !timer.isValid{
//                    timer = Timer.scheduledTimer(timeInterval: 0.01,
//                                                 target: self,
//                                                 selector: #selector(self.down),
//                                                 userInfo: nil,
//                                                 repeats: true)
//    }
        
        @IBAction func start(_ sender: Any) {
                let viewController = self.storyboard?.instantiateViewController(withIdentifier: "toRenda") as! ViewController
            viewController.modalPresentationStyle = .fullScreen
                self.present(viewController, animated: true, completion: nil)
            }

}
