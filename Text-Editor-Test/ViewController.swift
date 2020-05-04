//
//  ViewController.swift
//  Text-Editor-Test
//
//  Created by Aryan Sharma on 29/04/20.
//  Copyright © 2020 Aryan Sharma. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var rtView: RichTextEditor!

    override func viewDidLoad() {
        super.viewDidLoad()
        rtView = RichTextEditor(frame: self.view.frame)
        self.view.addSubview(rtView)
        
        let btn = UIBarButtonItem(barButtonSystemItem: .camera, target: nil, action: #selector(bolden))
        let btn2 = UIBarButtonItem(barButtonSystemItem: .compose, target: nil, action: #selector(italics))
        navigationItem.rightBarButtonItems = [btn, btn2]
    }
    
    @objc
    func bolden() {
        rtView.editorView.evaluateJavaScript("richeditor.setBold();", completionHandler: nil)
    }
    
    @objc
    func italics() {
        rtView.editorView.evaluateJavaScript("richeditor.setItalics();", completionHandler: nil)

    }


}

