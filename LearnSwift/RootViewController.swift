//
//  RootViewController.swift
//  LearnSwift
//
//  Created by KT on 2017/10/27.
//  Copyright © 2017年 KEENTEAM. All rights reserved.
//

import UIKit

class RootViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.addSubview(ktLoginV)
       
        
        ktLoginV.setClick({ (textF, TextS) in
           
        print(textF!)
            
        let vc = ViewController()
        let na = UINavigationController(rootViewController: vc)
        self.present(na, animated: true, completion: nil)
            
        })
        
    }

    private lazy var ktLoginV : WSLoginView = {
    
        let ktLoginV =  WSLoginView(frame:self.view.bounds)
         ktLoginV.titleLabel.text = "安全登录"
        ktLoginV.titleLabel.textColor = UIColor.gray
        ktLoginV.hideEyesType = AllEyesHide

        return ktLoginV
    
    }()
    
    
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
