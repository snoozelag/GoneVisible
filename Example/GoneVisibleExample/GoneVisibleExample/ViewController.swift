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
    @IBOutlet weak private var toggleButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        self.toggleButtonAction()
    }
    
    @IBAction func didTapToggleButton(_ sender: UIButton) {
        self.toggleButtonAction()
    }
    
    private func toggleButtonAction() {
        if self.blackView.isGone {
            self.toggleButton.setTitle("gone", for: .normal)
            UIView.animate(withDuration: 0.3) {
                self.visibleViews()
                self.view.layoutIfNeeded()
            }
        } else {
            self.toggleButton.setTitle("visible", for: .normal)
            UIView.animate(withDuration: 0.3) {
                self.goneViews()
                self.view.layoutIfNeeded()
            }
        }
    }
    
    private func goneViews() {
        self.blackView.gone()
        self.redView.gone(direction: .height, spaces: [.bottom])
        self.blueView.gone(direction: .width, spaces: [.trailing])
        self.yellowButton.gone(direction: .width, spaces: [.trailing])
        self.errorMessageLabel.gone(direction: .height)
    }
    
    private func visibleViews() {
        self.blackView.visible()
        self.redView.visible()
        self.blueView.visible()
        self.yellowButton.visible()
        self.errorMessageLabel.visible()
    }

}

