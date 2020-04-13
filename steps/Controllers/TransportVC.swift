//
//  TransportVC.swift
//  steps
//
//  Created by alex theobold on 13/04/2020.
//  Copyright © 2020 alex theobold. All rights reserved.
//

import UIKit

class TransportVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        
        // set large title at top of VC
        navigationController?.navigationBar.prefersLargeTitles = true
        title = "Transport"
    }

}
