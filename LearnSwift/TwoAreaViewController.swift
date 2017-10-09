//
//  TwoAreaViewController.swift
//  LearnSwift
//
//  Created by KT on 2017/10/9.
//  Copyright © 2017年 KEENTEAM. All rights reserved.
//

import UIKit
import MapKit

class TwoAreaViewController: UIViewController {

    var areaName : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "地图"
        setMapKitView()
    }

    func setMapKitView() {
        
        let mapView = MKMapView(frame: CGRect(x: 0, y: 0, width: KTSCREENWIDTH, height: KTSCREENHIGHT))
        
        view.addSubview(mapView)
        
        
        
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
