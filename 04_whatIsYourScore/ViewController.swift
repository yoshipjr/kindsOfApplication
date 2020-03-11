//
//  ViewController.swift
//  04_whatIsYourScore
//
//  Created by 北原義久 on 2020/03/11.
//  Copyright © 2020 北原義久. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Textlabel: UILabel!
    
    @IBOutlet weak var tvScore: UITextField!
    
    @IBOutlet weak var btAnswer: UIButton!
    @IBOutlet weak var countscore: UILabel!
    @IBOutlet weak var buttonImage: UIImageView!
    
    let image0:UIImage = UIImage(named:"kuji_atari")!
    let image1:UIImage = UIImage(named:"kuji_hazure")!
    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.tvScore.keyboardType = UIKeyboardType.decimalPad
        
    }
    
    
    @IBAction func getScore(_ sender: Any) {
        count += 1
        
        
        let dscore = Double(tvScore.text!)
        let yourScore = Double(arc4random_uniform(11))
        
        countscore.text =  "今あなたの挑戦は\(count)回目の挑戦です"
        
        if(dscore == yourScore){
            let image0:UIImage = UIImage(named:"kuji_atari")!
            buttonImage.image = image0
        }else{
            let image0:UIImage = UIImage(named:"kuji_hazure")!
            buttonImage.image = image0
        }
    }
    
}

