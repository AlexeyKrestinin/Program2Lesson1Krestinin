//
//  OsagoViewController.swift
//  Program2Lesson1Krestinin
//
//  Created by Алексей Крестинин on 01.03.17.
//  Copyright © 2017 Alexey Krestinin. All rights reserved.
//

import UIKit

class OsagoViewController: UIViewController {
    

    @IBOutlet var osagoView: OsagoView!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        _ = Calculate(power: 0, age: 0, baseSum: 5000, cityPrecision: 1,expirience: 0)
    }
}

