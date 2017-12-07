//
//  resultViewController.swift
//  omikuji
//
//  Created by 遠山　聡美 on 2017/11/30.
//  Copyright © 2017年 Simple. All rights reserved.
//

import UIKit

class resultViewController: UIViewController {

    var name:String = ""

    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var fortuneLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = name + "さん"
        
        var fortune: [String] = ["大吉です。らっきー！", "中吉です。はっぴー！", "小吉です。びみょー笑", "凶です。うひょえー。"]
        let index = (Int)(arc4random_uniform(4))
        fortuneLabel.text = "\(fortune[index])"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    

}
