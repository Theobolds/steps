//
//  Grid.swift
//  steps
//
//  Created by alex theobold on 26/03/2020.
//  Copyright © 2020 alex theobold. All rights reserved.
//

import UIKit

class Grid: UIView {

    let gridSpacing: CGFloat = 10.0
    
    func StepGridView(rows: Int, columns: Int, rootView: UIView) {
        
        // Initialise StackView
        let gridView = UIStackView()
        gridView.axis = .vertical
        gridView.alignment = .fill
        gridView.distribution = .fillEqually
        gridView.spacing = gridSpacing
        
        for row in 0 ..< rows {
            let horizSpace = UIStackView()
            horizSpace.axis = .horizontal
            horizSpace.alignment = .fill
            horizSpace.distribution = .fillEqually
            horizSpace.spacing = gridSpacing
            
            for col in 0 ..< columns {
                let button = CustomButton()
                
                button.setTitle("\((row*columns) + col + 1)", for: .normal)
                
                horizSpace.addArrangedSubview(button)
            }
            gridView.addArrangedSubview(horizSpace)
        }
        
        rootView.addSubview(gridView)
        
        // constraints
        gridView.translatesAutoresizingMaskIntoConstraints = false
        gridView.leadingAnchor.constraint(equalTo: rootView.safeAreaLayoutGuide.leadingAnchor, constant: 20).isActive = true
        gridView.trailingAnchor.constraint(equalTo: rootView.safeAreaLayoutGuide.trailingAnchor, constant: -20).isActive = true
        gridView.centerXAnchor.constraint(equalTo: rootView.centerXAnchor).isActive = true
        gridView.topAnchor.constraint(equalTo: rootView.safeAreaLayoutGuide.topAnchor, constant: 20).isActive = true
    }

}
