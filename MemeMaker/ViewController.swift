//
//  ViewController.swift
//  MemeMaker
//
//  Created by Jibryll Brinkley on 5/27/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var topSegmentedControl: UISegmentedControl!
    @IBOutlet weak var bottomSegmentedControl: UISegmentedControl!
    
    @IBOutlet weak var topCaptionLabel: UILabel!
    @IBOutlet weak var bottomCaptionLabel: UILabel!
    
    @IBAction func segmentControlChanged(_ sender: Any) {
    }
    
    var topChoices = [
        CaptionOption(emoji: "💼", caption: "When you're late for work and sprint out the door..."),
        CaptionOption(emoji: "🎶", caption: "When you hear your favorite song playing"),
        CaptionOption(emoji: "💂", caption:"When you are on the way to tell everybody that the british are coming...")
        ]
    
    
    
    var bottomChoices = [
        CaptionOption(emoji: "⌚️", caption: "and you remember you have a meeting in 5 minutes"),
        CaptionOption(emoji: "🪫", caption: " ...but then your phone battery hits 1% "),
        CaptionOption(emoji: "👟", caption: "...but then you trip over your own feet")
        ]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }



}

