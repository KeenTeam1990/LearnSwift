//
//  TwoAreaViewController.swift
//  LearnSwift
//
//  Created by KT on 2017/10/9.
//  Copyright © 2017年 KEENTEAM. All rights reserved.
//

import UIKit
import MapKit

class TwoAreaViewController: UIViewController , MKMapViewDelegate{

    var areaName : String?
    var mapView  : MKMapView?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "地图"
        setMapKitView()
        setMapKit()
        
    }

    func setMapKitView() {
        
        mapView = MKMapView(frame: CGRect(x: 0, y: 0, width: KTSCREENWIDTH, height: KTSCREENHIGHT))
        mapView?.delegate = self
        view.addSubview(mapView!)
        if #available(iOS 9.0, *) {
            mapView?.showsScale = true
            mapView?.showsCompass = true
            mapView?.showsTraffic = true
            mapView?.showsUserLocation = true
        }
        
    }
    
    func setMapKit() {
        
        let coder = CLGeocoder()
        coder.geocodeAddressString(areaName!) { (ps, error) in
            guard let ps = ps else{
            print(error ?? "未知错误")
            return
            }
            
            let place = ps.first
            let annotation = MKPointAnnotation()
            annotation.title = self.areaName
            annotation.subtitle = self.areaName
            
            if let loc = place?.location{
            
                annotation.coordinate = loc.coordinate
                self.mapView?.showAnnotations([annotation], animated: true)
                self.mapView?.selectAnnotation(annotation, animated: true)
            
            }
        }
    }
    
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        
        if annotation is MKUserLocation{
        return nil
        }
        
        let id = "myAnontationId"
        var av = mapView.dequeueReusableAnnotationView(withIdentifier: id
        ) as? MKPinAnnotationView
        if av == nil {
            av = MKPinAnnotationView(annotation: annotation, reuseIdentifier: id)
            av?.canShowCallout = true
        }
        
        let leftIconView = UIImageView(frame: CGRect(x: 0, y: 0, width: 53, height: 53))
        leftIconView.image = UIImage(named:"appicon")
        av?.leftCalloutAccessoryView = leftIconView
        if #available(iOS 9.0, *) {
            av?.pinTintColor = UIColor.green
        }
        
     return av
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
