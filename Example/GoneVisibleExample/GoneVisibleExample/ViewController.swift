//
//  ViewController.swift
//  GoneVisible
//
//  Created by Teruto Yamasaki on 2017/04/19.
//  Copyright © 2017年 Teruto Yamasaki. All rights reserved.
//

import UIKit
import GoneVisible

class ViewController: UIViewController {
    
    @IBOutlet weak private var blackView: UIView!
    @IBOutlet weak private var redView: UIView!
    @IBOutlet weak private var blueView: UIView!
    @IBOutlet weak private var yellowButton: UIButton!
    @IBOutlet weak private var errorMessageLabel: UILabel!
    @IBOutlet weak private var toggleSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // When you want to display in "gone" state from the beginning.
//        toggleSwitch.isOn = false
//        goneViews()
    }
    
    @IBAction func toggleSwitchValueChanged(_ sender: UISwitch) {
        if toggleSwitch.isOn {
            visibleViews()
            UIView.animate(withDuration: 0.3) { self.view.layoutIfNeeded() }
        } else {
            goneViews()
            UIView.animate(withDuration: 0.3) { self.view.layoutIfNeeded() }
        }
    }
    
    private func goneViews() {
        blackView.gone()
        redView.gone(axis: .vertical, spaces: [.bottom])
        blueView.gone(axis: .horizontal, spaces: [.trailing])
        yellowButton.gone(axis: .horizontal, spaces: [.trailing])
        errorMessageLabel.gone(axis: .vertical)
    }
    
    private func visibleViews() {
        blackView.visible()
        redView.visible()
        blueView.visible()
        yellowButton.visible()
        errorMessageLabel.visible()
    }

}

