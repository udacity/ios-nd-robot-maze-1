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
        
        //let isWall = self.isWall(robot, direction: robot.direction)
        let wallInfo = checkWalls(robot)
        let isThreeWayJunction = (wallInfo.numberOfWalls == 1)
        print(isThreeWayJunction)
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

    func checkWalls(robot:ComplexRobotObject) -> (up: Bool, right: Bool, down: Bool, left: Bool, numberOfWalls: Int) {
        var numberOfWalls = 0
        let cell = mazeController.currentCell(robot)
        
        // Check is there is a wall above the robot
        let isWallUp = cell.top
        if isWallUp {
            numberOfWalls++
        }
        
        // Check if there is a wall to the right of the robot
        let isWallRight = cell.right
        if isWallRight {
            numberOfWalls++
        }
        
        // TODO: Check down
        let isWallDown = cell.bottom
        if isWallDown {
            numberOfWalls++
        }
        
        // TODO: Check left
        let isWallLeft = cell.left
        if isWallLeft {
            numberOfWalls++
        }
        
        // TODO: Return a tuple representing the bools for top, right, down & left, and the number of walls
        return (isWallUp, isWallRight, isWallDown, isWallLeft, numberOfWalls)

    }
    
    func previousMoveIsFinished(robot: ComplexRobotObject) {
            self.moveComplexRobot(robot)
    }
    
}