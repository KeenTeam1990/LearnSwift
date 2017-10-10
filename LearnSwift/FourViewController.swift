//
//  FourViewController.swift
//  transtlant
//
//  Created by KT on 2017/9/17.
//  Copyright © 2017年 KEENTEAM. All rights reserved.
//

import UIKit

class FourViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "four"
        self.view.backgroundColor = UIColor.cyan
        setLKBtn()
    
    }

    func setLKBtn() {
        
        let btn : LKButton = LKButton()
        btn.setTitle("图片在上", for: .normal)
        btn.setImage(UIImage.init(named: "appicon"), for: .normal)
        btn.frame = CGRect(x: 130, y: 200, width: 100, height: 100)
        view.addSubview(btn)
        
        
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
