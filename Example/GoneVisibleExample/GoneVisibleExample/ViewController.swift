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
//        self.toggleSwitch.isOn = false
//        self.goneViews()
    }
    
    @IBAction func toggleSwitchValueChanged(_ sender: UISwitch) {
        if self.toggleSwitch.isOn {
            self.visibleViews()
            UIView.animate(withDuration: 0.3) { self.view.layoutIfNeeded() }
        } else {
            self.goneViews()
            self.animate(withDuration: 0.3) { self.view.layoutIfNeeded() }
        }
    }
    
    private func goneViews() {
        self.blackView.gone()
        self.redView.gone(axis: .vertical, spaces: [.bottom])
        self.blueView.gone(axis: .horizontal, spaces: [.trailing])
        self.yellowButton.gone(axis: .horizontal, spaces: [.trailing])
        self.errorMessageLabel.gone(axis: .vertical)
    }
    
    private func visibleViews() {
        self.blackView.visible()
        self.redView.visible()
        self.blueView.visible()
        self.yellowButton.visible()
        self.errorMessageLabel.visible()
    }

}

