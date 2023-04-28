//
//  SurveyButton.swift
//  Tipsy
//
//  Created by mac on 4/27/23.
//

import UIKit

class CustomButton: UIButton {
    init(title: String) {
        super.init(frame: .zero)
        setTitle(title, for: .normal)
        self.setupButton()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.setupButton()
    }
    
    func setupButton() {
        setTitleColor(.white, for: .normal)
        backgroundColor = .green
        titleLabel?.font = UIFont.boldSystemFont(ofSize: 24)
        layer.cornerRadius = 15
        clipsToBounds = true
        
    }
    
    
}
