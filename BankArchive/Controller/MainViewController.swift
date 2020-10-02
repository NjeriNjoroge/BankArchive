//
//  ViewController.swift
//  BankArchive
//
//  Created by Grace Njoroge on 01/10/2020.
//  Copyright © 2020 Grace. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

  let bankPicker = BankListView()

  override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = .white

   setupButtonPicker()
  }

  func setupButtonPicker() {
    view.addSubview(bankPicker)
    bankPicker.translatesAutoresizingMaskIntoConstraints = false
    NSLayoutConstraint.activate([
      bankPicker.topAnchor.constraint(equalTo: view.topAnchor),
      bankPicker.leftAnchor.constraint(equalTo: view.leftAnchor),
      bankPicker.rightAnchor.constraint(equalTo: view.rightAnchor),
      bankPicker.bottomAnchor.constraint(equalTo: view.bottomAnchor)
    ])

  }


}

