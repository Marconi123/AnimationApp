//
//  BaseVC.swift
//  AnimationApp
//
//  Created by Владислав on 29.08.22.
//

import NVActivityIndicatorView
import NVActivityIndicatorViewExtended
import UIKit

class BaseVC: UIViewController, NVActivityIndicatorViewable {
    var indicator = NVActivityIndicatorType.ballDoubleBounce

    func startAnimation(message: String, type: NVActivityIndicatorType) {
        startAnimating(message: message, type: type)
    }

    func stopAnimation() {
        stopAnimating()
    }
}
