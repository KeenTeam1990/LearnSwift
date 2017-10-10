//
//  LKFileManger.swift
//
//
//  Created by KT on 2017/5/22.
//  Copyright © 2017年 KT. All rights reserved.
//

import UIKit

class LKFileManger: NSObject {

    /// 单利
    static let sharedInstance: LKFileManger = LKFileManger()

    ///
    /// 获取Documents路径
    ///
    /// - Returns: 返回路径
    public func getDocumentsPath() -> String{

        let paths = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)

        let path = paths.first

        print(path!)

        return path!
    }

    /// 根据传入的文件夹名创建文件夹📂
    ///
    /// - Parameter directoryName: 传入的文件夹名
    public func createDirectory(_ directoryName: String) {

        /// 获取路径
        let path = LKFileManger.sharedInstance.getDocumentsPath()

        /// 创建文件管理者
        let fileManger = FileManager.default

        /// 创建文件夹
        let directoryPath = path + ("/\(directoryName)")

        do {
            try fileManger.createDirectory(atPath: directoryPath, withIntermediateDirectories: true, attributes: nil)
            print("文件夹创建成功")
        } catch let error  {
            print(error.localizedDescription)
            print("文件夹创建失败")
        }
    }

    /// 根据传入的文件名创建文件
    ///
    /// - Parameter fileName: 传入的文件名
    /// - Returns: 返回文件名
    public func createFile(_ fileName: String) -> (String){

        /// 获取路径
        let path = LKFileManger.sharedInstance.getDocumentsPath()

        /// 创建文件管理者
        let fileManger = FileManager.default

        /// 创建文件
        let filePath = path + ("/\(fileName)")

        if !fileManger.fileExists(atPath: filePath) { /// 先判断是否存在  不存在再创建

            let isSuccess = fileManger.createFile(atPath: filePath, contents: nil, attributes: nil)

            if isSuccess {
                print("文件创建成功")
            }else {
                print("文件创建失败")
            }
        }

        return filePath
    }

   
    public func writeFile(_ data: AnyObject,  _ filePath: String) -> Bool {

        return  data.write(toFile: filePath, atomically: true)
    }

    
    public func readFileContent(_ filePath: String) -> AnyObject {

        /// 因为我的项目是存的数组 所以我返回的数组
        return NSArray(contentsOfFile: filePath) ?? []
    }

    public func getFileSize(_ fileName: String) -> Double {

        let fileManger = FileManager.default

        guard fileManger.fileExists(atPath: fileName) else {
            return 0
        }

        let attr = try! fileManger.attributesOfItem(atPath: fileName)

        let fileSize = Double((attr as NSDictionary).fileSize())

        return fileSize/1024/1024
    }

}
