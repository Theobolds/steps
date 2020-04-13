//
//  Grid.swift
//  steps
//
//  Created by alex theobold on 13/04/2020.
//  Copyright © 2020 alex theobold. All rights reserved.
//

import UIKit

public class Grid: UIView {

    let gridSpacing: CGFloat = 10.0
    
    func StepGridView(rows: Int, columns: Int, buttonArray: NSArray, rootView: UIView) {
        
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
                
                button.setTitle("\(buttonArray[row*columns + col])", for: .normal)
                
                horizSpace.addArrangedSubview(button)
            }
            gridView.addArrangedSubview(horizSpace)
        }
        
        rootView.addSubview(gridView)
        gridView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            gridView.topAnchor.constraint(equalTo: rootView.layoutMarginsGuide.topAnchor , constant: gridSpacing),
            gridView.leftAnchor.constraint(equalTo: rootView.layoutMarginsGuide.leftAnchor, constant: gridSpacing),
            gridView.rightAnchor.constraint(equalTo: rootView.layoutMarginsGuide.rightAnchor, constant: -gridSpacing),
            gridView.bottomAnchor.constraint(equalTo: rootView.layoutMarginsGuide.bottomAnchor, constant: -gridSpacing)
        ])
        
    }

}

