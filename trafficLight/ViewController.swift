//
//  ViewController.swift
//  trafficLight
//
//  Created by Mac on 06.11.2023.
//

import UIKit

final class ViewController: UIViewController {
    
    @IBOutlet weak var redLight: UIView!
    @IBOutlet weak var yellowLight: UIView!
    @IBOutlet weak var greenLight: UIView!
    
    @IBOutlet weak var actionButton: UIButton!
    
    enum Light {
        case red
        case yellow
        case green
    }
    var statusLight: Light = .red
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLight.layer.cornerRadius = redLight.bounds.width * 0.5
        yellowLight.layer.cornerRadius = yellowLight.bounds.width * 0.5
        greenLight.layer.cornerRadius = greenLight.bounds.width * 0.5
        actionButton.layer.cornerRadius = 15
    }
    @IBAction func actionButtonDidTapped(_ sender: UIButton) {
        sender.setTitle("Next", for: .normal)
        startTrafficLighter()
    }
    
    private func startTrafficLighter() {
        switch statusLight {
        case .red:
            redLight.alpha = 1
            yellowLight.alpha = 0.3
            greenLight.alpha = 0.3
            statusLight = .yellow
        case .yellow:
            yellowLight.alpha = 1
            greenLight.alpha = 0.3
            redLight.alpha = 0.3
            statusLight = .green
        case .green:
            greenLight.alpha = 1
            redLight.alpha = 0.3
            yellowLight.alpha = 0.3
            statusLight = .red
        }
        
    }
    
}



