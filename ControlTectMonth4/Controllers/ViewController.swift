//
//  ViewController.swift
//  ControlTectMonth4
//
//  Created by Mac User on 15/11/23.
//

import UIKit

class ViewController: UIViewController, Test {
    
    private let passwordLbl = Maker.shared.lbMake(text: "Password")
    
    private let passwordTf = Maker.shared.tfMake()
    
    private let confirmLbl = Maker.shared.lbMake(text: "Confirm Password")
    
    private let confirmTf = Maker.shared.tfMake(placeholder: "Again")
    
    private let resultLbl = Maker.shared.lbMake(size: 40)
    
    private let conBtn = Maker.shared.btnMake()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        allSetUpConstraints()
    }
    
    private func allSetUpConstraints(){
        setUpConstraintsForPasswordLbl()
        setUpConstraintsForPasswordTf()
        setUpConstraintsForConfirmLbl()
        setUpConstraintsForConfirmtf()
        setUpConstraintsForResultLbl()
        setUpConstraintsForConBtn()
    }
    
    private func setUpConstraintsForPasswordLbl(){
        view.addSubview(passwordLbl)
        NSLayoutConstraint.activate([
            passwordLbl.topAnchor.constraint(equalTo: view.topAnchor, constant: 120),
            passwordLbl.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20)
        ])
    }
    
    private func setUpConstraintsForPasswordTf(){
        view.addSubview(passwordTf)
        NSLayoutConstraint.activate([
            passwordTf.topAnchor.constraint(equalTo: passwordLbl.bottomAnchor, constant: 20),
            passwordTf.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            passwordTf.heightAnchor.constraint(equalToConstant: 35),
            passwordTf.widthAnchor.constraint(equalToConstant: 200)
        ])
    }
    
    private func setUpConstraintsForConfirmLbl(){
        view.addSubview(confirmLbl)
        NSLayoutConstraint.activate([
            confirmLbl.topAnchor.constraint(equalTo: passwordTf.bottomAnchor, constant: 50),
            confirmLbl.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20)
        ])
    }
    
    private func setUpConstraintsForConfirmtf(){
        view.addSubview(confirmTf)
        NSLayoutConstraint.activate([
            confirmTf.topAnchor.constraint(equalTo: confirmLbl.bottomAnchor, constant: 20),
            confirmTf.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            confirmTf.heightAnchor.constraint(equalToConstant: 35),
            confirmTf.widthAnchor.constraint(equalToConstant: 200)
        ])
    }
    
    private func setUpConstraintsForResultLbl(){
        view.addSubview(resultLbl)
        NSLayoutConstraint.activate([
            resultLbl.topAnchor.constraint(equalTo: confirmTf.bottomAnchor, constant: 50),
            resultLbl.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            resultLbl.widthAnchor.constraint(equalToConstant: 200)
        ])
    }
    
    private func setUpConstraintsForConBtn(){
        view.addSubview(conBtn)
        NSLayoutConstraint.activate([
            conBtn.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -100),
            conBtn.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            conBtn.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            conBtn.heightAnchor.constraint(equalToConstant: 40)
        ])
        conBtn.addTarget(self, action: #selector(conBtnTapped), for: .touchUpInside)
    }
    
    @objc func conBtnTapped(){
        checking(tf1: passwordTf.text ?? "", tf2: confirmTf.text ?? "", tf3: resultLbl)
    }
}

