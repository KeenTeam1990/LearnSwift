//
//  SecondViewController.swift
//  transtlant
//
//  Created by KT on 2017/9/16.
//  Copyright © 2017年 KEENTEAM. All rights reserved.
//

import UIKit

//定义一个协议
protocol sendTextDelegate : NSObjectProtocol {
    
    func  sendText(controller:SecondViewController, textKT:String)
    
}


class SecondViewController: UIViewController {

    var delegate : sendTextDelegate?
    
    override func viewWillAppear(_ animated: Bool) {
       
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "我的"
        self.view.backgroundColor = UIColor.orange
        setBtn()
        setNavargetionBar()
    }

    func setBtn(){
    
        let btn = UIButton(frame: CGRect(x: 100, y: 100, width: 50, height: 30))
        btn.setTitle("点我", for: .normal)
        btn.addTarget(self, action: #selector(tap), for: .touchUpInside)
        self.view.addSubview(btn)
    
    }
    
    func  setNavargetionBar(){
    
        let rightBar = UIBarButtonItem(title: "下一页", style: .plain, target: self, action: #selector(nextPage))
        self.navigationItem.rightBarButtonItem = rightBar
    
    }
    
    func  nextPage(){
    
        let oneVC = OneViewController()
        
        let oneNa = UINavigationController(rootViewController: oneVC)
        oneNa.tabBarItem = UITabBarItem(title: "one", image: nil, tag: 1)
        let twoVC = TwoViewController()
        let twoNa = UINavigationController(rootViewController: twoVC)
        twoNa.tabBarItem = UITabBarItem(title: "two", image: nil, tag: 2)
        let threeVC = ThreeViewController()
        let threeNa = UINavigationController(rootViewController: threeVC)
        threeNa.tabBarItem = UITabBarItem(title: "three", image: nil, tag: 3)
        let fourVC = FourViewController()
        let fourNa = UINavigationController(rootViewController: fourVC)
        fourNa.tabBarItem = UITabBarItem(title: "four", image: nil, tag: 4)
    
        let arrNa = [oneNa,twoNa,threeNa,fourNa]
        let tabBarVC = UITabBarController()
        tabBarVC.viewControllers = arrNa
        
    self.present(tabBarVC, animated: true, completion: nil)
        
    }
    
    func tap(){
        
    _ = navigationController?.popViewController(animated: true)

        if (delegate != nil) {
            delegate?.sendText(controller: self, textKT: "27")
        }
        
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
