//
//  KTConst.swift
//  LearnSwift
//
//  Created by KT on 2017/10/23.
//  Copyright © 2017年 KEENTEAM. All rights reserved.
//

import UIKit

enum KTTopicType:Int{

  case Selection = 4
  case Food = 14

}

 

let BASE_URL = "http://api.kt.com"
let KTSCREENWIGTH = UIScreen.main.bounds.size.width
let KTSCRENHIGHT = UIScreen.main.bounds.size.height

let RETURN_OK = 200


func KTColor(r:CGFloat ,g:CGFloat, b:CGFloat, a:CGFloat) -> UIColor{

 return UIColor (red: r/255.0 , green: g/255.0, blue: b/255.0, alpha: a)
    
}

func KTBackgroudColor() -> UIColor {
    
 return KTColor(r: 240, g: 240, b: 240, a: 1)
    
}





















