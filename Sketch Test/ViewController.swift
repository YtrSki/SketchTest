//
//  ViewController.swift
//  Sketch Test
//
//  Created by YutaroSakai on 2020/10/01.
//

import UIKit
import Sketch

class ViewController: UIViewController {
    @IBAction func colorSegment(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            sketchView.lineColor = .red
            break
        case 1:
            sketchView.lineColor = .green
            break
        case 2:
            sketchView.lineColor = .blue
            break
        case 3:
            sketchView.lineColor = .black
            break
        default:
            sketchView.lineColor = .black
        }
    }
    @IBAction func toolSegment(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            sketchView.drawTool = .pen
            sketchView.lineAlpha = 1
            break
        case 1:
            sketchView.drawTool = .eraser
            sketchView.lineAlpha = 0
            break
        default:
            sketchView.drawTool = .pen
        }
    }
    @IBAction func thicknessSegment(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            sketchView.lineWidth = CGFloat(10.0)
        default:
            sketchView.lineWidth = CGFloat(5.0)
        }
    }
    @IBAction func clearButton(_ sender: Any) {
        sketchView.clear()
    }
    @IBOutlet weak var canvasView: UIView!
    
    
    
    @IBOutlet weak var sketchView: SketchView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        sketchView.drawingPenType = .normal
        sketchView.lineColor = .red
        sketchView.lineWidth = CGFloat(10.0)
        
        canvasView.layer.shadowOpacity = 0.3
        canvasView.layer.shadowRadius = 10
    }


}

