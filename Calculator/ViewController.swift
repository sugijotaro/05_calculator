//
//  ViewController.swift
//  Calculator
//
//  Created by JotaroSugiyama on 2022/05/07.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var label: UILabel!
    
    var number1: Int = 0
    var number2: Int = 0
    var number3: Int = 0
    
    var ope: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func select(sender: UIButton){
        number1 = number1*10 + sender.tag
        updateLabel(number: number1)
    }
    
    @IBAction func action(sender: UIButton){
        number2 = number1
        number1 = 0
        ope = sender.tag
    }

    @IBAction func equal(){
        switch ope {
        case 1:
            number3 = number2 + number1
        case 2:
            number3 = number2 - number1
        case 3:
            number3 = number2 * number1
        case 4:
            number3 = number2 / number1
        default: break
        }
        updateLabel(number: number3)
    }
    
    @IBAction func clear(){
        number1 = 0
        number2 = 0
        number3 = 0
        ope = 0
        updateLabel(number: 0)
    }
    
    func updateLabel(number: Int){
        label.text = String(number)
        if number >= 10{
            label.textColor = .red
        }else if number <= -10{
            label.textColor = .blue
        }else{
            label.textColor = .black
        }
    }

}

