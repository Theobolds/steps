//
//  TransportVC.swift
//  steps
//
//  Created by alex theobold on 13/04/2020.
//  Copyright © 2020 alex theobold. All rights reserved.
//

import UIKit

class TransportVC: UIViewController {
    
    let playBtn = CustomButton()
    let stopBtn = CustomButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        
        // set large title at top of VC
        navigationController?.navigationBar.prefersLargeTitles = true
        title = "Transport"
        
        configUI()
    }
    
    func configUI() {
        view.addSubview(playBtn as UIView)
        playBtn.translatesAutoresizingMaskIntoConstraints = false
        playBtn.setImage(UIImage(systemName: "playpause.fill"), for: .normal)

        
        NSLayoutConstraint.activate([
            playBtn.heightAnchor.constraint(equalToConstant: 75),
            playBtn.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            playBtn.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            playBtn.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20)
        ])
    }

}
