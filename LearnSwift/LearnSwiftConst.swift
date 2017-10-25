//
//  LearnSwiftConst.swift
//  LearnSwift
//
//  Created by KT on 2017/9/19.
//  Copyright © 2017年 KEENTEAM. All rights reserved.
//

import UIKit

//屏幕宽
let KTSCREENWIDTH = UIScreen.main.bounds.size.width
//屏幕高
let KTSCREENHIGHT = UIScreen.main.bounds.size.height

// MARK:- 颜色方法
func RGBA (_ r:CGFloat, _ g:CGFloat, _ b:CGFloat, _ a:CGFloat) -> UIColor {
    return UIColor (red: r/255.0, green: g/255.0, blue: b/255.0, alpha: a)
}
func RGB (_ r:CGFloat, _ g:CGFloat, _ b:CGFloat) -> UIColor {
    return UIColor (red: r/255.0, green: g/255.0, blue: b/255.0, alpha: 1)
}

//主题颜色 字体 等
let kBgColor = UIColor.hexInt(0xf5f5f5)

let kSelectColor = RGB(247, 90, 0)

let BackGroundColor = RGB(242, 242, 242)

let kNormalColor = UIColor.hexInt(0x666666)

let kBlackColor = UIColor.hexInt(0x333333)


let kMargin: CGFloat = 10

let kRecommendItemWith: CGFloat = (KTSCREENWIDTH - 3 * kMargin) / 2

let kRecommendItemHeight: CGFloat = 110

//hud 时间
let kHud_dismiss = 1.0

// MARK:- 自定义打印方法
func KTLog<T>(_ message : T, file : String = #file, funcName : String = #function, lineNum : Int = #line) {
    
    #if DEBUG
        
        let fileName = (file as NSString).lastPathComponent
        
        print("\(fileName):(\(lineNum))\(message)")
        
    #endif
}
