//
//  ViewController.swift
//  PlateMath
//
//  Created by Michael Berkowitz on 3/9/16.
//  Copyright © 2016 Michael Berkowitz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var incrementer: Incrementer!
    @IBOutlet weak var minusButton: UIButton!
    @IBOutlet weak var plusButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: "dismissKeyboard")
        view.addGestureRecognizer(tap)
        view.backgroundColor = UIColor.grayColor()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func dismissKeyboard() {
        view.endEditing(true)
    }

    @IBAction func minusButtonDown(sender: UIButton) {
        incrementer.decrease()
        print("minus button down")
    }
    
    @IBAction func minusButtonUp(sender: UIButton) {
        incrementer.reset()
        print("minus button up")
    }
    
    @IBAction func plusButtonDown(sender: AnyObject) {
        incrementer.increase()
        print("plus button down")
    }

    @IBAction func plusButtonUp(sender: UIButton) {
        incrementer.reset()
        print("plus button up")
    }
}

