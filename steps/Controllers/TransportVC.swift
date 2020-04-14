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
    let BPMSlider = UISlider()
    let currentBPM = UILabel()
    let BPMLabel = UILabel()

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
    
    
    func configSlider() {
        BPMSlider.minimumValue = 60
        BPMSlider.maximumValue = 180
        BPMSlider.value = 120
        BPMSlider.minimumTrackTintColor = .systemTeal
        BPMSlider.maximumTrackTintColor = .systemTeal
        BPMSlider.thumbTintColor = .systemTeal
        
        BPMSlider.addTarget(self, action: #selector(labelUpdated), for: .valueChanged)
        
        view.addSubview(BPMSlider as UIView)
        BPMSlider.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            BPMSlider.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            BPMSlider.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            BPMSlider.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
    
    
    func configBPMLabel() {
        view.addSubview(currentBPM)
        view.addSubview(BPMLabel)
        BPMLabel.text = "BPM"
        currentBPM.text = String(Int(BPMSlider.value))
        currentBPM.textColor = .systemTeal
        BPMLabel.textColor = .systemTeal
        currentBPM.textAlignment = .center
        BPMLabel.textAlignment = .center
        self.currentBPM.font = currentBPM.font.withSize(100)
        self.BPMLabel.font = BPMLabel.font.withSize(50)
        currentBPM.translatesAutoresizingMaskIntoConstraints = false
        BPMLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            currentBPM.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -100),
            currentBPM.widthAnchor.constraint(equalTo: view.widthAnchor),
            BPMLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -200),
            BPMLabel.widthAnchor.constraint(equalTo: view.widthAnchor)
        ])
        
    }
    
    
    func configUI() {
        configPlayButton()
        configStopButton()
        configSlider()
        configBPMLabel()
    }
    
    /*
    * -----------------------------------------------------------------
    * EVENT HANDLERS
    * -----------------------------------------------------------------
    */
    
    @objc func labelUpdated() {
        currentBPM.text = String(Int(BPMSlider.value))
    }
    
    
    @objc func playButtonTapped() {
        print("play button tapped")
    }
    
    @objc func stopButtonTapped() {
        print("stop button tapped")
    }

}
