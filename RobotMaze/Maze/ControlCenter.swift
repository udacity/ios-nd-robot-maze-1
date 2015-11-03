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

    func moveComplexRobot(myRobot: ComplexRobotObject) {
        
        // Step 1c
        // TODO: Call the method, isFacingWall(), and define a constant to be equal to its return value. You can use the suggested constant name below--uncomment the code and add the method call.
//        let robotIsBlocked =
        
        
        // Step 1d
        // TODO: Test the isFacingWall() method. Be sure to comment out or delete your test code once you are finished testing!
        
        
        // Step 2c
        // TODO: Save the return value of checkWalls() to a constant called myWallInfo.
        
        
        // Step 3a
        // Categorize the robot's current location based on the number of walls
        
//        let isThreeWayJunction = (myWallInfo.numberOfWalls == 1)

        // TODO: Define the constant, isTwoWayPath

        // TODO: Define the constant, isDeadEnd
        
        
        // Step 3b
        // Test whether the values of the above constants are correct
        
        
        // Step 4a
        // Three-way Path - else-if statements

        // TODO: If the robot encounters a three way junction and there IS a wall ahead, it should randomly rotate right or left. Uncomment the code below.
//        if isThreeWayJunction && isWall {
//            randomlyRotateRightOrLeft(myRobot)
//        }
        
        
        // Step 4b
        // TODO: If the robot encounters a three way junction and there is NO wall ahead, it should continue straight or rotate (you need to write this else-if statement)
        
        
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
    
    func isFacingWall(robot: ComplexRobotObject, direction: MazeDirection) -> Bool {
        
        let cell = mazeController.currentCell(robot)
        var isWall: Bool = false
        
        // Step 1a
        // TODO: Write a switch statement handling all possible values of direction. The first case has been done for you. Uncomment the code and add the remaining cases!
//        switch(direction) {
//        case .Up:
//            if cell.top {
//                isWall = true
//            }
//
//        }
        
        // Step 1b
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
        
        // Step 2a
        // TODO: Check if there is a wall at the bottom of the current cell

        // TODO: Check if there is a wall to the left of the current cell

        
        // Step 2b
        // TODO: Test the checkWalls method.
        
        // TODO: Return a tuple representing the bools for top, right, down & left, and the number of walls
        // This tuple is a placeholder
        return (false, false, false, false, 0)

    }
    
    func randomlyRotateRightOrLeft(robot: ComplexRobotObject) {
        let randomNumber = arc4random() % 2
        
        // Step 4a
        //TODO: Write an if statement that randomly calls either robot.rotateRight() or robot.rotateLeft() (based on the value of the randomNumber constant)
        
    }
    
    func continueStraightOrRotate(robot: ComplexRobotObject, wallInfo: (up: Bool, right: Bool, down: Bool, left: Bool, numberOfWalls: Int) ) {
        let randomNumber = arc4random() % 2
        
        // Step 4b
        // TODO: Write an if statement that randomly calls either robot.move() or turnTowardClearPath(robot, wallInfo: wallInfo)
    }
    
    func turnTowardClearPath(robot: ComplexRobotObject, wallInfo: (up: Bool, right: Bool, down: Bool, left: Bool, numberOfWalls: Int)) {
        
        // Step 4b
        // TODO: Tell the robot which way to turn toward the clear path. There are four cases where the robot should rotate to the right (the first two have been done for you--uncomment the code below). Write the remaining two cases where the robot should rotate to the right. For all other cases, the robot should rotate to the left.
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