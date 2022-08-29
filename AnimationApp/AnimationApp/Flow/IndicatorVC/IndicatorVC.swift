//
//  IndicatorVC.swift
//  AnimationApp
//
//  Created by Владислав on 29.08.22.
//

import UIKit
import NVActivityIndicatorView
import NVActivityIndicatorViewExtended

final class IndicatorVC: BaseVC {

    @IBAction private func indicatorStartBtn(_ sender: UIButton) {
        startAnimating(message: "Loading", type: indicator)
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 3) {
            self.stopAnimating()
        }
    }
}
