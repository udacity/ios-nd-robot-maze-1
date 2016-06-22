//
//  ViewController.swift
//  Maze
//
//  Created by Jarrod Parkes on 8/14/15.
//  Copyright © 2015 Udacity, Inc. All rights reserved.
//

import UIKit

// MARK: - MazeViewController

class MazeViewController: UIViewController {

    // MARK: Properties
    
    @IBOutlet weak var mazeView: MazeView!
    private var mazeController: MazeController!
    
    // MARK: Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()        
        mazeController = MazeController(plistFile: "Maze1", mazeView: mazeView)
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        if mazeView.rows() == 0 || mazeView.columns() == 0 {
            print("Error: Maze contains no rows or columns!")
            return
        }
        addSimpleRobot()
        addStar()
    }

    // MARK: Add MazeObjects
    
    func addStar() {
        let star = Star(location: MazeLocation(x: 0, y: 1), imagePath: "star.png")
        mazeController.addMazeObject(star)
        star.actionHandler = { (object: MazeObject) -> Void in
            if object is ComplexRobot {
                print("Completion Code: Ud@c10u$")
            } else if object is SimpleRobot {
                print("Completion Code: Ud@c1ty")
            }
            UIView.animateWithDuration(1.0, animations: {
                star.view.alpha = 0
                star.view.frame = CGRectInset(star.view.frame, -50, -50)
                }, completion: { (complete) -> Void in
                    star.view.layer.removeAllAnimations()
            })
        }
    }
    
    func addSimpleRobot() {
        let controlCenter = ControlCenter()
        let simpleRobot = SimpleRobotObject(location: MazeLocation(x: 3, y: 2), direction: MazeDirection.Up, imagePath: "robot.png")
        mazeController.addMazeObject(simpleRobot)
        controlCenter.moveSimpleRobot(simpleRobot)
    }
}