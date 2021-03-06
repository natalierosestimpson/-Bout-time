
import UIKit
import SafariServices

let gameManager = GameManager()

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
    
    @IBOutlet weak var nextRoundFailure: UIButton!
    @IBOutlet weak var nextRoundSuccess: UIButton!
    @IBOutlet weak var shakeToCompleteLabel: UILabel!
    @IBOutlet weak var timerLabel: UILabel!
    @IBOutlet weak var linkToFurtherInfo: UIButton!
    @IBOutlet weak var finalScore: UIButton!
    @IBOutlet weak var score: UILabel!
    @IBOutlet weak var playAgain: UIButton!
    
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
        

    }
    
    var eventsForRound = gameManager.pickEventsForRound(shuffledEvents: gameManager.shuffleEvents())
    
     func displayEvents() {
        
        questionText.text = "In what order did GC hit these milestones?"
        
        timerLabel.isHidden = false
        shakeToCompleteLabel.isHidden = false
        
        firstEvent.text = eventsForRound.eventOne.description
        secondEvent.text = eventsForRound.eventTwo.description
        thirdEvent.text = eventsForRound.eventThree.description
        fourthEvent.text = eventsForRound.eventFour.description
        
        timerLabel.text = "01:00"
        
        nextRoundSuccess.isHidden = true
        nextRoundFailure.isHidden = true
        linkToFurtherInfo.isHidden = true
        finalScore.isHidden = true
        score.isHidden = true
        playAgain.isHidden = true
    
        startTimer()
    }
    
    var countdownTimer: Timer!
    var totalTime = 0
    
    func startTimer() {
        totalTime = 60
        countdownTimer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(updateTime), userInfo: nil, repeats: true)
    }
    
    @objc func updateTime() {
        timerLabel.text = "\(timeFormatted(totalTime))"
        
        if totalTime != 0 {
            totalTime -= 1
        } else {
            endTimer()
            checkAnswer()
        }
    }
    
    func endTimer() {
        countdownTimer.invalidate()
    }
    
    func timeFormatted(_ totalSeconds: Int) -> String {
        let seconds: Int = totalSeconds % 60
        let minutes: Int = (totalSeconds / 60) % 6
        return String(format: "%02d:%02d", minutes, seconds)
    }
    
    
    

    func checkAnswer() {
        shakeToCompleteLabel.isHidden = true
        timerLabel.isHidden = true
        linkToFurtherInfo.isHidden = false
        
        let answer = GameManager().checkAnswer(ofEventsUsedInRound: eventsForRound)
        
        if answer {
            nextRoundSuccess.isHidden = false
            gameManager.runningScore += 1
        }
        else {
            nextRoundFailure.isHidden = false
        }
        
        gameManager.roundNumber += 1
       
    }
    
   
    
    func nextRound() {
        if gameManager.roundNumber == gameManager.totalNumberOfRounds {
            // Game is over
            gameOver()
        } else {
            // Continue game
            eventsForRound = gameManager.pickEventsForRound(shuffledEvents: gameManager.shuffleEvents())
            displayEvents()
            
        }
    }
    
    
    func gameOver() {
        
        linkToFurtherInfo.isHidden = true
        nextRoundFailure.isHidden = true
        nextRoundSuccess.isHidden = true
        firstEvent.isHidden = true
        secondEvent.isHidden = true
        thirdEvent.isHidden = true
        fourthEvent.isHidden = true
        firstButton.isHidden = true
        secondButton.isHidden = true
        secondButtonDown.isHidden = true
        thirdButton.isHidden = true
        thirdButtonDown.isHidden = true
        fourthButton.isHidden = true
        finalScore.isHidden = false
        
        questionText.text = "GAME OVER!"
        
    }
    
    func showScore() {
    
    finalScore.isHidden = true
    score.isHidden  = false
    playAgain.isHidden = false
        
        questionText.text = ""
        score.text = "\(gameManager.runningScore)/\(gameManager.totalNumberOfRounds)"

    }
    
    func newGame() {
        gameManager.runningScore = 0
        gameManager.roundNumber = 0
        
        score.isHidden  = true
        playAgain.isHidden = true
        firstEvent.isHidden = false
        secondEvent.isHidden = false
        thirdEvent.isHidden = false
        fourthEvent.isHidden = false
        firstButton.isHidden = false
        secondButton.isHidden = false
        secondButtonDown.isHidden = false
        thirdButton.isHidden = false
        thirdButtonDown.isHidden = false
        fourthButton.isHidden = false
        timerLabel.isHidden = false
        
        displayEvents()
        
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
    
    
    
    @IBAction func nextRound(_ sender: UIButton) {
    nextRound()
    }
    
    
    @IBAction func revealScore(_ sender: UIButton) {
        showScore()
    }
    
    
    
    @IBAction func playAgain(_ sender: UIButton) {
        newGame()
    }
    
    
    @IBAction func linkToTheWeb(_ sender: Any) {
        
        let svc = SFSafariViewController(url: URL(string: "https://gocardless.com/")!)
        self.present(svc, animated: true, completion: nil)
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
            endTimer()
            checkAnswer()
        }
    
    
    }

}
