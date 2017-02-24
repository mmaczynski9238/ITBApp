//
//  ViewController.swift
//  ITB_App
//
//  Created by student3 on 2/23/17.
//  Copyright © 2017 John Hersey High School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var textField: UITextField!
    @IBOutlet var binaryLabel: UILabel!
    
    let TBC = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

    }
 
    @IBAction func convertButton(_ sender: UIButton) {
        main()
    }
    
    
    func main() -> (){
        
        var TBC = Int(textField.text!)
        var binary = intToBinaryString(TBC!)
        print( "IntValue( \(TBC) ) => BinaryString( \(binary) )")
        binaryLabel.text = "\(binary)"
        
    }

    func intToBinaryString( _ value:Int ) -> String {
        
        var result = ""
        
        var _value = value
        
        while _value > 0 {
            
            result = ( _value % 2 != 0 ? "1" : "0" ) + result
            _value /= 2
        }
        
        while result.characters.count % 8 != 0 {
            
            result = "0" + result
        }
        
        return result
    }
    

}

