//
//  ViewController.swift
//  HelloWorld2
//
//  Created by Ben Smith on 17/05/2017.
//  Copyright © 2017 Ben Smith. All rights reserved.
//

import UIKit
//    enum lightbulbEnum{
//        case on
//        case off
//        func switchLightBulbState() {
//            switch self {
//            case .on:
//                lightBulbImage.image = #imageLiteral(resourceName: "LightBulbOff")
//
//            case .off:
//                lightBulbImage.image = #imageLiteral(resourceName: "lightonblack")
//
//            }
//        }
//    }

class ViewController: UIViewController {

    @IBOutlet weak var lightBulbImag: UIImageView!
    var isLightOn: Bool = false
//    var lightBulbState: lightbulbEnum

    @IBAction func ToggleLight(_ sender: Any) {
        if isLightOn {
            isLightOn = false
            lightBulbImag.image = #imageLiteral(resourceName: "LightBulbOff")
            
        } else {
            isLightOn = true
            lightBulbImag.image = #imageLiteral(resourceName: "lightonblack")
        }
        // UIImage.init(named: "lightonblack")
//        lightBulbState.switchLightBulbState()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        lightBulbState = lightbulbEnum.off
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

