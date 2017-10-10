//
//  ViewController.swift
//  Animations
//
//  Created by Nicolas Guerrero on 10/10/17.
//  Copyright © 2017 Nicolas Guerrero. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var boxView: UIView!
    
    @IBOutlet weak var secondBoxView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    @IBAction func transitionButton(_ sender: Any) {
        
        let transitionOptions: UIViewAnimationOptions = [.transitionFlipFromLeft, .showHideTransitionViews]
        UIView.transition(with: boxView, duration: 1.0, options: transitionOptions, animations: {
            self.boxView.isHidden = false
        })
        
        let transitionOptions2: UIViewAnimationOptions = [.transitionCurlUp, .showHideTransitionViews]
        UIView.transition(with: secondBoxView, duration: 1.0, options: transitionOptions2, animations: {
            self.secondBoxView.isHidden = false
        })
    }
    
    
    @IBAction func fadeButtonTapped(_ sender: Any) {
        
        
//        Spring
//        UIView.animate(withDuration: 2, delay: 0, usingSpringWithDamping: 0, initialSpringVelocity: 0, options: [], animations: {
//                        self.boxView.bounds = CGRect(x: 0, y: 0, width: 100, height: 100)
//                        self.boxView.transform = CGAffineTransform(rotationAngle: 1)
//                        self.boxView.backgroundColor = .green
//        }, completion: nil)
        
//        Options
//        UIView.animate(withDuration: 1, delay: 0, options: UIViewAnimationOptions.curveEaseInOut, animations: {        UIView.animate(withDuration: 1){
//            self.boxView.alpha = 0
//            self.boxView.bounds = CGRect(x: 0, y: 0, width: 100, height: 100)
//            self.boxView.transform = CGAffineTransform(rotationAngle: 1)
//            self.boxView.transform  = CGAffineTransform(scaleX: 2, y: 2)
//            self.boxView.backgroundColor = .green
//            }} ,completion: nil)
//
//        UIView.animate(withDuration: 1){
//            self.boxView.alpha = 0
//            self.boxView.bounds = CGRect(x: 0, y: 0, width: 100, height: 100)
//            self.boxView.transform = CGAffineTransform(rotationAngle: 1)
//            //            self.boxView.transform  = CGAffineTransform(scaleX: 2, y: 2)
//            self.boxView.backgroundColor = .green
//        }
        
    }


    @IBAction func showButtonTapped(_ sender: Any) {
            UIView.animate(withDuration: 1){
                self.boxView.alpha = 1
                self.boxView.bounds = CGRect(x: 100, y: 100, width: 200, height: 200)
                self.boxView.transform = CGAffineTransform(rotationAngle: 0)
//                self.boxView.transform  = CGAffineTransform(scaleX: 1, y: 1)
                self.boxView.backgroundColor = .orange
        }
        
    }
    
    

    

}
