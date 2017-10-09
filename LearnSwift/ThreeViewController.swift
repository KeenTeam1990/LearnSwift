//
//  ThreeViewController.swift
//  transtlant
//
//  Created by KT on 2017/9/17.
//  Copyright © 2017年 KEENTEAM. All rights reserved.
//

import UIKit

class ThreeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "three"
        self.view.backgroundColor = UIColor.green
        self.view.addSubview(btn)
    }

    
    //懒加载 btn
    private lazy var btn: UIButton = {
    
        let btn = UIButton()
        btn.frame = CGRect(x: 150, y: 300, width: 80, height: 40)
        btn.setTitle("点我", for: .normal)
        btn.backgroundColor = UIColor.orange
        btn.addTarget(self, action: #selector(btnClick), for: .touchUpInside)
    
      return btn
        
    }()
    
    func btnClick(){
    
        let threeNextVC = ThreeNextViewController()
        threeNextVC.name = "ThreeNext"
        navigationController?.pushViewController(threeNextVC, animated: true)
        
//        let alertV = UIAlertView(title: "提示", message: "点我了", delegate: nil, cancelButtonTitle: "取消")
//        alertV.show()
        
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
