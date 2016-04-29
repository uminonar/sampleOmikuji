//
//  ViewController.swift
//  sampleOmikuji
//
//  Created by RIho OKubo on 2016/04/29.
//  Copyright © 2016年 RIho OKubo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var myImage: UIImageView!
    var omikuji = ["大吉","吉","中吉","小吉","末吉","凶","大凶"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func tapBtn(sender: UIButton) {
        print("占いボタン押された")
        //占いのどれか一つをランダムに選ぶ
        var r = Int(arc4random()) % omikuji.count
        
        print(r)
        
        //アラートを作る
        var alertController =
            UIAlertController(title: "今日の運勢", message: omikuji[r], preferredStyle: .Alert)
        //OKボタン追加
        alertController.addAction(UIAlertAction(title: "OK", style: .Default, handler:{action in self.myAction(r)}))
        
        //アラートを表示
        presentViewController(alertController, animated: true, completion: nil)
    
    }
    
    func myAction(r:Int){
        //activity -> 指定されたアクティビティ名
        
        myImage.image = UIImage(named: "sample\(r).JPG")
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

