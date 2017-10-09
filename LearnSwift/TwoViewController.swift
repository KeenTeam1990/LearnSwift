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
    
        let dataAr = ["北海","云居寺"," 中央电视塔","十三陵","天安门","雍和宫","玉渊潭","八达岭","颐和园","什刹海","龙庆峡","潭柘寺","九龙游乐园","幽谷神潭","康西草原","京都第一瀑","锡林浩特景区","拉法山国家公园","东平国家森林公园","连州地下河","虎跳峡","九寨沟","珠穆朗玛峰","嘉峪关关城"]
        
       dataArr.addObjects(from: dataAr)

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
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let twoAreaVC = TwoAreaViewController()
       
        twoAreaVC.areaName =  String(describing: dataArr[indexPath.row])
        
        navigationController?.pushViewController(twoAreaVC, animated: true)
        
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
