//
//  ViewController.swift
//  video_player
//
//  Created by Zakee Tanksley on 3/25/23.
//
import AVKit
import Foundation
import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let player = AVPlayer(url: URL(fileURLWithPath: Bundle.main.path(forResource: "Marvel Studios - the new logo 2016", ofType: "mp4")!))
                              
        let layer = AVPlayerLayer(player: player)
        layer.frame = view.bounds
        view.layer.addSublayer(layer)
                            
        player.play()
                              
    }


}

