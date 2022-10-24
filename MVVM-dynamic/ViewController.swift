//
//  ViewController.swift
//  MVVM-dynamic
//
//  Created by Evgen on 24/10/2022.
//  Copyright © 2022 Evgen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var viewModel = ViewModel()

    @IBOutlet weak var passWield: UITextField!
    
    @IBOutlet weak var loginField: UITextField!
    
    @IBAction func loginBtnPressed(_ sender: UIButton) {
        viewModel.userBtnPressed(loginField.text ?? "", passWield.text ?? "")
    }
    
    @IBOutlet weak var statusLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bindViewModel()
    }
    
    func bindViewModel() {
        viewModel.statusText.bind({(statusText) in
            DispatchQueue.main.async {
                self.statusLabel.text = statusText
            }
        })
        
        viewModel.statusColor.bind({(statusColor) in
            DispatchQueue.main.async {
                self.statusLabel.textColor = statusColor
            }
        })
    }
}

