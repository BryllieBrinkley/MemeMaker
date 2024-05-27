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
        setupCaptions()
    }
    @IBAction func dragTopLabel(_ sender: UIPanGestureRecognizer) {
        if sender.state == .changed {
            topCaptionLabel.center = sender.location(in: view)
        }
    }
    
    @IBAction func dragBottomLabel(_ sender: UIPanGestureRecognizer) {
        if sender.state == .changed {
            bottomCaptionLabel.center = sender.location(in: view)
        }
    }
    
    
    
    var topChoices = [
        CaptionOption(emoji: "💼", caption: "When you're late for work and sprint out the door..."),
        CaptionOption(emoji: "🎶", caption: "When you hear your favorite song playing"),
        CaptionOption(emoji: "💂", caption:"When you are on the way to tell everybody that the british are coming...")
        ]
    
    var bottomChoices = [
        CaptionOption(emoji: "⌚️", caption: "and you remember you have a meeting in 5 minutes"),
        CaptionOption(emoji: "🪫", caption: "but then your phone battery hits 1% "),
        CaptionOption(emoji: "👟", caption: "but then you trip over your own feet")
        ]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        topSegmentedControl.removeAllSegments()
        bottomSegmentedControl.removeAllSegments()
        
        
        for choice in topChoices {
            topSegmentedControl.insertSegment(withTitle: choice.emoji, at: topChoices.count, animated: false)
            topSegmentedControl.selectedSegmentIndex = 0
        }
        
        for choice in bottomChoices {
            bottomSegmentedControl.insertSegment(withTitle: choice.emoji, at: bottomChoices.count, animated: false)
            bottomSegmentedControl.selectedSegmentIndex = 0
        }
        setupCaptions()
    }

    
    func setupCaptions() {
        let topIndex = topSegmentedControl.selectedSegmentIndex
        let bottomIndex = bottomSegmentedControl.selectedSegmentIndex

        topCaptionLabel.text = topChoices[topIndex].caption
        bottomCaptionLabel.text = bottomChoices[bottomIndex].caption
    }

}

