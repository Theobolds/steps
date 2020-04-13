//
//  DrumGridVC.swift
//  steps
//
//  Created by alex theobold on 13/04/2020.
//  Copyright © 2020 alex theobold. All rights reserved.
//

import UIKit

class DrumGridVC: UIViewController {
    
    let drumGrid = Grid()
    let borgInstrumentArray = ["HighTom","MedTom","LowTom","RimShot","Clap","CowBell","Kick","Snare","HiHat"]

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        
        // set large title at top of VC
        navigationController?.navigationBar.prefersLargeTitles = true
        title = "Drum Select"
        
        // create grid
        configDrumGrid()
    }
    
    
    func configDrumGrid() {
        drumGrid.StepGridView(rows: 3, columns: 3, buttonArray: borgInstrumentArray as NSArray, rootView: view)
    }
    
}
