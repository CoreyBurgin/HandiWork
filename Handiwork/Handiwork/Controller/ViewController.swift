//
//  ViewController.swift
//  Handiwork
//
//  Created by Corey Burgin on 9/8/20.
//  Copyright © 2020 Corey Burgin. All rights reserved.
//

import UIKit






class ViewController: UIViewController {
    
    let canvas = Canvas()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.addSubview(canvas)
        canvas.frame = view.frame
        canvas.backgroundColor = .white
        view.backgroundColor = .blue
    }


}

