//
//  ViewController.swift
//  'Bout time
//
//  Created by James Devlin on 09/10/2018.
//  Copyright © 2018 Natalie Stimpson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var questionText: UILabel!
    
    @IBOutlet weak var firstEvent: UILabel!
    @IBOutlet weak var secondEvent: UILabel!
    @IBOutlet weak var thirdEvent: UILabel!
    @IBOutlet weak var fourthEvent: UILabel!
    
    @IBOutlet weak var firstButton: UIButton!
    @IBOutlet weak var secondButton: UIButton!
    @IBOutlet weak var secondButtonDown: UIButton!
    @IBOutlet weak var thirdButton: UIButton!
    @IBOutlet weak var thirdButtonDown: UIButton!
    @IBOutlet weak var fourthButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        displayEvents()
        
        
        self.firstEvent.layer.cornerRadius = 3
        self.secondEvent.layer.cornerRadius = 3
        self.thirdEvent.layer.cornerRadius = 3
        self.fourthEvent.layer.cornerRadius = 3
        
        self.firstEvent.layer.borderWidth = 10
        self.secondEvent.layer.borderWidth = 10
        self.thirdEvent.layer.borderWidth = 10
        self.fourthEvent.layer.borderWidth = 10
        
        self.firstEvent.layer.borderColor = UIColor.white.cgColor
        self.secondEvent.layer.borderColor = UIColor.white.cgColor
        self.thirdEvent.layer.borderColor = UIColor.white.cgColor
        self.fourthEvent.layer.borderColor = UIColor.white.cgColor
        
        self.firstButton.layer.cornerRadius = 3
        self.secondButton.layer.cornerRadius = 3
        self.secondButtonDown.layer.cornerRadius = 3
        self.thirdButton.layer.cornerRadius = 3
        self.thirdButtonDown.layer.cornerRadius = 3
        self.fourthButton.layer.cornerRadius = 3
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    var eventsForRound = GameManager().pickEventsForRound(shuffledEvents: GameManager().shuffleEvents())
    
    func displayEvents() {
        questionText.text = "Which of these 90's number one hits came first?"
        firstEvent.text = eventsForRound.eventOne.description
        secondEvent.text = eventsForRound.eventTwo.description
        thirdEvent.text = eventsForRound.eventThree.description
        fourthEvent.text = eventsForRound.eventFour.description
        
        
    }
    
    
    @IBAction func moveDown(_ sender: UIButton) {
     let newEventTwo = eventsForRound.eventOne
     let newEventOne = eventsForRound.eventTwo
        
     eventsForRound.eventOne = newEventOne
     eventsForRound.eventTwo = newEventTwo
        
        
    firstEvent.text = eventsForRound.eventOne.description
    secondEvent.text = eventsForRound.eventTwo.description
        
    }
    
    
    @IBAction func moveUp(_ sender: UIButton) {
   
        let newEventTwo = eventsForRound.eventOne
        let newEventOne = eventsForRound.eventTwo
        
        eventsForRound.eventOne = newEventOne
        eventsForRound.eventTwo = newEventTwo
        
        
        firstEvent.text = eventsForRound.eventOne.description
        secondEvent.text = eventsForRound.eventTwo.description
        
    
    }

    
    

    
    @IBAction func moveDownEventThree(_ sender: Any) {
        
        let newEventFour = eventsForRound.eventThree
        let newEventThree = eventsForRound.eventFour
        
        eventsForRound.eventThree = newEventThree
        eventsForRound.eventFour = newEventFour
        
        
        thirdEvent.text = eventsForRound.eventThree.description
        fourthEvent.text = eventsForRound.eventFour.description
    }
    
    
    
    
    
    
    
}

