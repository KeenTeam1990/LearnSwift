//
//  LKNetworkManger.swift
//
//
//  Created by KT on 2017/4/24.
//  Copyright © 2017年 KT. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class LKNetworkManger: NSObject {

    //单利
    static let sharedInstance: LKNetworkManger = LKNetworkManger()
}

extension LKNetworkManger {
    
    func getRequest(urlString: String,params: [String : Any]?,isShowHUd: Bool,view: UIView?, finished: @escaping (_ response: JSON?, _ error: Error?) -> () ) -> Void {
        
            if isShowHUd {
                if (view != nil) {
                    CJSHUDHelper.showWaittingHUD(message: "", onView: view)
                }else {
                    
                    CJSHUDHelper.showWaittingHUD(message: "")
                }
            }
           Alamofire.request(urlString, method: .get, parameters: params, encoding: URLEncoding.default, headers: nil).responseJSON { (response) in
            
                if response.result.isSuccess {
                    
                    if isShowHUd {
                        
                        if view != nil {
                            CJSHUDHelper.hideHUD(FromView: view)
                        }else {
                            CJSHUDHelper.hideHUD()
                        }
                    }
                    
                    let json = JSON(response.result.value!)
                    finished(json,nil)
                }else {
                    finished(nil,response.result.error as Error?)
                    
                    KTLog(response.result.error.debugDescription)
                    
                    if isShowHUd {
                        
                        if view != nil {
                            CJSHUDHelper.hideHUD(FromView: view)
                        }else {
                            CJSHUDHelper.hideHUD()
                        }
                    }
                    
                    if view != nil {
                        CJSHUDHelper.showMessageHUD(message: "网络连接失败", onView: view)
                    }else {
                        CJSHUDHelper.showMessageHUD(message: "网络连接失败")
                    }
                    
                }
            }
    }
    
    func postRequest(urlString: String,params: [String : Any]?,isShowHUd: Bool,view: UIView?, finished: @escaping (_ response: JSON?, _ error: Error?) -> () ) -> Void {
        
        if isShowHUd {
            if (view != nil) {
                CJSHUDHelper.showWaittingHUD(message: "", onView: view)
            }else {
                
                CJSHUDHelper.showWaittingHUD(message: "")
            }
        }
        
        Alamofire.request(urlString, method: .post, parameters: params, encoding: URLEncoding.default, headers: nil).responseJSON { (response) in
            
            
            if response.result.isSuccess {
                
                if isShowHUd {
                    
                    if view != nil {
                        CJSHUDHelper.hideHUD(FromView: view)
                    }else {
                        CJSHUDHelper.hideHUD()
                    }
                }
                let json = JSON(response.result.value!)
                finished(json,nil)
            }else {
                finished(nil,response.result.error as Error?)
                
                KTLog(response.result.error.debugDescription)
                
                if isShowHUd {
                    
                    if view != nil {
                        CJSHUDHelper.hideHUD(FromView: view)
                    }else {
                        CJSHUDHelper.hideHUD()
                    }
                }
                
                if view != nil {
                    CJSHUDHelper.showMessageHUD(message: "网络连接失败", onView: view)
                }else {
                    CJSHUDHelper.showMessageHUD(message: "网络连接失败")
                }
                
            }
        }
    }

}

extension LKNetworkManger {

    fileprivate func test() {

        /// 设置请求的URLRequest
        let url = URL.init(string: "www.sss")
        var urlRequest = URLRequest(url: url!)

        /// 设置请求的数据编码格式
//        let encoding = Alamofire.URLEncoding.default


        urlRequest.httpMethod = "GET"

        urlRequest.timeoutInterval = 30


        let manger = Alamofire.SessionManager.default
        manger.session.configuration.timeoutIntervalForRequest = 30

        manger.request(urlRequest).responseJSON { (response) in

        }
    }
}
