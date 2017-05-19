//
//  ViewController.swift
//  HelloWorld2
//
//  Created by Ben Smith on 17/05/2017.
//  Copyright © 2017 Ben Smith. All rights reserved.
//

import UIKit

enum lightbulbEnum{
    case on
    case off
    
    mutating func switchLightBulbState() -> UIImage {
        switch self {
        case .on:
            self = .off
            return #imageLiteral(resourceName: "LightBulbOff")
            
        case .off:
            self = .on
            return #imageLiteral(resourceName: "lightonblack")
            
        }
    }
}

class ViewController: UIViewController {

    @IBOutlet weak var lightBulbImag: UIImageView!
    var lightBulb: lightbulbEnum?
//    var lightOnOfBool: Bool = false
    
    @IBAction func ToggleLight(_ sender: Any) {
//        if lightOnOfBool {
//            lightBulbImag.image = #imageLiteral(resourceName: "lightonblack")
//            lightOnOfBool = true
//        } else {
//            lightBulbImag.image = #imageLiteral(resourceName: "LightBulbOff")
//            lightOnOfBool = false
//        }
        lightBulbImag.image = lightBulb?.switchLightBulbState()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lightBulb = lightbulbEnum.off
        print("view did load")
        
    }
    
    override func loadView() {
        super.loadView()
        print("load view")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("View Will Appear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("View did Appear")
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("will will disappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("view did disappear")
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        print("Did receive memory warning")
        // Dispose of any resources that can be recreated.
    }


}

