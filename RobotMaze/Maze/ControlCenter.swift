//
//  ControlCenter.swift
//  Maze
//
//  Created by Jarrod Parkes on 8/14/15.
//  Copyright © 2015 Udacity, Inc. All rights reserved.
//
import UIKit

class ControlCenter {
    
    //var cellsInTheGrid: [[MazeCellModel]]!
    var mazeController: MazeController!
    
    func moveComplexRobot(robot: ComplexRobotObject) {
        
//        let wallInfo = self.checkWalls(robot)
//        
//        let isThreeWayJunction = self.isJunction(wallInfo.numberOfWalls)
        let isWall = self.isWall(robot, direction: robot.direction)
//        let isDeadEnd =  self.isDeadEnd(wallInfo.numberOfWalls)
//        let isTwoWayPath = !isDeadEnd && !isThreeWayJunction
        
        // Dead End
//        if isDeadEnd {
//            if isWall {
//                robot.rotateRight()
//            } else {
//                robot.move()
//            }
//        }
        
        // Junction: Two types
        // Type 1: Junction with a wall in front of you
//        if isThreeWayJunction && isWall {
//            // don't go back the way you came
//            // decision: right or left
//            randomlyRotateRightOrLeft(robot)
//        }
//        
//        // Type 2: Junction with an option to go straight or turn
//        else if isThreeWayJunction && !isWall {
//            // don't go back the way you came
//            // decision: straight or rotate
//            continueStraightOrRotate(robot, wallInfo: wallInfo)
//        }
//        
//        // TwoWayPath: Turn
//        else if isTwoWayPath && isWall {
//            turnTowardClearPath(robot, wallInfo: wallInfo)
//        }
//        
//        // TwoWayPath: Straightaway
//        else if isTwoWayPath && !isWall {
//            robot.move()
//        }
//        
//        else {
//            print("error")
//    }
    
    }
    
    func isWall(robot: ComplexRobotObject, direction: MazeDirection) -> Bool {
        
        let cell = mazeController.currentCell(robot)
        
        var isWall: Bool = false
        
        switch(direction) {
        case .Up:
            if cell.top{
                isWall = true
            }
        case .Down:
            if cell.bottom {
                isWall = true
            }
        case .Left:
            if cell.left {
                isWall = true
            }
        case .Right:
            if cell.right {
                isWall = true
            }
        }
        return isWall
    }
    
    func isJunction(numberOfWalls: Int) -> Bool {
        if numberOfWalls == 1 {
            return true
        } else {
            return false
        }
    }
    
    func isDeadEnd(numberOfWalls: Int) -> Bool {
        if numberOfWalls == 3 {
            return true
        } else {
            return false
        }
    }

    func checkWalls(robot:ComplexRobotObject) -> (up: Bool, right: Bool, down: Bool, left: Bool, numberOfWalls: Int) {
        var numberOfWalls = 0
        let cell = mazeController.currentCell(robot)
        
        // check up
        let isWallUp = cell.top
        if isWallUp {
            numberOfWalls++
        }
        
        // check right
        let isWallRight = cell.right
        if isWallRight {
            numberOfWalls++
        }

        // check down
        let isWallDown = cell.bottom
        if isWallDown {
            numberOfWalls++
        }
        
        // check left
        let isWallLeft = cell.left
        if isWallLeft {
           numberOfWalls++
        }
        
        return (isWallUp, isWallRight, isWallDown, isWallLeft, numberOfWalls)
    }
    
    func turnTowardClearPath (robot: ComplexRobotObject, wallInfo: (up: Bool, right: Bool, down: Bool, left: Bool, numberOfWalls: Int)) {
        
        if robot.direction == .Up && wallInfo.left {
            robot.rotateRight()
        } else if robot.direction == .Right && wallInfo.up {
            robot.rotateRight()
        } else if robot.direction == .Down && wallInfo.right {
            robot.rotateRight()
        } else if robot.direction == .Left && wallInfo.down {
            robot.rotateRight()
        } else {
            robot.rotateLeft()
        }
    }
    
    func randomlyRotateRightOrLeft(robot: ComplexRobotObject) {
        let randomNumber = arc4random() % 2
        if randomNumber == 0 {
            robot.rotateLeft()
        } else if randomNumber == 1 {
            robot.rotateRight()
        }
    }

    func continueStraightOrRotate(robot: ComplexRobotObject, wallInfo:(up: Bool, right: Bool, down: Bool, left: Bool, numberOfWalls: Int) ) {
        let randomNumber = arc4random() % 2
        if randomNumber == 0 {
            robot.move()
        } else {
           turnTowardClearPath(robot, wallInfo: wallInfo)
        }
    }
    
    func previousMoveIsFinished(robot: ComplexRobotObject) {
            self.moveComplexRobot(robot)
    }
    
}