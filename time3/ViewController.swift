//
//  ViewController.swift
//  time3
//
//  Created by User19 on 2019/1/13.
//  Copyright © 2019 bob. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var pic: UIImageView!
    @IBOutlet weak var time2: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        var time4=0
        var pictiupe=1
        var picture=["1.jpg","2.jpg","3.jpg","4.jpg","5.jpg","6.jpg","7.jpg","8.jpg","9.jpg","10.jpg"]
        var myImageView = UIImageView(
            frame: CGRect(
                x: 0,
                y: 0,
                width: 375,
                height: 303))
        myImageView.image = UIImage(named:"1.jgp")
        self.pic.addSubview(myImageView)
        Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { (_) in
            time4+=1
            if time4==5{
                if pictiupe==10{
                    pictiupe=0
                    picture.shuffle()
                    for i in picture{
                        print(i)
                    }
                }
                myImageView.image = UIImage(named:picture[pictiupe])
                pictiupe+=1
                time4=0
                self.pic.addSubview(myImageView)
            }

            let now = Date()
            let formatter = DateFormatter()
            formatter.dateFormat = "HH:mm:ss\nyyyy/MMM/dd E"
            let time = formatter.string(from: now)
            self.time2.text=time
           // print(time)
        }
        // Do any additional setup after loading the view, typically from a nib.
    }


}

