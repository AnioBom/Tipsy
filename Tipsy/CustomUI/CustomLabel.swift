//
//  CustomLabel.swift
//  Tipsy
//
//  Created by mac on 4/28/23.
//

import UIKit
import SnapKit

class CustomLable: UILabel {
    
    init(frame: CGRect, text: String, textColor: UIColor) {
        super.init(frame: frame)
        self.text = text
        self.textColor = textColor
        self.setupLabel()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        self.setupLabel()
    }
    
    func setupLabel() {
        self.font = UIFont.systemFont(ofSize: 25)
        self.textAlignment = .left
        
        // MARK: - create constraints
        
        self.snp.makeConstraints { make in
            make.width.equalTo(300)
            make.height.equalTo(30)
        }
    }
}
