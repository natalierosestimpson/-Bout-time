import GameKit

struct EventsForRound {
    
    var eventOne: Event
    var eventTwo: Event
    var eventThree: Event
    var eventFour: Event

}

class GameManager {
    var roundNumber: Int = 0
    var runningScore: Int = 0
    let eventsPerRound = 4
    let totalNumberOfRounds = 6
    let secondsForTimer = 10
    let allEvents = AllEvents()
    
    func shuffleEvents() -> [Event] {
        let shuffledEvents = allEvents.events.shuffled()
        return shuffledEvents
    
    }
    
    func pickEventsForRound(shuffledEvents: [Event]) -> EventsForRound {
        let eventsForRound: EventsForRound = EventsForRound(eventOne: shuffledEvents[0], eventTwo: shuffledEvents[1], eventThree: shuffledEvents[2], eventFour: shuffledEvents[3])
        return eventsForRound
    }
    
    
    enum dateError: Error {
        case invalidData
    }
    
    
    func checkOrderOfTwoDates(isDate dateA: DateComponents, before dateB: DateComponents) throws -> Bool {
    
        
        guard let yearA = dateA.year, let yearB = dateB.year, let monthA = dateA.month, let monthB = dateB.month, let dayA = dateA.day, let dayB = dateB.day else {throw dateError.invalidData}
        
        let answer: Bool
        
        if yearA < yearB {answer = true}
        else if yearA == yearB && monthA < monthB {answer = true}
        else if yearA == yearB && monthA == monthB && dayA <= dayB {answer = true}
        else{answer = false}
        return answer
}
        
    func checkAnswer(ofEventsUsedInRound events: EventsForRound) -> Bool {
        
            let oneBeforeTwo: Bool
            let twoBeforeThree: Bool
            let threeBeforeFour: Bool
        
            do{ oneBeforeTwo = try checkOrderOfTwoDates(isDate:         events.eventOne.date, before: events.eventTwo.date)
                twoBeforeThree = try checkOrderOfTwoDates(isDate: events.eventTwo.date, before: events.eventThree.date)
                threeBeforeFour = try checkOrderOfTwoDates(isDate: events.eventThree.date, before: events.eventFour.date)
                return oneBeforeTwo && twoBeforeThree && threeBeforeFour
    }
           //fix error handling here
            catch {return false}

        
}


}
