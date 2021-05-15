//
//  ViewController.swift
//  Animation
//
//  Created by Alexander Sobolev on 09.05.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var viewForAnimation: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//
//        UIView.animate(withDuration: 2.0) {
//
//            self.viewForAnimation.center = self.view.center
//            self.viewForAnimation.alpha = 0.0
//        }
//        UIView.animate(withDuration: 3.0) {
//            self.viewForAnimation.center = self.view.center
//            self.viewForAnimation.transform = CGAffineTransform(rotationAngle: (3 * .pi) / 2).scaledBy(x: 1.5, y: 1.5).translatedBy(x: 0, y: -50)
//        } completion: { _ in
//            UIView.animate(withDuration: 1.0) {
//                self.viewForAnimation.transform = .identity
//            }
        
        self.viewForAnimation.frame.origin.x -= self.view.bounds.width
        UIView.animateKeyframes(withDuration: 3.0, delay: 0.2, options: [.repeat, .autoreverse], animations: {
    
            self.viewForAnimation.frame.origin.x = self.view.bounds.maxX - self.viewForAnimation.frame.width
             
            UIView.addKeyframe(withRelativeStartTime: 0.0, relativeDuration: 0.7) {
                self.viewForAnimation.backgroundColor = .red
            }
            
            UIView.addKeyframe(withRelativeStartTime: 0.2, relativeDuration: 0.8) {
                self.viewForAnimation.alpha = 0.0
            }
            }, completion: nil)

        }

    }














































             



