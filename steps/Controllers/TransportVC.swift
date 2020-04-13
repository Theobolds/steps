//
//  TransportVC.swift
//  steps
//
//  Created by alex theobold on 13/04/2020.
//  Copyright © 2020 alex theobold. All rights reserved.
//

import UIKit

class TransportVC: UIViewController {
    
    let playBtn = UIButton()
    let stopBtn = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        
        // set large title at top of VC
        navigationController?.navigationBar.prefersLargeTitles = true
        title = "Transport"
        
        configUI()
    }
    
    
    /*
     * -----------------------------------------------------------------
     * VIEW CONFIGURATION
     * -----------------------------------------------------------------
     */
    
    func configPlayButton() {
        view.addSubview(playBtn as UIView)
        playBtn.translatesAutoresizingMaskIntoConstraints = false
        playBtn.setImage(UIImage(systemName: "play.circle",
                withConfiguration: UIImage.SymbolConfiguration(pointSize: 75, weight: .regular)),
                for: .normal)
        UIView.appearance().tintColor = .systemTeal
        playBtn.addTarget(self, action: #selector(playButtonTapped), for: .touchUpInside)
        
        // constraints
        NSLayoutConstraint.activate([
            playBtn.heightAnchor.constraint(equalToConstant: 100),
            playBtn.widthAnchor.constraint(equalToConstant: 115),
            playBtn.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            playBtn.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -40)
        ])
    }
    
    
    func configStopButton() {
        view.addSubview(stopBtn as UIView)
        stopBtn.translatesAutoresizingMaskIntoConstraints = false
        stopBtn.setImage(UIImage(systemName: "stop.circle",
                withConfiguration: UIImage.SymbolConfiguration(pointSize: 75, weight: .regular)),
                for: .normal)
        UIView.appearance().tintColor = .systemTeal
        stopBtn.addTarget(self, action: #selector(stopButtonTapped), for: .touchUpInside)
        
        // constraints
        NSLayoutConstraint.activate([
            stopBtn.heightAnchor.constraint(equalToConstant: 100),
            stopBtn.widthAnchor.constraint(equalToConstant: 115),
            stopBtn.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            stopBtn.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -40)
        ])
    }
    
    
    func configUI() {
        configPlayButton()
        configStopButton()
    }
    
    /*
    * -----------------------------------------------------------------
    * EVENT HANDLERS
    * -----------------------------------------------------------------
    */
    
    
    @objc func playButtonTapped() {
        print("play button tapped")
    }
    
    @objc func stopButtonTapped() {
        print("stop button tapped")
    }

}
