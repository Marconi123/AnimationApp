//
//  MainVC.swift
//  AnimationApp
//
//  Created by Владислав on 28.08.22.
//

import Spring

class MainVC: UIViewController {
    
    // MARK: - Properties
    var animModel: AnimationModel?
    
    // MARK: - IBOutlets


    @IBOutlet weak var springView: SpringView!
    
    @IBOutlet weak var animationDetails: UILabel!
    // MARK: - Life cycle

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - Functions
    
    func setupUI() {
        animationDetails.textColor = .white
        animationDetails.text = " Information:\n animation: \(animModel!.animation),\n curve: \(animModel!.curve),\n force: \(animModel!.force),\n duration: \(animModel!.duration),\n delay: \(animModel!.delay),\n damping: \(animModel!.damping),\n velocity: \(animModel!.velocity),\n repeatCount: \(animModel!.repeatCount),\n rotate: \(animModel!.rotate)"
    }
    
    // MARK: - Actions
    

    @IBAction func springBtnSave(_ sender: SpringButton) {
        animModel = getModel()
        
        springView.animation = animModel!.animation
        springView.curve = animModel!.curve
        springView.force = animModel!.force
        springView.duration = animModel!.duration
        springView.delay = animModel!.delay
        springView.damping = animModel!.damping
        springView.velocity = animModel!.velocity
        springView.rotate = animModel!.rotate
        springView.repeatCount = Float(animModel!.repeatCount)
        springView.animate()
        setupUI()
    }
}
