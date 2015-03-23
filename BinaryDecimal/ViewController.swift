//
//  ViewController.swift
//  BinaryDecimal
//
//  Created by Tanmay Bakshi on 2015-02-02.
//  Copyright (c) 2015 Tanmay Bakshi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var value: UITextField!
    @IBOutlet var output: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func convertToBinary(decimal: Int) -> String {
        
        var n = 0, c = 0, k: [String] = [], fs: String = ""
        
        n = decimal
        
        while n > 0 {
            
            c = n % 2
            n = n / 2
            k.append("\(c)")
            
        }
        
        for i in reverse(k) {
            
            fs += "\(i)"
            
        }
        
        return fs
        
    }
    
    func convertToDecimal(binaryVal: String) -> String {
        
        var result: Int = 0
        
        
        for num in binaryVal {
            
            switch num {
                
            case "0": result = result * 2
            case "1": result = result * 2 + 1
            default: return "Error"
                
            }
            
        }
        
        
        return "\(result)"
        
    }
    
    @IBAction func toBinary() {
        
        output.text = convertToBinary((value.text as NSString).integerValue)
        
    }
    
    @IBAction func toDecimal() {
        
        output.text = convertToDecimal(value.text)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

