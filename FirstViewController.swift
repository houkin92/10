//
//  FirstViewController.swift
//  基本控件1
//
//  Created by 方瑾 on 2019/1/9.
//  Copyright © 2019 方瑾. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    
    @IBOutlet weak var displayLabel: UILabel!
    
    
    @IBOutlet weak var inputTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        displayLabel.textAlignment = .right
        displayLabel.backgroundColor = .blue
        displayLabel.textColor = .orange
        displayLabel.font = UIFont.systemFont(ofSize: 50)
        displayLabel.numberOfLines = 0
        displayLabel.text = "猥琐发育，别浪。优先推塔，小心草丛"
        
    }
    
    
    @IBAction func buttonBePressed(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
                let text = sender.currentTitle
                displayLabel.text = text
//        把输入框中的文字提取出来
                let text = inputTextField.text!
                displayLabel.isHidden = !displayLabel.isHidden
        
        //修改按键上的数字
        if displayLabel.isHidden == true {
            sender.setTitle("显示文字", for: .normal)
        } else {
            sender.setTitle("隐藏文字", for: .normal)
        }
        //sender.isSelected = ！sender.isSelected
        
        
        //让Label显示“按键文字已被修改”
        displayLabel.text = "按键文字已被修改"
        
        
        
        
        
        
        
        //
        ////        //把输入框中的文字提取出来
//                let text = inputTextField.text!
        //        //让Label显示提取出来的文字
        //        displayLabel.text = text
        //        //清空输入框
        inputTextField.text = ""
        let text = inputTextField.text!
        if text == "徐" {
            displayLabel.text = "黑龙江"
        } else if text == "方" {
            displayLabel.text = "福建"
        } else if text == "贺" {
            displayLabel.text = "天津"
        }
        inputTextField.text = ""
        
        //
        //
        //
        //    }
        
        
        
        
        
    }
}
