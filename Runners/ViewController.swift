//
//  ViewController.swift
//  Runners
//
//  Created by MANAS VIJAYWARGIYA on 09/08/18.
//  Copyright © 2018 MANAS VIJAYWARGIYA. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var playBtn: UIButton!
    
    var time = 0
    var timer = Timer()
    var btnState = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        timeLabel.text = "0"
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func playBtnTapped(_ sender: Any) {
        if btnState{
            playBtn.setTitle("Pause", for: .normal)
            btnState = false
            timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.addToTime), userInfo: nil, repeats: true)
        }else{
            playBtn.setTitle("Start", for: .normal)
            btnState = true
            timer.invalidate()
        }
    }
    
    @IBAction func stopBtnTapped(_ sender: Any) {
        timer.invalidate()
        time = 0
        timeLabel.text = "0"
        playBtn.setTitle("Start", for: .normal)
    }
    
    @IBAction func resetBtnTapped(_ sender: Any) {
        timer.invalidate()
        time = 0
        timeLabel.text = "0"
        playBtn.setTitle("Start", for: .normal)

    }
    
    @objc func addToTime() {
        time = time + 1
        timeLabel.text = "\(time)"
    }
    
}

