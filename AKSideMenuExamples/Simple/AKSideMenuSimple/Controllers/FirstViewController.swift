//
//  FirstViewController.swift
//  AKSideMenuSimple
//
//  Created by Diogo Autilio on 6/6/16.
//  Copyright © 2016 AnyKey Entertainment. All rights reserved.
//

import UIKit

public class FirstViewController : UIViewController {
    
    override public func viewDidLoad() {
        super.viewDidLoad()
        self.title = "First Controller"
        self.navigationItem.leftBarButtonItem = UIBarButtonItem.init(title: "Left", style: UIBarButtonItemStyle.Plain, target: self, action: #selector(self.presentLeftMenuViewController(_:)))
        self.navigationItem.rightBarButtonItem = UIBarButtonItem.init(title: "Right", style: UIBarButtonItemStyle.Plain, target: self, action: #selector(self.presentRightMenuViewController(_:)))
        
        let imageView: UIImageView = UIImageView.init(frame: self.view.bounds)
        imageView.contentMode = UIViewContentMode.ScaleAspectFill
        imageView.autoresizingMask = [UIViewAutoresizing.FlexibleWidth , UIViewAutoresizing.FlexibleHeight]
        imageView.image = UIImage.init(named: "Balloon")
        self.view.addSubview(imageView)
    }
    
    public override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        NSLog("FirstViewController will appear")
    }
    
    public override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
        NSLog("FirstViewController will disappear")
    }
}