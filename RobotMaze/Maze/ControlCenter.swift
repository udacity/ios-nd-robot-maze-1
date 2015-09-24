//
//  ControlCenter.swift
//  Maze
//
//  Created by Jarrod Parkes on 8/14/15.
//  Copyright © 2015 Udacity, Inc. All rights reserved.
//
import UIKit

class ControlCenter {
    
    var cellsInTheGrid: [[MazeCellModel]]!
    
    func moveComplexRobot(robot: ComplexRobotObject) {
        chooseDirection(robot)
    }
    
    
    func isWall(robot: MazeObject) -> Bool {
        
        let cell = self.cellsInTheGrid[robot.location.y][robot.location.x]
        
        var isWall: Bool = false
        
        switch(robot.direction) {
        case .Up:
            if cell.top{
                print("can't move up")
                isWall = true
            }
        case .Down:
            if cell.bottom{
                print("can't move down")
                isWall = true
            }
        case .Left:
            if cell.left {
                print("can't move left")
                isWall = true
            }
        case .Right:
            if cell.right {
                print("can't move right")
                isWall = true
            }
        }
        return isWall
    }
   
    func chooseDirection(robot: ComplexRobotObject) {
        
        if !self.isWall(robot) {
            robot.move()
        } else {
            rotateRightOrLeft(robot)
        }
    }
    
    func rotateRightOrLeft(robot: ComplexRobotObject) {
        let randomNumber = arc4random() % 2
        if randomNumber == 0 {
            robot.rotateLeft()
        } else {
            robot.rotateRight()
        }
    }
    
    func lastMoveFinished(robot: ComplexRobotObject) {
        self.chooseDirection(robot)
    }
}