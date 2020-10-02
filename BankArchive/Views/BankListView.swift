//
//  MainView.swift
//  BankArchive
//
//  Created by Grace Njoroge on 01/10/2020.
//  Copyright © 2020 Grace. All rights reserved.
//

import UIKit

class BankListView: UIView {

  lazy var estoniaButton: UIButton = {
    let btn = UIButton(type: .system)
    btn.setTitle("Estonia", for: .normal)
    btn.backgroundColor = UIColor(hexString: "3d405b")
    btn.setTitleColor(.white, for: .normal)
    btn.translatesAutoresizingMaskIntoConstraints = false
    return btn
  }()

  lazy var latviaButton: UIButton = {
    let btn = UIButton(type: .system)
    btn.translatesAutoresizingMaskIntoConstraints = false
    btn.backgroundColor = UIColor(hexString: "3d405b")
    btn.setTitleColor(.white, for: .normal)
    btn.setTitle("Latvia", for: .normal)
    return btn
  }()

  lazy var lithuaniaButton: UIButton = {
    let btn = UIButton(type: .system)
    btn.translatesAutoresizingMaskIntoConstraints = false
    btn.backgroundColor = UIColor(hexString: "3d405b")
    btn.setTitleColor(.white, for: .normal)
    btn.setTitle("Lithuania", for: .normal)
    return btn
  }()

  lazy var containerView: UIView = {
    let vw = UIView()
    vw.backgroundColor = UIColor(hexString: "#F2F2F2")
    vw.translatesAutoresizingMaskIntoConstraints = false
    return vw
  }()

  lazy var chooseLabel: UIView = {
    let label = UILabel()
    label.text = "Choose a bank"
    label.font = UIFont.boldSystemFont(ofSize: 34)
    label.textColor = UIColor(hexString: "#ff9167")
    label.translatesAutoresizingMaskIntoConstraints = false
    return label
  }()


  override init(frame: CGRect) {
    super.init(frame: frame)
    setupButtons()
  }

  func setupButtons() {
    addSubview(containerView)
    addSubview(chooseLabel)
    NSLayoutConstraint.activate([
      chooseLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
      chooseLabel.bottomAnchor.constraint(equalTo: containerView.topAnchor, constant: -20)
    ])
    NSLayoutConstraint.activate([
      containerView.centerXAnchor.constraint(equalTo: centerXAnchor),
      containerView.centerYAnchor.constraint(equalTo: centerYAnchor),
      containerView.heightAnchor.constraint(equalToConstant: 150),
      containerView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 7),
      containerView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -7)
    ])
    containerView.addSubview(estoniaButton)
    containerView.addSubview(latviaButton)
    containerView.addSubview(lithuaniaButton)
    NSLayoutConstraint.activate([
      estoniaButton.heightAnchor.constraint(equalToConstant: 44),
      estoniaButton.topAnchor.constraint(equalTo: containerView.topAnchor),
      estoniaButton.leftAnchor.constraint(equalTo: containerView.leftAnchor),
      estoniaButton.rightAnchor.constraint(equalTo: containerView.rightAnchor)
    ])
    NSLayoutConstraint.activate([
      latviaButton.heightAnchor.constraint(equalToConstant: 44),
      latviaButton.topAnchor.constraint(equalTo: estoniaButton.bottomAnchor, constant: 5),
      latviaButton.leftAnchor.constraint(equalTo: containerView.leftAnchor),
      latviaButton.rightAnchor.constraint(equalTo: containerView.rightAnchor)
    ])
    NSLayoutConstraint.activate([
      lithuaniaButton.heightAnchor.constraint(equalToConstant: 44),
      lithuaniaButton.topAnchor.constraint(equalTo: latviaButton.bottomAnchor, constant: 5),
      lithuaniaButton.leftAnchor.constraint(equalTo: containerView.leftAnchor),
      lithuaniaButton.rightAnchor.constraint(equalTo: containerView.rightAnchor)
    ])

  }

  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }


}
