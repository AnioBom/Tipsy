//
//  ViewController.swift
//  Tipsy
//
//  Created by mac on 4/27/23.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    let items = ["0 %", "10 %", " 20 %"]
    
    // MARK: - Properties UI
    
    let secondView: UIView = {
       let view = UIView()
        view.backgroundColor = .systemGreen
        return view
    }()
     
    
    let titleTextFieldLable: UILabel = {
       let label = UILabel()
        label.text = "Enter bill total"
        label.textColor = .gray
        label.font = UIFont.systemFont(ofSize: 25)
        return label
    }()
   
    let totalTextField: UITextField = {
        var textField = UITextField()
        textField.backgroundColor = .white
        textField.textAlignment = .center
        textField.font = UIFont.systemFont(ofSize: 30)
        textField.placeholder = "e.g. 123.56"
        
        return textField
    }()
    
    let titleTip: UILabel = {
       let label = UILabel()
        label.text = "Select tip"
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 25)
        return label
    }()

    lazy var percentTip: UISegmentedControl = {
        let segmentControl = UISegmentedControl(items: items)
        segmentControl.selectedSegmentIndex = 0
        segmentControl.backgroundColor = #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1)
        segmentControl.selectedSegmentTintColor = #colorLiteral(red: 0, green: 0.8315178752, blue: 0, alpha: 1)
        
        
        return segmentControl
    }()
    
    let splitLabel: UILabel = {
        let label = UILabel()
        label.text = "Choose Split"
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 25)
        return label
    }()
    
    let numberLabel: UILabel = {
        let label = UILabel()
        label.text = "0"
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 30)
        return label
    }()
    
    lazy var stepper: UIStepper = {
        let stepper = UIStepper()
        stepper.stepValue = 1
        stepper.minimumValue = 1
        stepper.addTarget(self, action: #selector(numberPeopleChanged(_:)), for: .valueChanged)
        return stepper
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        configure()
    }

    @objc func numberPeopleChanged(_ sender: UIStepper) {
        numberLabel.text = "\(sender.value)"
    }
    
}

extension ViewController {
    
    private func configure() {
        
        view.addSubview(titleTextFieldLable)
        titleTextFieldLable.snp.makeConstraints { make in
            make.top.equalTo(80)
            make.leading.equalTo(30)
            
        }

        view.addSubview(totalTextField)
        totalTextField.snp.makeConstraints { make in
            make.top.equalTo(titleTextFieldLable.snp.bottom).inset(-20)
            make.leading.equalToSuperview()
            make.trailing.equalTo(20)
           // make.height.equalTo(50)
        }
        
        view.addSubview(secondView)
        secondView.snp.makeConstraints { make in
            make.top.equalTo(totalTextField.snp.bottom).offset(20)
            make.leading.trailing.equalToSuperview()
            make.bottom.equalToSuperview()
        }
        
        view.addSubview(titleTip)
        titleTip.snp.makeConstraints { make in
            make.top.equalTo(totalTextField.snp.bottom).offset(40)
            make.leading.equalTo(30)
        }
        
        view.addSubview(percentTip)
        percentTip.snp.makeConstraints { make in
            make.top.equalTo(totalTextField.snp.bottom).offset(100)
            make.centerX.equalToSuperview()
            make.leading.trailing.equalToSuperview().inset(30)
            make.height.equalTo(50)
        }
        
        view.addSubview(splitLabel)
        splitLabel.snp.makeConstraints { make in
            make.top.equalTo(percentTip.snp.bottom).offset(40)
            make.leading.equalTo(30)
        }
        
        view.addSubview(numberLabel)
        numberLabel.snp.makeConstraints { make in
            make.top.equalTo(splitLabel.snp.bottom).offset(40)
            make.leading.equalTo(100)
        }
        
        view.addSubview(stepper)
        stepper.snp.makeConstraints { make in
            make.top.equalTo(percentTip.snp.bottom).offset(113)
            make.leading.equalTo(numberLabel.snp.trailing).offset(80)
            //make.trailing.equalToSuperview().offset(-50)
            
        }

    }
    
}

