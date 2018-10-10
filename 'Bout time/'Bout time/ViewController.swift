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
        
        self.becomeFirstResponder()
        
        self.firstEvent.layer.cornerRadius = 3
        self.secondEvent.layer.cornerRadius = 3
        self.thirdEvent.layer.cornerRadius = 3
        self.fourthEvent.layer.cornerRadius = 3
        
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
        questionText.text = "In what order were these 90's number one hits released?"
        firstEvent.text = eventsForRound.eventOne.description
        secondEvent.text = eventsForRound.eventTwo.description
        thirdEvent.text = eventsForRound.eventThree.description
        fourthEvent.text = eventsForRound.eventFour.description
        
        
    }
    
    @IBAction func switchOneTwo(_ sender: UIButton) {
    
     let newEventTwo = eventsForRound.eventOne
     let newEventOne = eventsForRound.eventTwo
        
     eventsForRound.eventOne = newEventOne
     eventsForRound.eventTwo = newEventTwo
        
        
    firstEvent.text = eventsForRound.eventOne.description
    secondEvent.text = eventsForRound.eventTwo.description
        
    }
    

    
    @IBAction func switchTwoThree(_ sender: UIButton) {
        let newEventTwo = eventsForRound.eventThree
        let newEventThree = eventsForRound.eventTwo
        
        eventsForRound.eventThree = newEventThree
        eventsForRound.eventTwo = newEventTwo
        
        thirdEvent.text = eventsForRound.eventThree.description
        secondEvent.text = eventsForRound.eventTwo.description
    }
    
    

    
    @IBAction func switchThreeFour(_ sender: UIButton) {
        let newEventFour = eventsForRound.eventThree
        let newEventThree = eventsForRound.eventFour
        
        eventsForRound.eventThree = newEventThree
        eventsForRound.eventFour = newEventFour
        
        
        thirdEvent.text = eventsForRound.eventThree.description
        fourthEvent.text = eventsForRound.eventFour.description
    }
    
    override var canBecomeFirstResponder: Bool{
        get {
        return true
        }
        
    }
    
    override func motionEnded(
        _ motion: UIEvent.EventSubtype, with Event: UIEvent?)
    {
        if motion == .motionShake {
             thirdEvent.text = "why are you shaking me???"
        }
    }
    
    
}

