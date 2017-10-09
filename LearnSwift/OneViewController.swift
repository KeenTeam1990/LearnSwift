//
//  OneViewController.swift
//  transtlant
//
//  Created by KT on 2017/9/17.
//  Copyright © 2017年 KEENTEAM. All rights reserved.
//

import UIKit

class OneViewController: UIViewController ,UITableViewDelegate,UITableViewDataSource {

    var dataArr = NSMutableArray()
    var  _tableView : UITableView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "one"
        setNavItem()
        setDataArr()
        setTableView()
        self.view.backgroundColor = UIColor.gray
        
    }
   
    func setNavItem(){
    
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "返回", style: .plain, target: self, action: #selector(backClick))
    
    }
    
    func backClick(){
    
    self.dismiss(animated: true, completion: nil)
    
    }
    
    func setDataArr(){
    
        for i in 0...200 {
            dataArr .add("row\(i)")
        }
    }
    
    func setTableView(){
        
    let rect = self.view.bounds
    _tableView = UITableView(frame: rect, style: .plain)
        _tableView?.delegate = self;
        _tableView?.dataSource = self;
        self.view.addSubview(_tableView!)
    
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataArr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var cell = tableView.dequeueReusableCell(withIdentifier: "CELL")
        
        if (cell == nil) {
           
            cell = UITableViewCell(style: .default, reuseIdentifier: "CELL")
            
        }
       
        cell?.textLabel?.text = String(describing: dataArr[indexPath.row])
        
        return cell!
        
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(dataArr[indexPath.row])
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
