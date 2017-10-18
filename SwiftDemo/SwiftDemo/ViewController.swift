    //
    //  ViewController.swift
    //  SwiftDemo
    //
    //  Created by apple on 2017/10/12.
    //  Copyright © 2017年 apple. All rights reserved.
    //
    
    import UIKit
    
    class ViewController: UIViewController, UIViewControllerAnimatedTransitioning {
        
        func transitionDuration(using transitionContext: UIViewControllerContextTransitioning?) -> TimeInterval {
            
            return 1.0
        }
        
        func animateTransition(using transitionContext: UIViewControllerContextTransitioning) {
            
//            let twoVC = transitionContext.viewController(forKey: UITransitionContextViewControllerKey)
            
        }
        
        
        override func viewDidLoad() {
            super.viewDidLoad()
            
            self.view.backgroundColor = UIColor.lightGray
            
            let button = UIButton(type: UIButtonType.contactAdd)
            
            button.frame.size = CGSize(width: 80, height: 200)
            
            button.center = self.view.center
            
            button.addTarget(self, action: #selector(click(button:)), for: UIControlEvents.touchUpInside)
            
            self.view.addSubview(button)
            
            
            
        }
        
        @objc func click(button: UIButton) {
            
            self.present(TwoViewController(), animated: true) {
                
            }
        }
        
        override func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
            // Dispose of any resources that can be recreated.
        }
        
        
    }
    
    
