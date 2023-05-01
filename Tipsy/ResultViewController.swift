//
//  ResultViewController.swift
//  Tipsy
//
//  Created by mac on 4/28/23.
//

import UIKit

class ResultViewController: UIViewController {
    
    private let splitAmount: Double
    
    init(splitAmount: Double) {
        self.splitAmount = splitAmount
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    let firstLable : UILabel = {
        let label = UILabel()
        label.textColor = .gray
        label.text = "Total per person"
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 25)
        return label
    }()
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.textColor = .systemGreen
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 40)
        return label
    }()
    
    let descriptionLable : UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.text = "Split between people, with tip %."
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 25)
        return label
    }()
    
    let secondView: UIView = {
        let view = UIView()
        view.backgroundColor = .systemGreen
        return view
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        confuge()
        displeyResult()
        
    }
   
    private func displeyResult() {
        let formattedAmount = String(format: "%.2f", splitAmount)
        let resultText = "\(formattedAmount)"
        titleLabel.text = resultText
    }

}

extension ResultViewController {
    
    func confuge() {
        
        view.addSubview(secondView)
        secondView.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(300)
            make.leading.trailing.equalToSuperview()
            make.bottom.equalToSuperview()
        }
        
        view.addSubview(firstLable)
        firstLable.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(100)
            make.trailing.leading.equalToSuperview()
            make.centerX.equalToSuperview()
        }
        
        view.addSubview(titleLabel)
        titleLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(firstLable.snp.bottom).offset(30)
            make.leading.trailing.equalToSuperview()
        }
        
        view.addSubview(descriptionLable)
        descriptionLable.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview()
        }
    }
    
}
