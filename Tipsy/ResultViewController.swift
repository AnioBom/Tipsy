//
//  ResultViewController.swift
//  Tipsy
//
//  Created by mac on 4/28/23.
//

import UIKit

class ResultViewController: UIViewController {
    
    private let splitAmount:Double
    
    init(splitAmount: Double) {
        self.splitAmount = splitAmount
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 25)
        return label
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemGreen
        confuge()
        displeyResult()
        
    }
   
    private func displeyResult() {
        let formattedAmount = String(format: "%.2f", splitAmount)
        let resultText = "Your part \(formattedAmount)"
        titleLabel.text = resultText
    }

}

extension ResultViewController {
    
    func confuge() {
        view.addSubview(titleLabel)
        titleLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview()
        }
    }
    
}
