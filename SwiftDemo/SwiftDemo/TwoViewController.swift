//
//  TwoViewController.swift
//  SwiftDemo
//
//  Created by apple on 2017/10/12.
//  Copyright © 2017年 apple. All rights reserved.
//

import UIKit

class TwoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let button = UIButton(type: UIButtonType.contactAdd)
        
        button.frame.size = CGSize(width: 80, height: 200)
        
        button.center = self.view.center
        
        button.addTarget(self, action: #selector(click(button:)), for: UIControlEvents.touchUpInside)
        
        self.view.addSubview(button)


    }
    @objc func click(button: UIButton) {
        
        self.dismiss(animated: true) {
            
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
