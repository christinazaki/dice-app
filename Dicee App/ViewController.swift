//
//  ViewController.swift
//  Dicee App
//
//  Created by christina zaki on 8/30/19.
//  Copyright © 2019 christina zaki. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstDice: UIImageView!
    @IBOutlet weak var secondDice: UIImageView!
    private let images: [UIImage] = [#imageLiteral(resourceName: "dice1"),#imageLiteral(resourceName: "dice2"),#imageLiteral(resourceName: "dice3"),#imageLiteral(resourceName: "dice4"),#imageLiteral(resourceName: "dice5"),#imageLiteral(resourceName: "dice6")]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }


    @IBAction func rollBtnClicked(_ sender: Any) {
        roll(times: 5)
       
    }
    func roll (times: Int){
        var myTimes  = times
        Timer.scheduledTimer(withTimeInterval: 0.2,
                             repeats: true){ (timer) in
                                guard  myTimes != 0 else {
                                    timer.invalidate()
                                    return
                                }
                                self.firstDice.image = self.images.randomElement()
                                self.secondDice.image = self.images.randomElement()
                                myTimes -= 1
        }
    }
}

