//
//  ExtentionMainVC.swift
//  Tipsy
//
//  Created by mac on 4/28/23.
//

import UIKit
import SnapKit

extension ViewController {
    
    func configure() {
        
        view.addSubview(titleTextLable)
        titleTextLable.snp.makeConstraints { make in
            make.top.equalTo(80)
            make.leading.equalTo(30)
            
        }
        
        view.addSubview(totalTextField)
        totalTextField.snp.makeConstraints { make in
            make.top.equalTo(titleTextLable.snp.bottom).inset(-20)
            make.leading.equalToSuperview()
            make.trailing.equalTo(20)
            make.height.equalTo(50)
        }
        
        stackView.addArrangedSubview(titleTip)
        stackView.addArrangedSubview(percentTip)
        stackView.addArrangedSubview(splitLabel)
        
        let stackViewH = UIStackView()
        stackViewH.axis = .horizontal
        stackViewH.spacing = 20
        stackViewH.distribution = .fillEqually
        stackViewH.alignment = .center
        
        stackViewH.addArrangedSubview(numberLabel)
        stackViewH.addArrangedSubview(stepper)
        
        stackView.addArrangedSubview(stackViewH)
        stackView.addArrangedSubview(buttonCalculate)
        view.addSubview(stackView)
        
        stackView.snp.makeConstraints { make in
            make.top.equalTo(totalTextField.snp.bottom).offset(20)
            make.leading.equalToSuperview()
            make.trailing.equalToSuperview()
            make.bottom.equalToSuperview()
        }
        
        stackViewH.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.width.equalTo(200)
            make.height.equalTo(100)
        }
        
        percentTip.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.height.equalTo(60)
        }
        
        titleTip.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(30)
        }
        splitLabel.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(30)
        }
        
        buttonCalculate.snp.makeConstraints { make in
            make.bottom.equalToSuperview().offset(100)
            make.centerX.equalToSuperview()
            make.height.equalTo(50)
        }

    }
    
}
