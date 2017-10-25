//
//  ViewController.swift
//  transtlant
//
//  Created by KT on 2017/9/16.
//  Copyright © 2017年 KEENTEAM. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,sendTextDelegate,SalePromotionImageViewDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        self.title = "首页"
        setRightBar()
        self.view.addSubview(labF)
        self.view.addSubview(labS)
        self.view.addSubview(saleImgeView)
        
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
    
    private lazy var saleImgeView : SalePromotionImageView = {
    
        let saleImgeView = SalePromotionImageView(frame: CGRect(x: 20 , y: 100, width: 49, height: 54))
        
        saleImgeView?.defaultImageName = "Home_sale_promotion"
        saleImgeView?.delegate = self
        
      return saleImgeView!
    }()
    
    func salePromotionImageView(_ salePromotionImageView: SalePromotionImageView!, didClickAtPromotionView flag: String!) {
        
        
    }
    
    func setRightBar() {
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "下一页", style: .plain, target: self, action:  #selector(nextPage))
    
    }
    
    func  nextPage(){
    
    let second = SecondViewController()
    second.delegate = self
    self.navigationController?.pushViewController(second, animated: true)
    
    }
    
    func sendText(controller: SecondViewController, textKT: String) {
        print(textKT)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

