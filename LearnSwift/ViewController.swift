//
//  ViewController.swift
//  transtlant
//
//  Created by KT on 2017/9/16.
//  Copyright © 2017年 KEENTEAM. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,sendTextDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        self.title = "首页"
        setNavRightBar()
        self.view.addSubview(labF)
        self.view.addSubview(labS)
        
    }
    
    private lazy var labF : UILabel = {
    
    let labF = UILabel(frame: CGRect(x: 15, y: 200, width: 100, height: 50))
        labF.backgroundColor = UIColor.white
        labF.font = UIFont.systemFont(ofSize: 12)
        labF.numberOfLines = 0
        labF.text = "咖啡"
        labF.lineBreakMode = .byTruncatingTail
        let expectSize = labF.sizeThatFits(CGSize(width: 100, height: 9999))
        labF.frame.size.width = expectSize.width
        labF.textAlignment = .center
        print(labF.frame)
        return labF
    }()
    
    private lazy var labS :UILabel = {
    
        let labS = UILabel(frame: CGRect(x:15 , y: 200, width: 100, height: 50))
        labS.backgroundColor = UIColor.white
        labS.font = UIFont.systemFont(ofSize: 12)
        labS.numberOfLines = 0
        labS.text = "喝咖啡的"
        labS.lineBreakMode = .byTruncatingTail
        let expectSize = labS.sizeThatFits(CGSize(width: 100, height: 9999))
        labS.frame.size.width = expectSize.width
        labS.textAlignment = .center
        print(labS.frame)
        return labS
    
    }()
    
    
    func setNavRightBar(){
    
        let rightBar = UIBarButtonItem(title: "下一页", style: .plain, target: self, action: #selector(nextPage))
        self.navigationItem.rightBarButtonItem = rightBar
    
    }
    
    func  nextPage(){
    
    let second = SecondViewController()
    second.delegate = self
    self.navigationController?.pushViewController(second, animated: true)
    
    }
    
    func sendText(controller: SecondViewController, textKT: String) {
        .text = textKT;
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

