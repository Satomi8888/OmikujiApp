//
//  ViewController.swift
//  omikuji
//
//  Created by 遠山　聡美 on 2017/11/30.
//  Copyright © 2017年 Simple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func restart(_ segue: UIStoryboardSegue){
        //名前と年齢のフィールドを空白にする
        nameField.text = ""
        ageField.text = ""
    }
 
    @IBAction func nameafieldAction(_ sender: Any) {
        //UserDefaultsの参照
        let userDefaults = UserDefaults.standard
        //textという値で保存
        userDefaults.set(nameField.text, forKey: "name")
        //userDefaultsへの値の保存を明示的に行う
        userDefaults.synchronize()
    }

    @IBAction func ageFieldAction(_ sender: Any) {
        //UserDefaultsの参照
        let userDefaults = UserDefaults.standard
        //textという値で保存
        userDefaults.set(ageField.text, forKey: "age")
        //userDefaultsへの値の保存を明示的に行う
        userDefaults.synchronize()
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //次の画面をとりだす
        let viewController = segue.destination as! resultViewController
        //名前のnil判定する
        if let name:String = nameField.text{
            viewController.name = name
        }
    }

    @IBOutlet weak var nameField: UITextField!
    
    @IBOutlet weak var ageField: UITextField!
    
    @IBAction func result(_ sender: Any) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //UserDefaultsの参照
        let userDefaults = UserDefaults.standard
        
        //nameというkeyを指定して保存していた値を取り出す
        if let value = userDefaults.string(forKey: "name") {
            //取り出した値をテキストフィールドい入れる
            nameField.text = value
        }
        
        if let value = userDefaults.string(forKey: "age") {
            //取り出した値をテキストフィールドい入れる
            ageField.text = value
        }

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }


}

