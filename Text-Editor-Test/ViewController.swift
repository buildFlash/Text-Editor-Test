//
//  ViewController.swift
//  Text-Editor-Test
//
//  Created by Aryan Sharma on 29/04/20.
//  Copyright © 2020 Aryan Sharma. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let rtView = RichTextEditor(frame: self.view.frame)
        self.view.addSubview(rtView)
    }


}

