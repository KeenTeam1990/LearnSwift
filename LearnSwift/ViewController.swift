//
//  ViewController.swift
//  transtlant
//
//  Created by KT on 2017/9/16.
//  Copyright © 2017年 KEENTEAM. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,sendTextDelegate {

    var lab = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        self.title = "首页"
        let rightBar = UIBarButtonItem(title: "下一页", style: .plain, target: self, action: #selector(nextPage))
        self.navigationItem.rightBarButtonItem = rightBar
        
        lab = UILabel(frame: CGRect(x: KTSCREENWIDTH/2-50, y: 200, width: 100, height: 50))
        lab.backgroundColor = UIColor.white
        lab.layer.cornerRadius = 25
        lab.layer.masksToBounds = true
        lab.textAlignment = .center
        self.view.addSubview(lab)
        
    }
    
    func  nextPage(){
    
    let second = SecondViewController()
    second.delegate = self
    self.navigationController?.pushViewController(second, animated: true)
    
    }
    
    func sendText(controller: SecondViewController, textKT: String) {
        lab.text = textKT;
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

