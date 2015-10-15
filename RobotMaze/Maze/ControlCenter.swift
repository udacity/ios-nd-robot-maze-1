//
//  ControlCenter.swift
//  Maze
//
//  Created by Jarrod Parkes on 8/14/15.
//  Copyright © 2015 Udacity, Inc. All rights reserved.
//
import UIKit

class ControlCenter {

    var mazeController: MazeController!

    func moveComplexRobot(robot: ComplexRobotObject) {
        
        // Step 1
        // TODO: Call the method, isWall(), and define a constant to be equal to its return value.
        
        // Step 2
        // TODO: Save the return value of checkWalls() to a constant called, wallInfo.
        
        //Step 3
        //let isThreeWayJunction = (wallInfo.numberOfWalls == 1)
        // TODO: Define the constant, isTwoWayPath
        // TODO: Define the constant, isDeadEnd
        
        // If statement that enables the robot to choose a move
//        if isThreeWayJunction && isWall {
//            randomlyRotateRightOrLeft(robot)
//        }
        
        // Step 4c
        // Two-way Path - else-if statements
        // TODO: If the robot encounters a two way path and there is NO wall ahead it should continue forward.
        // TODO: If the robot encounters a two way path and there IS a wall ahead, it should turn in the direction of the clear path.
        
        // Step 4d
        // Dead end - else-if statements
        // TODO: If the robot encounters a dead end and there is NO wall ahead it should move forward.
        // TODO: If the robot encounters a dead end and there IS a wall ahead it should rotateRight().
        
        // Step 4b
        // Uncomment below to test turnTowardClearPath()
//        else if !isThreeWayJunction && !isWall {
//            robot.move()
//        }
//            
//        else if !isThreeWayJunction && isWall {
//            randomlyRotateRightOrLeft(robot)
//        }
    }
    
    func isWall(robot: ComplexRobotObject, direction: MazeDirection) -> Bool {
        
        let cell = mazeController.currentCell(robot)
        var isWall: Bool = false
        
        // Step 1
        // TODO: Write a switch statement handling all possible values of direction
        
        //Step 1
        // TODO: Return a Bool that represents whether the robot is currently facing a wall
        
        // Placeholder
        return false
    }

    func checkWalls(robot:ComplexRobotObject) -> (up: Bool, right: Bool, down: Bool, left: Bool, numberOfWalls: Int) {
        var numberOfWalls = 0
        let cell = mazeController.currentCell(robot)
        
        // Check is there is a wall at the top of the current cell
        let isWallUp = cell.top
        if isWallUp {
            numberOfWalls++
        }
        
        // Check if there is a wall to the right of the current cell
        let isWallRight = cell.right
        if isWallRight {
            numberOfWalls++
        }
        
        // Step 2
        // TODO: Check if there is a wall at the bottom of the current cell

        // TODO: Check if there is a wall to the left of the current cell

        // TODO: Return a tuple representing the bools for top, right, down & left, and the number of walls
        
        // This tuple is a placeholder
        return (false, false, false, false, 0)

    }
    
    func randomlyRotateRightOrLeft(robot: ComplexRobotObject) {
        let randomNumber = arc4random() % 2
        
        // Step 4a
        //TODO: Write an if statement that randomly calls either robot.rotateRight() or robot.rotateLeft()
        
    }
    
    func continueStraightOrRotate(robot: ComplexRobotObject, wallInfo: (up: Bool, right: Bool, down: Bool, left: Bool, numberOfWalls: Int) ) {
        let randomNumber = arc4random() % 2
        
        // Step 4b
        //TODO: Write an if statement that randomly calls either robot.move() or turnTowardClearPath(robot, wallInfo: wallInfo)
    }
    
    func turnTowardClearPath(robot: ComplexRobotObject, wallInfo: (up: Bool, right: Bool, down: Bool, left: Bool, numberOfWalls: Int)) {
        
        //Step 4b
        //TODO: Tell the robot which way to turn toward the clear path
//        if robot.direction == .Left && wallInfo.down {
//            robot.rotateRight()
//        } else if robot.direction == .Up && wallInfo.left {
//            robot.rotateRight()
//        }
    }
    
    func previousMoveIsFinished(robot: ComplexRobotObject) {
            self.moveComplexRobot(robot)
    }
    
}