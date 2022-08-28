//
//  Model.swift
//  AnimationApp
//
//  Created by Владислав on 28.08.22.
//

import Spring

struct AnimationModel {
    let animation: String
    let curve: String
    let force: CGFloat
    let duration: CGFloat
    let delay: CGFloat
    let damping: CGFloat
    let velocity: CGFloat
    let repeatCount: CGFloat
    let rotate: CGFloat
}

func randomNumber() -> CGFloat {
    let number = round(CGFloat(Float.random(in: 0.1...3.0)))
    return number
}

func getModel() -> AnimationModel {
    let animation = Animations.allCases.randomElement()!.rawValue
    let curve = Curve.allCases.randomElement()!.rawValue
    let force = randomNumber()
    let duration = randomNumber()
    let delay = randomNumber()
    let damping = randomNumber()
    let velocity = randomNumber()
    let repeatCount = randomNumber()
    let rotate = randomNumber()
    let model = AnimationModel(animation: animation, curve: curve, force: force, duration: duration, delay: delay, damping: damping, velocity: velocity, repeatCount: repeatCount, rotate: rotate)
    return model
}
