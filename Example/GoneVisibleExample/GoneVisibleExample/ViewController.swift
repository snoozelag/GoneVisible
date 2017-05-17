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
        // self.toggleButtonAction()
        //  or
        // self.someView.gone()
    }
    
    @IBAction func toggleSwitchValueChanged(_ sender: UISwitch) {
        self.toggleButtonActionWithAnimation()
        // self.toggleButtonActionWithoutAnimation()
    }
    
    // Gone with Animation.
    private func toggleButtonActionWithAnimation() {
        if self.toggleSwitch.isOn {
            self.view.layoutIfNeeded()
            UIView.animate(withDuration: 0.3) {
                self.visibleViews()
                self.view.layoutIfNeeded()
            }
        } else {
            self.view.layoutIfNeeded()
            UIView.animate(withDuration: 0.3) {
                self.goneViews()
                self.view.layoutIfNeeded()
            }
        }
    }
    
    // Gone without Animation.
//    private func toggleButtonActionWithoutAnimation() {
//        if self.blackView.isGone {
//            self.view.layoutIfNeeded()
//            self.visibleViews()
//            self.view.layoutIfNeeded()
//        } else {
//            self.view.layoutIfNeeded()
//            self.goneViews()
//            self.view.layoutIfNeeded()
//        }
//        
//    }
    
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

