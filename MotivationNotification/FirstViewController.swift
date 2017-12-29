//
//  FirstViewController.swift
//  MotivationNotification
//
//  Created by Cory Sparks on 12/28/17.
//  Copyright © 2017 Cory Sparks. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    
    // Screen width.
    public var screenWidth: CGFloat {
        return UIScreen.main.bounds.width
    }
    
    // Screen height.
    public var screenHeight: CGFloat {
        return UIScreen.main.bounds.height
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let num = arc4random_uniform(6)
        let imageName = "image" + String(num) + ".jpg"
        let image = UIImage(named: imageName)
        let imageView = UIImageView(image: image!)
        imageView.contentMode = .scaleAspectFill
        imageView.frame = CGRect(x: 0, y: 0, width: screenWidth, height: screenHeight)
        view.addSubview(imageView)
        
        let blur = UIBlurEffect(style: .light)
        let blurView = UIVisualEffectView(effect: blur)
        blurView.alpha = 0.85
        blurView.contentMode = .scaleAspectFill
        blurView.frame = CGRect(x: 0, y: 0, width: screenWidth, height: screenHeight)
        view.addSubview(blurView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

