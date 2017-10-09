//
//  ThreeNextViewController.swift
//  transtlant
//
//  Created by KT on 2017/9/19.
//  Copyright © 2017年 KEENTEAM. All rights reserved.
//

import UIKit


class ThreeNextViewController: UIViewController, UIWebViewDelegate {

    var name  = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "百度一下"
        self.view.backgroundColor = UIColor.white
        let webView = UIWebView()
        webView.delegate = self
        webView.frame = view.bounds
        webView.scalesPageToFit = true
        let  url  = URL(string: "https://www.baidu.com")
        let  request = URLRequest(url: url!)
        webView.loadRequest(request)
        view.addSubview(webView)
    }

    func webViewDidStartLoad(_ webView: UIWebView) {
        
        UIApplication.shared.isNetworkActivityIndicatorVisible = true
        
    }
    
    func webViewDidFinishLoad(_ webView: UIWebView) {
        
        UIApplication.shared.isNetworkActivityIndicatorVisible = false
        
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
