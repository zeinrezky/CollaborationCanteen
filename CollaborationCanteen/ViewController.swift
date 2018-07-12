//
//  ViewController.swift
//  CollaborationCanteen
//
//  Created by zein rezky chandra on 12/07/18.
//  Copyright © 2018 Zein. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var buttonNext: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // Test
        
        setupUI()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func setupUI(){
        buttonNext.layer.cornerRadius = 5.0
        buttonNext.layer.masksToBounds = true
        let widthRandom = CGFloat(arc4random_uniform(320))
        let heightRandom = CGFloat(arc4random_uniform(UInt32(self.view.frame.size.height)))
        UIView.animate(withDuration: 0.5, animations: {
            self.buttonNext.frame = CGRect(x: widthRandom, y: heightRandom, width: self.buttonNext.frame.size.width, height: self.buttonNext.frame.size.height)
        }, completion: nil)
    }
}

