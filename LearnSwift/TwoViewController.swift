//
//  TwoViewController.swift
//  transtlant
//
//  Created by KT on 2017/9/17.
//  Copyright © 2017年 KEENTEAM. All rights reserved.
//

import UIKit

class TwoViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var dataArr = NSMutableArray()
    var _tableView = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.blue
        self.title = "two"
        setTableView()
        setDataSource()
        
    }
    
    func setDataSource(){
    
        for i in 1...10 {
            
            if i%2 == 0 {
                 dataArr.add("row刷卡缴费拉克丝巨峰路\(i)")
            }else{
            
                dataArr.add("row刷卡缴费拉克丝巨峰路卡话费卡拉斯加福利卡拉卡时空裂缝哈考虑是否会；卡回复看见爱上卡手机号福克斯\(i)")
            }
            
          
        }
    
        for i in 11...14 {
            dataArr.add("row刷卡缴费拉克丝巨峰路卡话费卡拉斯加福利卡拉卡时空裂缝哈考虑是否会；卡回复看见爱上卡手机号福克斯爱上卡手机号福克爱上卡手机号福克爱上卡手机号福克\(i)")
        }

    }
    
    func  setTableView(){
    
    _tableView = UITableView(frame: self.view.frame, style: .plain)
        _tableView.delegate = self
        _tableView.dataSource = self
        self.view.addSubview(_tableView)
        let nibCell = UINib(nibName: "TwoTableViewCell", bundle: nil)
        _tableView.register(nibCell, forCellReuseIdentifier: "cell")
        _tableView.estimatedRowHeight = 230
        _tableView.rowHeight = UITableViewAutomaticDimension
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataArr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TwoTableViewCell
        
        cell.lebell.text = String(describing: dataArr[indexPath.row])

        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
          return 0.0000001
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
