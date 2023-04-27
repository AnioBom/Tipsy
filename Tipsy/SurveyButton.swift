//
//  SurveyButton.swift
//  Tipsy
//
//  Created by mac on 4/27/23.
//

import UIKit

class SurveyButton: UIButton {
    override init(frame: CGRect) {
        super.init(frame: frame)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    func setupButton() {
        setTitleColor(.white, for: .normal)
        titleLabel?.text = "Calculate"
        backgroundColor = .green
        titleLabel?.font = UIFont(name: "AvenirNext-DemiBoldItalic", size: 25)
        layer.cornerRadius = 15
    }
    
    
}
