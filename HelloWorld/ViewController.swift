 //
//  ViewController.swift
//  HelloWorld
//
//  Created by Libby Li on 9/13/18.
//  Copyright © 2018 Yongjia Li. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    
    var backgroundColor: UIColor!
    
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        backgroundColor = view.backgroundColor
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func didTapButton(_ sender: Any) {
        textLabel.textColor = UIColor.orange
    }
    
    @IBAction func didTapViewButton(_ sender: Any) {
        view.backgroundColor = UIColor.yellow
    }
    
    @IBAction func didTapTextButton(_ sender: Any) {
        if textField.hasText == false {
            textLabel.text = "Goodbye!"
        }
        else {
            textLabel.text = textField.text
            textField.text = ""
            view.endEditing(true)
        }
    }
    
    @IBAction func onResetGesture(_ sender: Any) {
        textLabel.text = "Hello from Charlie!"
        textLabel.textColor = UIColor.black
        view.backgroundColor = backgroundColor
    }
 }

