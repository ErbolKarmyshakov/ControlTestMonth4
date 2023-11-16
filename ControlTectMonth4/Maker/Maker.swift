//
//  Maker.swift
//  ControlTectMonth4
//
//  Created by Mac User on 15/11/23.
//

import Foundation
import UIKit
class Maker{
    static let shared = Maker()
    func tfMake(
        radius: CGFloat = 10,
        borderWith: CGFloat = 2,
        borgerColor: CGColor = UIColor.black.cgColor,
        placeholder: String = "Password",
        translatesAutoresizingMaskIntoConstraints: Bool = false
    ) -> UITextField {
        let view = UITextField()
        view.layer.cornerRadius = radius
        view.layer.borderWidth = borderWith
        view.layer.borderColor = borgerColor
        view.placeholder = placeholder
        view.translatesAutoresizingMaskIntoConstraints = translatesAutoresizingMaskIntoConstraints
        return view
    }
    
    func lbMake(text: String = "",
                textColor: UIColor = .black,
                size: CGFloat = 18,
                weight: UIFont.Weight = .bold,
                translatesAutoresizingMaskIntoConstraints: Bool = false
    ) -> UILabel {
        let view = UILabel()
        view.text = text
        view.textColor = textColor
        view.font = .systemFont(ofSize: size, weight: weight)
        view.translatesAutoresizingMaskIntoConstraints = translatesAutoresizingMaskIntoConstraints
        return view
    }
    
    func btnMake(
        type: UIButton.ButtonType = .system,
        color: UIColor = .brown,
        text: String = "Continue",
        forb: UIControl.State = .normal,
        textColor: UIColor = .yellow,
        size: CGFloat = 18,
        weight: UIFont.Weight = .bold,
        radius: CGFloat = 18,
        translatesAutoresizingMaskIntoConstraints: Bool = false
    ) -> UIButton {
        let view = UIButton(type: type)
        view.backgroundColor = color
        view.setTitle(text, for: forb)
        view.tintColor = textColor
        view.titleLabel?.font = .systemFont(ofSize: size, weight: weight)
        view.layer.cornerRadius = radius
        view.translatesAutoresizingMaskIntoConstraints = translatesAutoresizingMaskIntoConstraints
        return view
    }
}
