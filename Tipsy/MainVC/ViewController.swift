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
    private var splitAmount: Double = 0
    
    // MARK: - Properties UI
    
    let titleTextLable = CustomLable(frame: CGRect.zero, text: "Enter bill total", textColor: .gray)
    let titleTip = CustomLable(frame: CGRect.zero, text: "Select tip", textColor: .white)
    let splitLabel = CustomLable(frame: CGRect.zero, text: "Choose Split", textColor: .white)
    let numberLabel = CustomLable(frame: CGRect.zero, text: "0", textColor: .white)
    let buttonCalculate = CustomButton(title: "Calculate")
   
    let totalTextField: UITextField = {
        var textField = UITextField()
        textField.backgroundColor = .white
        textField.textAlignment = .center
        textField.font = UIFont.systemFont(ofSize: 30)
        textField.placeholder = "e.g. 123.56"
        return textField
    }()

    lazy var percentTip: UISegmentedControl = {
        let segmentControl = UISegmentedControl(items: items)
        segmentControl.selectedSegmentIndex = 0
        segmentControl.backgroundColor = #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1)
        segmentControl.selectedSegmentTintColor = #colorLiteral(red: 0, green: 0.8315178752, blue: 0, alpha: 1)
        return segmentControl
    }()
    
    lazy var stepper: UIStepper = {
        let stepper = UIStepper()
        stepper.stepValue = 1
        stepper.minimumValue = 1
        stepper.addTarget(self, action: #selector(numberPeopleChanged(_:)), for: .valueChanged)
        return stepper
    }()
    
    let stackView: UIStackView = {
       let stack = UIStackView()
        stack.axis = .vertical
        stack.spacing = 30
        stack.distribution = .fillProportionally
        stack.alignment = .leading
        stack.backgroundColor = .systemGreen
        return stack
    }()
    
    // MARK: - View Controller's life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        configure()
        buttonCalculate.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
    }
    
    // MARK: - Methods

    @objc func numberPeopleChanged(_ sender: UIStepper) {
        numberLabel.text = "\(sender.value)"
    }
    
    @objc func buttonPressed() {
        guard let totalAmount = totalTextField.text,
              let totalSum = Double(totalAmount) else { return }
        
        let tipPercentages = items
        let selectedTip = tipPercentages[percentTip.selectedSegmentIndex]
        let numberPeople = Int(stepper.value)
        
        let tipAmount = Double(totalSum) * (Double(selectedTip) ?? 00)
        splitAmount = (totalSum + tipAmount) / Double(numberPeople)
        
        let resultVC = ResultViewController(splitAmount: splitAmount)
        navigationController?.pushViewController(resultVC, animated: true)
    }
    
}


