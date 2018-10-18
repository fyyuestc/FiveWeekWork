//
//  ViewController.swift
//  第五次上机作业
//
//  Created by fanyunyimac on 2018/10/18.
//  Copyright © 2018年 范云翼. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var label : UILabel!
    var button : UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // 第一题判断沙盒目录下是否存在某文件夹
//        let manager = FileManager.default
//        let document = manager.urls(for: .documentDirectory, in: .userDomainMask).first?.path
//        let file = document?.appending("/image")
//        //输出documnet路径，方便查看
//        print(document)
//        //如文件存在
//        if manager.fileExists(atPath: file!){
//            //创建图片文件夹
//            let image = file?.appending("/fyy.png")
//            if manager.fileExists(atPath: image!){
//                do{
//                    let data = try? Data(contentsOf: URL(fileURLWithPath: image!))
//                    let img = UIImage(data: data!)
//                    let imageView = UIImageView(image: img!)
//                    imageView.frame = CGRect(x: 0, y: 100, width: 400, height: 300)
//                    self.view.addSubview(imageView)
//                } catch {
//                    print(error)
//                }
//            //若不存在，则从网络下载一个图片保存至文件夹
//            } else {
//                let url = URL(string: "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1539856023865&di=62dc45a93e1880876b6e68a7204ef77b&imgtype=0&src=http%3A%2F%2Fwww.08160.cn%2Fuploads%2Fallimg%2F180228%2F21-1P22QZ956.jpg")
//                do {
//                    let data = try? Data(contentsOf: url!)
//                    try? data?.write(to: URL(fileURLWithPath: image!), options: .atomicWrite)
//                    print("文件不存在，现已创建")
//                } catch {
//                    print(error)
//                }
//            }
//        //该文件夹不存在，则创建文件夹
//        } else {
//            do {
//                try? manager.createDirectory(atPath: file!, withIntermediateDirectories: true, attributes: nil)
//                print("文件不存在，现已创建")
//            } catch {
//                print(error)
//            }
//        }
//        //第二题
//        //椭圆
//        let oval = MyView(frame: CGRect(x: 120, y: 120, width: 150, height: 100))
//        oval.backgroundColor = UIColor.clear
//        self.view.addSubview(oval)
//        //圆
//        let circle = MyView(frame: CGRect(x: 100, y: 300, width: 100, height: 100))
//        circle.backgroundColor = UIColor.clear
//        self.view.addSubview(circle)
        
        label = UILabel(frame: CGRect(x: 200, y: 200, width: 200, height: 100))
        label.text = "fyy's Label"
        label.backgroundColor = UIColor.red
        label.textAlignment = .center
        label.center = view.center
        view.addSubview(label)
        
        button = UIButton(frame: CGRect(x: 100, y: 100, width: 200, height: 200 ))
        button.setTitle("click me", for: .normal)
        button.setTitleColor(UIColor.green, for: .normal)
        view.addSubview(button)
        button.addTarget(self, action: #selector(clicked), for: .touchUpInside)
    }
    
    @IBAction func clicked() {
        if label.text! == "fyy's Label" {
            label.text = "clicked!!!"
        }else {
            label.text = "fyy's Label"
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}






