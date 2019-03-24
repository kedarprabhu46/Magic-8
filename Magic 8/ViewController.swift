//
//  ViewController.swift
//  Magic 8
//
//  Created by Apple on 07/09/18.
//  Copyright © 2018 Kedar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var magicBall: UIImageView!
    
    let ballCollection=[#imageLiteral(resourceName: "ball1"),#imageLiteral(resourceName: "ball2"),#imageLiteral(resourceName: "ball3"),#imageLiteral(resourceName: "ball4"),#imageLiteral(resourceName: "ball5")]
    var ballIndex:Int=0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func askButtonPressed(_ sender: UIButton) {
        changeImage()
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        changeImage()
    }
    
    func changeImage()
    {
        ballIndex=Int(arc4random_uniform(5))
        magicBall.image=ballCollection[ballIndex]
    }
}

