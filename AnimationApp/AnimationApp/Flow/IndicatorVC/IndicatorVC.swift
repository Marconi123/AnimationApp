//
//  IndicatorVC.swift
//  AnimationApp
//
//  Created by Владислав on 29.08.22.
//

import NVActivityIndicatorView
import NVActivityIndicatorViewExtended
import UIKit

final class IndicatorVC: BaseVC {
    @IBAction private func indicatorStartBtn(_ sender: UIButton) {
        indicator = NVActivityIndicatorType.allCases.randomElement()!
        startAnimation(message: "Loading", type: indicator)
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 3) {
            self.stopAnimation()
        }
    }
}
