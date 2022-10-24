//
//  ViewModel.swift
//  MVVM-dynamic
//
//  Created by Evgen on 24/10/2022.
//  Copyright © 2022 Evgen. All rights reserved.
//

import Foundation
import UIKit

class ViewModel {
    var statusText = Dynamic("")
    var statusColor = Dynamic(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1))
    
    func userBtnPressed(_ login: String, _ password: String) {
        
        if login != UserService.getExistUsers()[0].login || password != UserService.getExistUsers()[0].password {
            statusText.value = "Login Failed"
            statusColor.value = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
        }
        else {
            statusText.value = "success"
            statusColor.value = #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)
        }
    }
}
