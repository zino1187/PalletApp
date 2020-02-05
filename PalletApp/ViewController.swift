//
//  ViewController.swift
//  PalletApp
//
//  Created by zino-mac on 2020/02/05.
//  Copyright © 2020 zino-mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let colors = [
        UIColor.red, UIColor.orange, UIColor.yellow, UIColor.green, UIColor.blue,
        UIColor.brown ,UIColor.purple
    ]
    var arr:Array = Array<UIView>()
    var index:Int=0
    
    @IBOutlet weak var canvas: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        createRect()
    }
    
    func createRect(){
        for i in 0 ... colors.count-1{
            var rect = UIView(frame: CGRect(x: 200+(i*52), y: 60, width: 50, height: 50))
            rect.backgroundColor = colors[i]
            self.view.addSubview(rect)
            
            let gesture = UITapGestureRecognizer(target: self, action: #selector(viewClick))
            
            rect.addGestureRecognizer(gesture)
            arr.append(rect)
        }
    }
    
    
    @objc func viewClick(sender:UITapGestureRecognizer){
        //sender.view?.backgroundColor = UIColor.black
        canvas.backgroundColor = sender.view?.backgroundColor
    }
    
}

