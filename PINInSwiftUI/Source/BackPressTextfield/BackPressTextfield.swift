//
//  BackPressTextfield.swift
//  PINInSwiftUI
//
//  Created by Malli on 03/05/23

import UIKit

protocol BackPressTextfieldDelegate: AnyObject {
    func backPressed(textfield: BackPressTextfield)
}

final class BackPressTextfield: UITextField {
    // MARK: - Public Properties
    public weak var backDelegate: BackPressTextfieldDelegate?
    
    override func deleteBackward() {
        super.deleteBackward()
        
        if backDelegate != nil {
            backDelegate?.backPressed(textfield: self)
        }
    }
}
