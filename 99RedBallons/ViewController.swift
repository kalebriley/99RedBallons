//
//  ViewController.swift
//  99RedBallons
//
//  Created by User on 5/23/15.
//  Copyright (c) 2015 User. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // StoryBord properties
    @IBOutlet weak var myImageView : UIImageView!
    @IBOutlet weak var myLabel : UILabel!
    // Custom properties
    var ballonsArray: [Balloon] = []
    var currentIndex = 0
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.ballonsArray = createBalloon(99);
        let numberOfBallons = ballonsArray.count
        self.myImageView.image = UIImage(named: "BerlinTVTower.jpg")
        self.myLabel.text = "\(numberOfBallons) Balloons"
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // Function to handle next button pressed
    @IBAction func nextButtonPressed(sender: UIBarButtonItem){
        //var randomIndex: Int
        //let numberOfBalloons = ballonsArray.count
        
        //do{
          //  randomIndex = Int(arc4random_uniform(UInt32(numberOfBalloons)))
        //} while randomIndex == currentIndex
        
        currentIndex++
        
        let ballon = ballonsArray[currentIndex]
        self.myLabel.text = "Balloon Number:  \(ballon.number)"
        self.myImageView.image = ballon.image
        
        
    }
    
    // Function to create multiple and return an array of Balloons
    func createBalloon(numberOfTimes: Int) -> [Balloon]{
        var balloons: [Balloon] = []
        
        for(var i = 0; i < numberOfTimes; i++){
            // create ballon
            var ballon = Balloon()
            // Assign ballon a number
            ballon.number = i
            
            // give balloon a random picture
            // get random number first
            let randomNumber = Int(arc4random_uniform(UInt32(4))) + 1
            
            // assign picture based on random number
            switch randomNumber {
            case 1:
                ballon.image = UIImage(named: "RedBalloon1.jpg")
            case 2:
                ballon.image = UIImage(named: "RedBalloon2.jpg")
            case 3:
                ballon.image = UIImage(named: "RedBalloon3.jpg")
            case 4:
                ballon.image = UIImage(named: "RedBalloon4.jpg")
            default:
                ballon.image = UIImage(named: "")
            }
            
            // add balloon to array
            balloons.append(ballon)
            
        }
        
        return balloons
    }


}

